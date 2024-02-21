import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';

/// {@template app_status_icon}
/// Status icon with permission.
/// {@endtemplate}
class AppStatusIcon extends StatelessWidget {
  /// {@macro app_status_icon}
  const AppStatusIcon({
    required this.status,
    super.key,
  });

  /// Status of the permission. True is allowed.
  final bool status;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 16,
      foregroundColor: AppColors.white,
      backgroundColor: status ? AppColors.green : AppColors.red,
      child: status
          ? const Icon(
              Icons.check_outlined,
              color: AppColors.white,
              size: 20,
            )
          : const Icon(
              Icons.close,
              color: AppColors.white,
              size: 20,
            ),
    );
  }
}
