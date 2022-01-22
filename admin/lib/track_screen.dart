

import 'package:admin/proto_client.dart';
import 'package:admin/src/generated/meringue-admin.pb.dart';
import 'package:admin/track_model.dart';
import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';

class TrackScreen extends StatefulWidget {

  const TrackScreen({Key? key, required this.track}) : super(key: key);
  final TrackModel track;

  @override
  State<StatefulWidget> createState() => _TrackScreenState();

}

class _TrackScreenState extends State<TrackScreen> {

  final raceIdController = TextEditingController();
  final protoClient = ProtoClient.getInstance();
  final liveRaces = ProtoClient.getInstance().getLiveRaces();

  final ButtonStyle style = ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

  void _handleEnteredRaceId() {
    _handleRaceId(raceIdController.text);
  }

  void _handleRaceId(String raceId) {
    print("calling proto");
    protoClient.connect(widget.track.trackCode, raceId)
        .then((value) {
          setState(() {
            widget.track.running = value.running;
            widget.track.raceHandle = value.handle;
          });
          print("got response of $value");
        })
        .onError((error, stackTrace) {
          if (error is GrpcError && error.code == StatusCode.unauthenticated) {
            Navigator.popUntil(context, ModalRoute.withName("/"));
          }
          print("error response $error");
        });
    print("calling in background");
  }

  void _disconnectRaceDataStream() {
    if (widget.track.raceHandle != null) {
      protoClient.disconnect(widget.track.raceHandle!)
          .then((value) {
            print("disconnected successfully");
            setState(() {
              widget.track.running = false;
              widget.track.raceHandle = null;
            });
          })
          .onError((error, stackTrace) {
            if (error is GrpcError && error.code == StatusCode.unauthenticated) {
              Navigator.popUntil(context, ModalRoute.withName("/"));
            }
            print("got an error disconnecting");
          });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (widget.track.raceHandle != null && widget.track.raceHandle!.isNotEmpty) {
      return Scaffold(
        appBar: AppBar(title: Text("${widget.track.trackName} Race Details")),
        body: Center(
          child: Column(
              children: <Widget>[
                const Text("Race is connected and running"),
                ElevatedButton(
                  style: style,
                  child:const Text('Disconnect Race Data Stream'),
                  onPressed: () { _disconnectRaceDataStream(); },
                ),
              ]
          ),
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(title: Text("${widget.track.trackName} Race Details")),
        body: Center(
          child: Column(
              children: <Widget>[
                const Text("Enter RM Race Code"),
                TextField(
                  controller: raceIdController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'RaceId',
                  ),
                ),
                buildButton(),
                Expanded(
                  child: FutureBuilder<LiveRaceListResponse?>(
                    future: liveRaces, builder: buildRaceList,
                  ),
                ),
              ]
          ),
        ),
      );
    }
  }

  Widget buildRaceList(
      BuildContext context, AsyncSnapshot<LiveRaceListResponse?> races) {
    if (races != null && races.hasData) {
      return ListView.builder(
          shrinkWrap: true,
          itemCount: races.data?.races.length,
          itemBuilder: (BuildContext ctx, int index) {
            var race = races.data?.races.elementAt(index);
            return ListTile(
                title: Text("${race?.eventName} @ ${race?.trackName}"),
                onTap: () {
                  if (race?.raceId != null) {
                    _handleRaceId(race!.raceId);
                  }
                });
          });
    }
    return const TextField();
  }

  ElevatedButton buildButton() {
    if (widget.track.running) {
      return ElevatedButton(
        style: style,
        child:const Text('Starting up / Shutting down'),
        onPressed: () {},
      );
    } else {
      return ElevatedButton(
        style: style,
        child:const Text('Connect to Race Data Stream'),
        onPressed: () {_handleEnteredRaceId();},
      );
    }
  }

}