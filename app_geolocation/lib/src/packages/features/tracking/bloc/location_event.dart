part of 'location_bloc.dart';

sealed class LocationEvent extends Equatable {
  const LocationEvent();

  @override
  List<Object> get props => [];
}

final class GetCurrentPositionEvent extends LocationEvent {
  const GetCurrentPositionEvent();
}

final class StartTrackingUserEvent extends LocationEvent{
  const StartTrackingUserEvent();
}

final class NewUserLocationEvent extends LocationEvent{
  const NewUserLocationEvent(this.newLocation);

  final LatLng newLocation;
}
