///
//  Generated code. Do not modify.
//  source: meringue-admin.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'meringue-admin.pbenum.dart';

export 'meringue-admin.pbenum.dart';

class AuthRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AuthRequest', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'username')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'password')
    ..hasRequiredFields = false
  ;

  AuthRequest._() : super();
  factory AuthRequest({
    $core.String? username,
    $core.String? password,
  }) {
    final _result = create();
    if (username != null) {
      _result.username = username;
    }
    if (password != null) {
      _result.password = password;
    }
    return _result;
  }
  factory AuthRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AuthRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AuthRequest clone() => AuthRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AuthRequest copyWith(void Function(AuthRequest) updates) => super.copyWith((message) => updates(message as AuthRequest)) as AuthRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AuthRequest create() => AuthRequest._();
  AuthRequest createEmptyInstance() => create();
  static $pb.PbList<AuthRequest> createRepeated() => $pb.PbList<AuthRequest>();
  @$core.pragma('dart2js:noInline')
  static AuthRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AuthRequest>(create);
  static AuthRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get username => $_getSZ(0);
  @$pb.TagNumber(1)
  set username($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUsername() => $_has(0);
  @$pb.TagNumber(1)
  void clearUsername() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get password => $_getSZ(1);
  @$pb.TagNumber(2)
  set password($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPassword() => $_has(1);
  @$pb.TagNumber(2)
  void clearPassword() => clearField(2);
}

class AuthResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AuthResponse', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bearerToken', protoName: 'bearerToken')
    ..hasRequiredFields = false
  ;

  AuthResponse._() : super();
  factory AuthResponse({
    $core.String? bearerToken,
  }) {
    final _result = create();
    if (bearerToken != null) {
      _result.bearerToken = bearerToken;
    }
    return _result;
  }
  factory AuthResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AuthResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AuthResponse clone() => AuthResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AuthResponse copyWith(void Function(AuthResponse) updates) => super.copyWith((message) => updates(message as AuthResponse)) as AuthResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AuthResponse create() => AuthResponse._();
  AuthResponse createEmptyInstance() => create();
  static $pb.PbList<AuthResponse> createRepeated() => $pb.PbList<AuthResponse>();
  @$core.pragma('dart2js:noInline')
  static AuthResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AuthResponse>(create);
  static AuthResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get bearerToken => $_getSZ(0);
  @$pb.TagNumber(1)
  set bearerToken($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBearerToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearBearerToken() => clearField(1);
}

class TrackMetadataResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TrackMetadataResponse', createEmptyInstance: create)
    ..pc<TrackMetaData>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'track', $pb.PbFieldType.PM, subBuilder: TrackMetaData.create)
    ..hasRequiredFields = false
  ;

  TrackMetadataResponse._() : super();
  factory TrackMetadataResponse({
    $core.Iterable<TrackMetaData>? track,
  }) {
    final _result = create();
    if (track != null) {
      _result.track.addAll(track);
    }
    return _result;
  }
  factory TrackMetadataResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TrackMetadataResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TrackMetadataResponse clone() => TrackMetadataResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TrackMetadataResponse copyWith(void Function(TrackMetadataResponse) updates) => super.copyWith((message) => updates(message as TrackMetadataResponse)) as TrackMetadataResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TrackMetadataResponse create() => TrackMetadataResponse._();
  TrackMetadataResponse createEmptyInstance() => create();
  static $pb.PbList<TrackMetadataResponse> createRepeated() => $pb.PbList<TrackMetadataResponse>();
  @$core.pragma('dart2js:noInline')
  static TrackMetadataResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TrackMetadataResponse>(create);
  static TrackMetadataResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<TrackMetaData> get track => $_getList(0);
}

