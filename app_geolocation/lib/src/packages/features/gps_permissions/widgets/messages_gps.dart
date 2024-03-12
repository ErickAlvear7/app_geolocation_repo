
import 'package:flutter/material.dart';

import '../../../core/ui/ui.dart';

class MessageGps extends StatelessWidget {
  const MessageGps({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          Icons.location_disabled_rounded,
          size: AppDimens.dimen_44,
          color: AppColors.primary,
        ),
        const SizedBox(
          height: AppDimens.dimen_20,
        ),
        Text('Debes activar tu GPS',
            style: textTheme.bodyMedium, textAlign: TextAlign.center),
      ],
    );
  }
}