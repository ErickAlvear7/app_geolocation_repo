part of 'gps_permissions_bloc.dart';

sealed class GpsPermissionsEvent extends Equatable {
  const GpsPermissionsEvent();

  @override
  List<Object> get props => [];
}

class GpsAndPermissionsEvent extends GpsPermissionsEvent {
  const GpsAndPermissionsEvent(this.isGpsEnabled, this.isGpsPermissionGranted);

  final bool isGpsEnabled;
  final bool isGpsPermissionGranted;

  @override
  
  List<Object> get props => [isGpsEnabled,isGpsPermissionGranted];
}
