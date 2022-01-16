///
//  Generated code. Do not modify.
//  source: meringue-admin.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class RaceDataProvider extends $pb.ProtobufEnum {
  static const RaceDataProvider PROVIDER_UNKNOWN = RaceDataProvider._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PROVIDER_UNKNOWN');
  static const RaceDataProvider PROVIDER_RM = RaceDataProvider._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PROVIDER_RM');

  static const $core.List<RaceDataProvider> values = <RaceDataProvider> [
    PROVIDER_UNKNOWN,
    PROVIDER_RM,
  ];

  static final $core.Map<$core.int, RaceDataProvider> _byValue = $pb.ProtobufEnum.initByValue(values);
  static RaceDataProvider? valueOf($core.int value) => _byValue[value];

  const RaceDataProvider._($core.int v, $core.String n) : super(v, n);
}

