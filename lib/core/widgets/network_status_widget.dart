import 'package:another_flushbar/flushbar.dart';
import 'package:app_settings/app_settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../logic/cubit/network_cubit.dart';
import '../logic/cubit/network_state.dart';
import '../theme/colors.dart';

class NetworkStatusWidget extends StatefulWidget {
  const NetworkStatusWidget({super.key});

  @override
  State<NetworkStatusWidget> createState() => _NetworkStatusWidgetState();
}

class _NetworkStatusWidgetState extends State<NetworkStatusWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<NetworkCubit, NetworkState>(
      listener: (context, state) async {
        if (state is NetworkDisconnected) {
          HapticFeedback.lightImpact();
          Flushbar(
            message: 'No internet connection. Please check your network.',
            icon: const Icon(Icons.wifi_off, color: Colors.white),
            backgroundGradient: const LinearGradient(
              colors: [ColorsManager.deepOliveBlack, ColorsManager.limePastel],
            ),
            mainButton: TextButton(
              onPressed:
                  () async =>
                      await context.read<NetworkCubit>().checkConnection(),
              child: const Text('Retry', style: TextStyle(color: Colors.white)),
            ),
            flushbarPosition: FlushbarPosition.TOP,
            borderRadius: BorderRadius.circular(10.r),
            margin: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
            boxShadows: const [
              BoxShadow(
                color: Colors.black26,
                offset: Offset(0, 2),
                blurRadius: 6,
              ),
            ],
            dismissDirection: FlushbarDismissDirection.HORIZONTAL,
            forwardAnimationCurve: Curves.easeOutBack,
            onTap:
                (flushbar) =>
                    AppSettings.openAppSettings(type: AppSettingsType.wifi),
          ).show(context); // Use navigatorContext
        }
      },
      child: const SizedBox.shrink(), // No UI needed
    );
  }
}
