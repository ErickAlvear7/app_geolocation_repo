
import 'package:flutter/material.dart';

import '../../../core/ui/ui.dart';

class EnableGps extends StatelessWidget {
  const EnableGps({super.key, this.onTapfunction});

  final VoidCallback? onTapfunction;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          AppImages.getImageGps(),
          width: 250,
        ),
        Text(
          'Ubicacion',
          style: textTheme.titleLarge,
        ),
        const SizedBox(
          height: AppDimens.dimen_12,
        ),
        Text(
          'Necesitamos acceder a tu ubicacion debes activar tu GPS',
          style: textTheme.bodyMedium,
        ),
        const SizedBox(
          height: AppDimens.dimen_20,
        ),
        ElevatedButton(
          onPressed: onTapfunction,
          child: const Text('Activar Gps'),
        ),
      ],
    );
  }
}