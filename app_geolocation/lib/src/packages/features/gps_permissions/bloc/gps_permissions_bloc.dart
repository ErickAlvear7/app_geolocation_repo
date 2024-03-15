import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import '../../../data/device/aplication.dart';

part 'gps_permissions_event.dart';
part 'gps_permissions_state.dart';

class GpsPermissionsBloc
    extends Bloc<GpsPermissionsEvent, GpsPermissionsState> {
  GpsPermissionsBloc(this.gpsInitialStatus, this.gpsStatus)
      : super(const GpsPermissionsState()) {
    on<GpsAndPermissionsEvent>(_onGpsAndPermissionsEvent);
  }

  final GpsInitialStatus gpsInitialStatus;
  final GpsStatus gpsStatus;

  FutureOr<void> _onGpsAndPermissionsEvent(
      GpsAndPermissionsEvent event, Emitter<GpsPermissionsState> emit) {
    emit(state.copyWith(
      isGpsEnabled: event.isGpsEnabled,
      isGpsPermissionGranted: event.isGpsPermissionGranted,
    ));
  }
}
