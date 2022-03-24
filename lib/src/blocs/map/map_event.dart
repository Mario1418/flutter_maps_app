part of 'map_bloc.dart';

abstract class MapEvent extends Equatable {
  const MapEvent();

  @override
  List<Object> get props => [];
}

class OnMapInitiaizedEvent extends MapEvent {
  final GoogleMapController controller;

  const OnMapInitiaizedEvent(this.controller);
}

class OnStopFollowingUserMap extends MapEvent {}

class OnStartFollowingUserMap extends MapEvent {}

class UpdateUserPolylineEvent extends MapEvent {
  final List<LatLng> userLocations;

  const UpdateUserPolylineEvent(this.userLocations);
}

class OnToggleUserRoute extends MapEvent {}

class DisplayPolylinesEvent extends MapEvent {
  final Map<String, Polyline> polylines;
  final Map<String, Marker> markers;

  const DisplayPolylinesEvent(this.polylines, this.markers);
}
