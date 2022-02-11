

import 'package:admin/src/generated/google/protobuf/empty.pb.dart';
import 'package:admin/src/generated/meringue-admin.pbgrpc.dart';
import 'package:grpc/grpc.dart';
import 'package:grpc/grpc_web.dart';

class ProtoClient {

  //late ClientChannel _channel;
  late GrpcWebClientChannel _channel;

  late AdminServiceClient _stub;
  late String _authToken;
  late CallOptions _callOptions;
  static ProtoClient? __instance = null;

  static ProtoClient getInstance() {
    if (__instance == null) {
      __instance = new ProtoClient();
      __instance?.init();
    }
    return __instance!;
  }

  // https://meringue-v2-srmt5evhka-uc.a.run.app
  void init() {
    //_channel = GrpcWebClientChannel.xhr(Uri.parse('http://localhost:8080'));
    // todo : have this dynamically load from the other url
    _channel = GrpcWebClientChannel.xhr(Uri.parse('https://envoy-srmt5evhka-uc.a.run.app'));

  //   _channel = ClientChannel(
  //       // 'localhost',
  //       // port: 9090,
  //     'meringue-v2-srmt5evhka-uc.a.run.app',
  //       port: 443,
  //       options: const ChannelOptions(
  //           credentials: ChannelCredentials.secure()),
  //     );
  //
    _stub = AdminServiceClient(_channel);
  }

  Future<void> login(String username, String password) async {
    await _stub.auth(
        AuthRequest()
          ..username = username
          ..password = password
    ).then((response) {
      _authToken = response.bearerToken;
      _callOptions = CallOptions(
          metadata: {"Authorization": "Bearer $_authToken"}
      );
    });
  }

  Future<TrackMetadataResponse?> loadTracks() async {
    return await _stub.listTracks(Empty.getDefault(),
          options: _callOptions
    );
  }

  Future<LiveRaceListResponse?> getLiveRaces() async {
    return await _stub.listLiveRaces(Empty.getDefault(),
          options: _callOptions
    );
  }

  Future<RaceDataConnectionsResponse> listConnections() async {
    return await _stub.listRaceDataConnections(Empty.getDefault(),
        options: _callOptions
    );
  }

  Future<Empty> disconnect(final String handle) async {
    return await _stub.disconnectRaceData(
        RaceDataConnectionRequest()..handle = handle,
        options: _callOptions);
  }

  Future<RaceDataConnectionResponse> connect(final String trackCode,
                                             final String raceId) async {
    return await _stub.connectToRaceData(
        ConnectToRaceDataRequest()
          ..trackCode = trackCode
          ..providerId = raceId
          ..provider = RaceDataProvider.PROVIDER_RM,
        options: _callOptions);
  }

  Future<Empty> shutdown() async {
    return await _stub.shutdown(
        Empty.getDefault(),
        options: _callOptions
    );
  }

}