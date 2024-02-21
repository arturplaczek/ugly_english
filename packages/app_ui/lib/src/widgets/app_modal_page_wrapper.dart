import 'package:flutter/material.dart';

/// {@template app_modal_page_wrapper}
/// Adds hinge to the top of the modal page.
/// {@endtemplate}
class AppModalPageWrapper extends StatelessWidget {
  /// {@macro app_modal_page_wrapper}
  const AppModalPageWrapper({
    required this.child,
    Color? hingeColor,
    super.key,
  }) : hingeColor = hingeColor ?? Colors.white;

  /// Page content of the modal bottom sheet.
  final Widget child;

  /// Color of the hinge. Defaults to [Colors.white].
  final Color hingeColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          child,
          _ModalHinge(hingeColor: hingeColor),
        ],
      ),
    );
  }
}

class _ModalHinge extends StatelessWidget {
  const _ModalHinge({required this.hingeColor});

  final Color hingeColor;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        decoration: BoxDecoration(
          color: hingeColor,
          borderRadius: BorderRadius.circular(8),
        ),
        margin: const EdgeInsets.only(top: 8),
        width: 50,
        height: 6,
      ),
    );
  }
}