class TrackMetaData extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TrackMetaData', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'code')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..a<$core.double>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lat', $pb.PbFieldType.OF)
    ..a<$core.double>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'long', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  TrackMetaData._() : super();
  factory TrackMetaData({
    $core.String? code,
    $core.String? name,
    $core.double? lat,
    $core.double? long,
  }) {
    final _result = create();
    if (code != null) {
      _result.code = code;
    }
    if (name != null) {
      _result.name = name;
    }
    if (lat != null) {
      _result.lat = lat;
    }
    if (long != null) {
      _result.long = long;
    }
    return _result;
  }
  factory TrackMetaData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TrackMetaData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TrackMetaData clone() => TrackMetaData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TrackMetaData copyWith(void Function(TrackMetaData) updates) => super.copyWith((message) => updates(message as TrackMetaData)) as TrackMetaData; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TrackMetaData create() => TrackMetaData._();
  TrackMetaData createEmptyInstance() => create();
  static $pb.PbList<TrackMetaData> createRepeated() => $pb.PbList<TrackMetaData>();
  @$core.pragma('dart2js:noInline')
  static TrackMetaData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TrackMetaData>(create);
  static TrackMetaData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get code => $_getSZ(0);
  @$pb.TagNumber(1)
  set code($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearCode() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get lat => $_getN(2);
  @$pb.TagNumber(3)
  set lat($core.double v) { $_setFloat(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLat() => $_has(2);
  @$pb.TagNumber(3)
  void clearLat() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get long => $_getN(3);
  @$pb.TagNumber(4)
  set long($core.double v) { $_setFloat(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasLong() => $_has(3);
  @$pb.TagNumber(4)
  void clearLong() => clearField(4);
}

class ConnectToRaceDataRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ConnectToRaceDataRequest', createEmptyInstance: create)
    ..e<RaceDataProvider>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'provider', $pb.PbFieldType.OE, defaultOrMaker: RaceDataProvider.PROVIDER_UNKNOWN, valueOf: RaceDataProvider.valueOf, enumValues: RaceDataProvider.values)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'providerId', protoName: 'providerId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'trackCode', protoName: 'trackCode')
    ..hasRequiredFields = false
  ;

  ConnectToRaceDataRequest._() : super();
  factory ConnectToRaceDataRequest({
    RaceDataProvider? provider,
    $core.String? providerId,
    $core.String? trackCode,
  }) {
    final _result = create();
    if (provider != null) {
      _result.provider = provider;
    }
    if (providerId != null) {
      _result.providerId = providerId;
    }
    if (trackCode != null) {
      _result.trackCode = trackCode;
    }
    return _result;
  }
  factory ConnectToRaceDataRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ConnectToRaceDataRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ConnectToRaceDataRequest clone() => ConnectToRaceDataRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ConnectToRaceDataRequest copyWith(void Function(ConnectToRaceDataRequest) updates) => super.copyWith((message) => updates(message as ConnectToRaceDataRequest)) as ConnectToRaceDataRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ConnectToRaceDataRequest create() => ConnectToRaceDataRequest._();
  ConnectToRaceDataRequest createEmptyInstance() => create();
  static $pb.PbList<ConnectToRaceDataRequest> createRepeated() => $pb.PbList<ConnectToRaceDataRequest>();
  @$core.pragma('dart2js:noInline')
  static ConnectToRaceDataRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ConnectToRaceDataRequest>(create);
  static ConnectToRaceDataRequest? _defaultInstance;

  @$pb.TagNumber(1)
  RaceDataProvider get provider => $_getN(0);
  @$pb.TagNumber(1)
  set provider(RaceDataProvider v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasProvider() => $_has(0);
  @$pb.TagNumber(1)
  void clearProvider() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get providerId => $_getSZ(1);
  @$pb.TagNumber(2)
  set providerId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasProviderId() => $_has(1);
  @$pb.TagNumber(2)
  void clearProviderId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get trackCode => $_getSZ(2);
  @$pb.TagNumber(3)
  set trackCode($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTrackCode() => $_has(2);
  @$pb.TagNumber(3)
  void clearTrackCode() => clearField(3);
}

class RaceDataConnectionsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RaceDataConnectionsResponse', createEmptyInstance: create)
    ..pc<RaceDataConnectionResponse>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'response', $pb.PbFieldType.PM, subBuilder: RaceDataConnectionResponse.create)
    ..hasRequiredFields = false
  ;

  RaceDataConnectionsResponse._() : super();
  factory RaceDataConnectionsResponse({
    $core.Iterable<RaceDataConnectionResponse>? response,
  }) {
    final _result = create();
    if (response != null) {
      _result.response.addAll(response);
    }
    return _result;
  }
  factory RaceDataConnectionsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RaceDataConnectionsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RaceDataConnectionsResponse clone() => RaceDataConnectionsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RaceDataConnectionsResponse copyWith(void Function(RaceDataConnectionsResponse) updates) => super.copyWith((message) => updates(message as RaceDataConnectionsResponse)) as RaceDataConnectionsResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RaceDataConnectionsResponse create() => RaceDataConnectionsResponse._();
  RaceDataConnectionsResponse createEmptyInstance() => create();
  static $pb.PbList<RaceDataConnectionsResponse> createRepeated() => $pb.PbList<RaceDataConnectionsResponse>();
  @$core.pragma('dart2js:noInline')
  static RaceDataConnectionsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RaceDataConnectionsResponse>(create);
  static RaceDataConnectionsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<RaceDataConnectionResponse> get response => $_getList(0);
}

class RaceDataConnectionResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RaceDataConnectionResponse', createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'running')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'handle')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'trackName', protoName: 'trackName')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'trackCode', protoName: 'trackCode')
    ..hasRequiredFields = false
  ;

  RaceDataConnectionResponse._() : super();
  factory RaceDataConnectionResponse({
    $core.bool? running,
    $core.String? handle,
    $core.String? trackName,
    $core.String? trackCode,
  }) {
    final _result = create();
    if (running != null) {
      _result.running = running;
    }
    if (handle != null) {
      _result.handle = handle;
    }
    if (trackName != null) {
      _result.trackName = trackName;
    }
    if (trackCode != null) {
      _result.trackCode = trackCode;
    }
    return _result;
  }
  factory RaceDataConnectionResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RaceDataConnectionResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RaceDataConnectionResponse clone() => RaceDataConnectionResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RaceDataConnectionResponse copyWith(void Function(RaceDataConnectionResponse) updates) => super.copyWith((message) => updates(message as RaceDataConnectionResponse)) as RaceDataConnectionResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RaceDataConnectionResponse create() => RaceDataConnectionResponse._();
  RaceDataConnectionResponse createEmptyInstance() => create();
  static $pb.PbList<RaceDataConnectionResponse> createRepeated() => $pb.PbList<RaceDataConnectionResponse>();
  @$core.pragma('dart2js:noInline')
  static RaceDataConnectionResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RaceDataConnectionResponse>(create);
  static RaceDataConnectionResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get running => $_getBF(0);
  @$pb.TagNumber(1)
  set running($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRunning() => $_has(0);
  @$pb.TagNumber(1)
  void clearRunning() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get handle => $_getSZ(1);
  @$pb.TagNumber(2)
  set handle($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasHandle() => $_has(1);
  @$pb.TagNumber(2)
  void clearHandle() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get trackName => $_getSZ(2);
  @$pb.TagNumber(3)
  set trackName($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTrackName() => $_has(2);
  @$pb.TagNumber(3)
  void clearTrackName() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get trackCode => $_getSZ(3);
  @$pb.TagNumber(4)
  set trackCode($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTrackCode() => $_has(3);
  @$pb.TagNumber(4)
  void clearTrackCode() => clearField(4);
}

class RaceDataConnectionRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RaceDataConnectionRequest', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'handle')
    ..hasRequiredFields = false
  ;

  RaceDataConnectionRequest._() : super();
  factory RaceDataConnectionRequest({
    $core.String? handle,
  }) {
    final _result = create();
    if (handle != null) {
      _result.handle = handle;
    }
    return _result;
  }
  factory RaceDataConnectionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RaceDataConnectionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RaceDataConnectionRequest clone() => RaceDataConnectionRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RaceDataConnectionRequest copyWith(void Function(RaceDataConnectionRequest) updates) => super.copyWith((message) => updates(message as RaceDataConnectionRequest)) as RaceDataConnectionRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RaceDataConnectionRequest create() => RaceDataConnectionRequest._();
  RaceDataConnectionRequest createEmptyInstance() => create();
  static $pb.PbList<RaceDataConnectionRequest> createRepeated() => $pb.PbList<RaceDataConnectionRequest>();
  @$core.pragma('dart2js:noInline')
  static RaceDataConnectionRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RaceDataConnectionRequest>(create);
  static RaceDataConnectionRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get handle => $_getSZ(0);
  @$pb.TagNumber(1)
  set handle($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasHandle() => $_has(0);
  @$pb.TagNumber(1)
  void clearHandle() => clearField(1);
}

