import 'package:app_geolocation/src/packages/core/ui/ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/gps_permissions_bloc.dart';
import '../widgets/widgets.dart';

class GpsPage extends StatelessWidget {
  const GpsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<GpsPermissionsBloc>();

    return Scaffold(
      body: Center(
        child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppDimens.dimen_4,
            ),
            child: BlocBuilder<GpsPermissionsBloc, GpsPermissionsState>(
                builder: (context, state) {
              return !state.isGpsEnabled
                  ? const MessageGps()
                  : EnableGps(
                      onTapfunction: () =>
                          context.read<GpsPermissionsBloc>().add(const AskGpsAccessEvent()));
            })),
      ),
    );
  }
}
