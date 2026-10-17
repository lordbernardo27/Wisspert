import 'package:flutter/material.dart';

import '../../core/services/global_loading_controller.dart';

class GlobalLoadingOverlay extends StatelessWidget {
  const GlobalLoadingOverlay({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: GlobalLoadingController.instance.isLoading,
      builder: (context, isLoading, _) {
        return Stack(
          children: [
            child,
            if (isLoading) ...[
              const ModalBarrier(
                dismissible: false,
                color: Colors.black26,
              ),
              const Center(
                child: CircularProgressIndicator(),
              ),
            ],
          ],
        );
      },
    );
  }
}
