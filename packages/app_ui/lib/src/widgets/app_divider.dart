import 'package:flutter/material.dart';

/// {@template app_divider}
/// A divider that is used in the app.
/// {@endtemplate}
class AppDivider extends StatelessWidget {
  /// {@macro app_divider}
  const AppDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Divider(
      indent: 16,
      endIndent: 16,
    );
  }
}
