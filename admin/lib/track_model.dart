

class TrackModel {
  TrackModel(this.trackName, this.trackCode);

  final String trackName;
  final String trackCode;

  String? raceHandle = null;
  bool running = false;
}