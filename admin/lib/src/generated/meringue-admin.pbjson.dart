///
//  Generated code. Do not modify.
//  source: meringue-admin.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use raceDataProviderDescriptor instead')
const RaceDataProvider$json = const {
  '1': 'RaceDataProvider',
  '2': const [
    const {'1': 'PROVIDER_UNKNOWN', '2': 0},
    const {'1': 'PROVIDER_RM', '2': 1},
  ],
};

/// Descriptor for `RaceDataProvider`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List raceDataProviderDescriptor = $convert.base64Decode('ChBSYWNlRGF0YVByb3ZpZGVyEhQKEFBST1ZJREVSX1VOS05PV04QABIPCgtQUk9WSURFUl9STRAB');
@$core.Deprecated('Use authRequestDescriptor instead')
const AuthRequest$json = const {
  '1': 'AuthRequest',
  '2': const [
    const {'1': 'username', '3': 1, '4': 1, '5': 9, '10': 'username'},
    const {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
  ],
};

/// Descriptor for `AuthRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authRequestDescriptor = $convert.base64Decode('CgtBdXRoUmVxdWVzdBIaCgh1c2VybmFtZRgBIAEoCVIIdXNlcm5hbWUSGgoIcGFzc3dvcmQYAiABKAlSCHBhc3N3b3Jk');
@$core.Deprecated('Use authResponseDescriptor instead')
const AuthResponse$json = const {
  '1': 'AuthResponse',
  '2': const [
    const {'1': 'bearerToken', '3': 1, '4': 1, '5': 9, '10': 'bearerToken'},
  ],
};

/// Descriptor for `AuthResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authResponseDescriptor = $convert.base64Decode('CgxBdXRoUmVzcG9uc2USIAoLYmVhcmVyVG9rZW4YASABKAlSC2JlYXJlclRva2Vu');
@$core.Deprecated('Use trackMetadataResponseDescriptor instead')
const TrackMetadataResponse$json = const {
  '1': 'TrackMetadataResponse',
  '2': const [
    const {'1': 'track', '3': 1, '4': 3, '5': 11, '6': '.TrackMetaData', '10': 'track'},
  ],
};

/// Descriptor for `TrackMetadataResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List trackMetadataResponseDescriptor = $convert.base64Decode('ChVUcmFja01ldGFkYXRhUmVzcG9uc2USJAoFdHJhY2sYASADKAsyDi5UcmFja01ldGFEYXRhUgV0cmFjaw==');
@$core.Deprecated('Use trackMetaDataDescriptor instead')
const TrackMetaData$json = const {
  '1': 'TrackMetaData',
  '2': const [
    const {'1': 'code', '3': 1, '4': 1, '5': 9, '10': 'code'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'lat', '3': 3, '4': 1, '5': 2, '10': 'lat'},
    const {'1': 'long', '3': 4, '4': 1, '5': 2, '10': 'long'},
  ],
};

/// Descriptor for `TrackMetaData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List trackMetaDataDescriptor = $convert.base64Decode('Cg1UcmFja01ldGFEYXRhEhIKBGNvZGUYASABKAlSBGNvZGUSEgoEbmFtZRgCIAEoCVIEbmFtZRIQCgNsYXQYAyABKAJSA2xhdBISCgRsb25nGAQgASgCUgRsb25n');
@$core.Deprecated('Use connectToRaceDataRequestDescriptor instead')
const ConnectToRaceDataRequest$json = const {
  '1': 'ConnectToRaceDataRequest',
  '2': const [
    const {'1': 'provider', '3': 1, '4': 1, '5': 14, '6': '.RaceDataProvider', '10': 'provider'},
    const {'1': 'providerId', '3': 2, '4': 1, '5': 9, '10': 'providerId'},
    const {'1': 'trackCode', '3': 3, '4': 1, '5': 9, '10': 'trackCode'},
  ],
};

/// Descriptor for `ConnectToRaceDataRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List connectToRaceDataRequestDescriptor = $convert.base64Decode('ChhDb25uZWN0VG9SYWNlRGF0YVJlcXVlc3QSLQoIcHJvdmlkZXIYASABKA4yES5SYWNlRGF0YVByb3ZpZGVyUghwcm92aWRlchIeCgpwcm92aWRlcklkGAIgASgJUgpwcm92aWRlcklkEhwKCXRyYWNrQ29kZRgDIAEoCVIJdHJhY2tDb2Rl');
@$core.Deprecated('Use raceDataConnectionsResponseDescriptor instead')
const RaceDataConnectionsResponse$json = const {
  '1': 'RaceDataConnectionsResponse',
  '2': const [
    const {'1': 'response', '3': 1, '4': 3, '5': 11, '6': '.RaceDataConnectionResponse', '10': 'response'},
  ],
};

/// Descriptor for `RaceDataConnectionsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List raceDataConnectionsResponseDescriptor = $convert.base64Decode('ChtSYWNlRGF0YUNvbm5lY3Rpb25zUmVzcG9uc2USNwoIcmVzcG9uc2UYASADKAsyGy5SYWNlRGF0YUNvbm5lY3Rpb25SZXNwb25zZVIIcmVzcG9uc2U=');
@$core.Deprecated('Use raceDataConnectionResponseDescriptor instead')
const RaceDataConnectionResponse$json = const {
  '1': 'RaceDataConnectionResponse',
  '2': const [
    const {'1': 'running', '3': 1, '4': 1, '5': 8, '10': 'running'},
    const {'1': 'handle', '3': 2, '4': 1, '5': 9, '10': 'handle'},
    const {'1': 'trackName', '3': 3, '4': 1, '5': 9, '10': 'trackName'},
    const {'1': 'trackCode', '3': 4, '4': 1, '5': 9, '10': 'trackCode'},
  ],
};

/// Descriptor for `RaceDataConnectionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List raceDataConnectionResponseDescriptor = $convert.base64Decode('ChpSYWNlRGF0YUNvbm5lY3Rpb25SZXNwb25zZRIYCgdydW5uaW5nGAEgASgIUgdydW5uaW5nEhYKBmhhbmRsZRgCIAEoCVIGaGFuZGxlEhwKCXRyYWNrTmFtZRgDIAEoCVIJdHJhY2tOYW1lEhwKCXRyYWNrQ29kZRgEIAEoCVIJdHJhY2tDb2Rl');
@$core.Deprecated('Use raceDataConnectionRequestDescriptor instead')
const RaceDataConnectionRequest$json = const {
  '1': 'RaceDataConnectionRequest',
  '2': const [
    const {'1': 'handle', '3': 1, '4': 1, '5': 9, '10': 'handle'},
  ],
};

/// Descriptor for `RaceDataConnectionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List raceDataConnectionRequestDescriptor = $convert.base64Decode('ChlSYWNlRGF0YUNvbm5lY3Rpb25SZXF1ZXN0EhYKBmhhbmRsZRgBIAEoCVIGaGFuZGxl');
@$core.Deprecated('Use liveRaceDescriptor instead')
const LiveRace$json = const {
  '1': 'LiveRace',
  '2': const [
    const {'1': 'raceId', '3': 1, '4': 1, '5': 9, '10': 'raceId'},
    const {'1': 'trackName', '3': 2, '4': 1, '5': 9, '10': 'trackName'},
    const {'1': 'eventName', '3': 3, '4': 1, '5': 9, '10': 'eventName'},
  ],
};

/// Descriptor for `LiveRace`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List liveRaceDescriptor = $convert.base64Decode('CghMaXZlUmFjZRIWCgZyYWNlSWQYASABKAlSBnJhY2VJZBIcCgl0cmFja05hbWUYAiABKAlSCXRyYWNrTmFtZRIcCglldmVudE5hbWUYAyABKAlSCWV2ZW50TmFtZQ==');
@$core.Deprecated('Use liveRaceListResponseDescriptor instead')
const LiveRaceListResponse$json = const {
  '1': 'LiveRaceListResponse',
  '2': const [
    const {'1': 'races', '3': 1, '4': 3, '5': 11, '6': '.LiveRace', '10': 'races'},
  ],
};

/// Descriptor for `LiveRaceListResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List liveRaceListResponseDescriptor = $convert.base64Decode('ChRMaXZlUmFjZUxpc3RSZXNwb25zZRIfCgVyYWNlcxgBIAMoCzIJLkxpdmVSYWNlUgVyYWNlcw==');
