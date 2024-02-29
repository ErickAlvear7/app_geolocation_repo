import 'package:app_geolocation/src/ui/ui.dart';
import 'package:flutter/material.dart';

class GpsPage extends StatelessWidget {
  const GpsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: AppDimens.dimen_4,
          ),
          child: MessageGps(),
        ),
      ),
    );
  }
}

class EnableGps extends StatelessWidget {
  const EnableGps({super.key});

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
          onPressed: () {},
          child: const Text('Activar Gps'),
        ),
      ],
    );
  }
}

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
        const SizedBox(height: AppDimens.dimen_20,),
        Text('Debes activar tu GPS', style: textTheme.bodyMedium,textAlign: TextAlign.center),
      ],
    );
  }
}
