

import 'package:admin/proto_client.dart';
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

  final protoClient = ProtoClient.getInstance();

  void _handleShutdown() async {
    protoClient.shutdown();
  }

  final ButtonStyle style = ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Track List")),
      body: ListView.builder(
            itemCount: widget.tracks.length + 1,
            itemBuilder: (BuildContext ctx, int index) {
              if (index < widget.tracks.length) {
                return ListTile(
                    leading: buildIcon(widget.tracks.elementAt(index)),
                    title: Text(widget.tracks
                        .elementAt(index)
                        .trackName),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>
                              TrackScreen(track: widget.tracks[index]))
                      ).then((val) => setState(() {}));
                    }
                );
              } else {
                return ListTile(
                    leading: const Icon(Icons.warning_sharp),
                    title: Text("Shutdown Meringue Server!!"),
                    onTap: () {
                      _handleShutdown();
                    }
                );
              }
            }
        )
    );
  }

  Icon? buildIcon(TrackModel track) {
    if (track.running) {
      return const Icon(Icons.airport_shuttle_rounded);
    }
    return null;
  }
}