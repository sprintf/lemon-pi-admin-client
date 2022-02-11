///
//  Generated code. Do not modify.
//  source: meringue-admin.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'google/protobuf/empty.pb.dart' as $0;
import 'meringue-admin.pb.dart' as $1;
export 'meringue-admin.pb.dart';

class AdminServiceClient extends $grpc.Client {
  static final _$ping = $grpc.ClientMethod<$0.Empty, $0.Empty>(
      '/AdminService/ping',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$auth = $grpc.ClientMethod<$1.AuthRequest, $1.AuthResponse>(
      '/AdminService/auth',
      ($1.AuthRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.AuthResponse.fromBuffer(value));
  static final _$listTracks =
      $grpc.ClientMethod<$0.Empty, $1.TrackMetadataResponse>(
          '/AdminService/listTracks',
          ($0.Empty value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.TrackMetadataResponse.fromBuffer(value));
  static final _$connectToRaceData = $grpc.ClientMethod<
          $1.ConnectToRaceDataRequest, $1.RaceDataConnectionResponse>(
      '/AdminService/connectToRaceData',
      ($1.ConnectToRaceDataRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $1.RaceDataConnectionResponse.fromBuffer(value));
  static final _$listRaceDataConnections =
      $grpc.ClientMethod<$0.Empty, $1.RaceDataConnectionsResponse>(
          '/AdminService/listRaceDataConnections',
          ($0.Empty value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.RaceDataConnectionsResponse.fromBuffer(value));
  static final _$disconnectRaceData =
      $grpc.ClientMethod<$1.RaceDataConnectionRequest, $0.Empty>(
          '/AdminService/disconnectRaceData',
          ($1.RaceDataConnectionRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$listLiveRaces =
      $grpc.ClientMethod<$0.Empty, $1.LiveRaceListResponse>(
          '/AdminService/listLiveRaces',
          ($0.Empty value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.LiveRaceListResponse.fromBuffer(value));
  static final _$shutdown = $grpc.ClientMethod<$0.Empty, $0.Empty>(
      '/AdminService/shutdown',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));

  AdminServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.Empty> ping($0.Empty request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$ping, request, options: options);
  }

  $grpc.ResponseFuture<$1.AuthResponse> auth($1.AuthRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$auth, request, options: options);
  }

  $grpc.ResponseFuture<$1.TrackMetadataResponse> listTracks($0.Empty request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listTracks, request, options: options);
  }

  $grpc.ResponseFuture<$1.RaceDataConnectionResponse> connectToRaceData(
      $1.ConnectToRaceDataRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$connectToRaceData, request, options: options);
  }

  $grpc.ResponseFuture<$1.RaceDataConnectionsResponse> listRaceDataConnections(
      $0.Empty request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listRaceDataConnections, request,
        options: options);
  }

  $grpc.ResponseFuture<$0.Empty> disconnectRaceData(
      $1.RaceDataConnectionRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$disconnectRaceData, request, options: options);
  }

  $grpc.ResponseFuture<$1.LiveRaceListResponse> listLiveRaces($0.Empty request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listLiveRaces, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> shutdown($0.Empty request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$shutdown, request, options: options);
  }
}

abstract class AdminServiceBase extends $grpc.Service {
  $core.String get $name => 'AdminService';

  AdminServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.Empty>(
        'ping',
        ping_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.AuthRequest, $1.AuthResponse>(
        'auth',
        auth_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.AuthRequest.fromBuffer(value),
        ($1.AuthResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $1.TrackMetadataResponse>(
        'listTracks',
        listTracks_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($1.TrackMetadataResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.ConnectToRaceDataRequest,
            $1.RaceDataConnectionResponse>(
        'connectToRaceData',
        connectToRaceData_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.ConnectToRaceDataRequest.fromBuffer(value),
        ($1.RaceDataConnectionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $1.RaceDataConnectionsResponse>(
        'listRaceDataConnections',
        listRaceDataConnections_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($1.RaceDataConnectionsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.RaceDataConnectionRequest, $0.Empty>(
        'disconnectRaceData',
        disconnectRaceData_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.RaceDataConnectionRequest.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $1.LiveRaceListResponse>(
        'listLiveRaces',
        listLiveRaces_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($1.LiveRaceListResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.Empty>(
        'shutdown',
        shutdown_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$0.Empty> ping_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return ping(call, await request);
  }

  $async.Future<$1.AuthResponse> auth_Pre(
      $grpc.ServiceCall call, $async.Future<$1.AuthRequest> request) async {
    return auth(call, await request);
  }

  $async.Future<$1.TrackMetadataResponse> listTracks_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return listTracks(call, await request);
  }

  $async.Future<$1.RaceDataConnectionResponse> connectToRaceData_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.ConnectToRaceDataRequest> request) async {
    return connectToRaceData(call, await request);
  }

  $async.Future<$1.RaceDataConnectionsResponse> listRaceDataConnections_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return listRaceDataConnections(call, await request);
  }

  $async.Future<$0.Empty> disconnectRaceData_Pre($grpc.ServiceCall call,
      $async.Future<$1.RaceDataConnectionRequest> request) async {
    return disconnectRaceData(call, await request);
  }

  $async.Future<$1.LiveRaceListResponse> listLiveRaces_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return listLiveRaces(call, await request);
  }

  $async.Future<$0.Empty> shutdown_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return shutdown(call, await request);
  }

  $async.Future<$0.Empty> ping($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$1.AuthResponse> auth(
      $grpc.ServiceCall call, $1.AuthRequest request);
  $async.Future<$1.TrackMetadataResponse> listTracks(
      $grpc.ServiceCall call, $0.Empty request);
  $async.Future<$1.RaceDataConnectionResponse> connectToRaceData(
      $grpc.ServiceCall call, $1.ConnectToRaceDataRequest request);
  $async.Future<$1.RaceDataConnectionsResponse> listRaceDataConnections(
      $grpc.ServiceCall call, $0.Empty request);
  $async.Future<$0.Empty> disconnectRaceData(
      $grpc.ServiceCall call, $1.RaceDataConnectionRequest request);
  $async.Future<$1.LiveRaceListResponse> listLiveRaces(
      $grpc.ServiceCall call, $0.Empty request);
  $async.Future<$0.Empty> shutdown($grpc.ServiceCall call, $0.Empty request);
}
