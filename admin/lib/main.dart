import 'package:admin/track_list_screen.dart';
import 'package:admin/proto_client.dart';
import 'package:admin/track_model.dart';
import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lemon Meringue Pie Race Admin',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Lemon Meringue Pie Race Admin'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final protoClient = ProtoClient.getInstance();

  void _handleLogin() async {
    protoClient.login(
        usernameController.text,
        passwordController.text).then((foo) {
      print("login completed");
      protoClient.loadTracks().then((tracks) {
        print("(2) loaded tracks ${tracks?.track}");
        if (tracks == null) {
          return;
        }
        var trackIt = tracks.track.iterator;
        Map<String, TrackModel> trackMap = Map();
        while( trackIt.moveNext()) {
          trackMap[trackIt.current.code] =
              TrackModel(trackIt.current.name, trackIt.current.code);
        }
        protoClient.listConnections().then((connections) {
          print("loaded race connections");
          var it = connections.response.iterator;
          while(it.moveNext()) {
            if (it.current.running) {
              print("race is running at ${it.current.trackName}");
              var entry = trackMap[it.current.trackCode];
              if (entry != null) {
                entry.running = it.current.running;
                entry.raceHandle = it.current.handle;
              }
            }
          };
          var trackList = <TrackModel>[];
          trackMap.values.forEach((element) { trackList.add(element); });
          trackList.sort((a, b) => a.trackName.compareTo(b.trackName));
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => TrackListScreen(tracks: trackList),
          ));
        });
      });
    }
    ).onError((error, stackTrace) {
      if (error is GrpcError && error.code == StatusCode.unauthenticated) {
        // todo : its an incorrect username and password
        Navigator.popUntil(context, ModalRoute.withName("/"));
      }
      print("auth failed (outer caller)  $error");
    });
    // todo : all handlers need to handle code 14 : unavailable, by printing
    // up a message
  }

  final ButtonStyle style = ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

  @override
  Widget build(BuildContext context) {

    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Login'
            ),
            TextField(
              controller: usernameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Username',
              ),
            ),
            TextField(
              controller: passwordController,
              obscureText: true,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password'
                ),
            ),
            ElevatedButton(
              style: style,
              child:const Text('Login'),
              onPressed: () {_handleLogin();}
            )
          ],
        ),
      ),
    );
  }

}
