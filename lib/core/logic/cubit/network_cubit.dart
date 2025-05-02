import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import 'network_state.dart';

class NetworkCubit extends Cubit<NetworkState> {
  final Connectivity _connectivity = Connectivity();
  StreamSubscription? _subscription;

  NetworkCubit() : super(NetworkConnected()) {
    _init();
  }

  Future<void> checkConnection() async {
    final connectivityResult = await _connectivity.checkConnectivity();
    if (connectivityResult == ConnectivityResult.none) {
      emit(NetworkDisconnected());
    } else {
      final hasInternet =
          await InternetConnectionChecker.createInstance().hasConnection;
      emit(hasInternet ? NetworkConnected() : NetworkDisconnected());
    }
  }

  @override
  Future<void> close() {
    _subscription?.cancel();
    return super.close();
  }

  Future<void> _init() async {
    await checkConnection();
    _subscription = _connectivity.onConnectivityChanged.listen((result) async {
      await checkConnection();
    });
  }
}
