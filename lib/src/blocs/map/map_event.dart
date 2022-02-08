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
