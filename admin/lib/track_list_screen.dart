

import 'package:admin/src/generated/meringue-admin.pb.dart';
import 'package:admin/track_model.dart';
import 'package:admin/track_screen.dart';
import 'package:flutter/material.dart';

class TrackListScreen extends StatefulWidget {

  const TrackListScreen({Key? key, required this.tracks}) : super(key: key);
  final List<TrackModel> tracks;

  @override
  State<StatefulWidget> createState() => _TrackListScreenState();

}

class _TrackListScreenState extends State<TrackListScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Track List")),
      body: ListView.builder(
        itemCount: widget.tracks.length,
        itemBuilder: (BuildContext ctx, int index) {
          return ListTile(
            leading: buildIcon(widget.tracks.elementAt(index)),
            title: Text(widget.tracks.elementAt(index).trackName),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TrackScreen(track: widget.tracks[index]))
              ).then((val) => setState(() {} ));
              }
            );
        }
      )
    );
  }

  Icon? buildIcon(TrackModel track) {
    if (track.running) {
      return Icon(Icons.airport_shuttle_rounded);
    }
    return null;
  }
}