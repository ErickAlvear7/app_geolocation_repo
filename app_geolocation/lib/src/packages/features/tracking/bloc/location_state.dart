part of 'location_bloc.dart';

final class LocationState extends Equatable {
  const LocationState({
    this.lastKnowLocation, 
    myLocationHistory,
    
  }) : myLocationHistory = myLocationHistory ?? const [];

  final LatLng? lastKnowLocation;
  final List<LatLng> myLocationHistory;

  LocationState copyWith({
    LatLng? lastKnowLocation,
    List<LatLng>? myLocationHistory,
  }) => LocationState(
    lastKnowLocation: lastKnowLocation ?? this.lastKnowLocation,
    myLocationHistory: myLocationHistory ?? this.myLocationHistory,
  );
  
  @override
  List<Object?> get props => [lastKnowLocation,myLocationHistory];
}


