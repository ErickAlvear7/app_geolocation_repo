import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'gps_permissions_event.dart';
part 'gps_permissions_state.dart';

class GpsPermissionsBloc
    extends Bloc<GpsPermissionsEvent, GpsPermissionsState> {
  GpsPermissionsBloc() : super(const GpsPermissionsState()) {
    on<GpsAndPermissionsEvent>(_onGpsAndPermissionsEvent);
  }

  FutureOr<void> _onGpsAndPermissionsEvent(
    GpsAndPermissionsEvent event, 
    Emitter<GpsPermissionsState> emit) 
    {
       emit(state.copyWith(
        isGpsEnabled: event.isGpsEnabled,
        isGpsPermissionGranted: event.isGpsPermissionGranted,
       ));
    }
}