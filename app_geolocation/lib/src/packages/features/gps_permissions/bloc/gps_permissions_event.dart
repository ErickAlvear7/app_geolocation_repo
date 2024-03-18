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

//evneto estado inicial del gps

class GpsInitialStatusEvent extends GpsPermissionsEvent{
  const GpsInitialStatusEvent();
}

//evento si cambia el estado del gps

class ChangeGpsStatusEvent extends GpsPermissionsEvent{
  const ChangeGpsStatusEvent();
}

//evente

class AskGpsAccessEvent extends GpsPermissionsEvent{
  const AskGpsAccessEvent();
}

class OpenAppSettinsEvent extends GpsPermissionsEvent{
  const OpenAppSettinsEvent();
}
