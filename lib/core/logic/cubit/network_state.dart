import 'package:equatable/equatable.dart';

class NetworkConnected extends NetworkState {}

class NetworkDisconnected extends NetworkState {}

abstract class NetworkState extends Equatable {
  @override
  List<Object> get props => [];
}
