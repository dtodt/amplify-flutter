// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_network_acls_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/network_acl.dart';

part 'describe_network_acls_result.g.dart';

abstract class DescribeNetworkAclsResult
    with _i1.AWSEquatable<DescribeNetworkAclsResult>
    implements
        Built<DescribeNetworkAclsResult, DescribeNetworkAclsResultBuilder> {
  factory DescribeNetworkAclsResult({
    List<NetworkAcl>? networkAcls,
    String? nextToken,
  }) {
    return _$DescribeNetworkAclsResult._(
      networkAcls: networkAcls == null ? null : _i2.BuiltList(networkAcls),
      nextToken: nextToken,
    );
  }

  factory DescribeNetworkAclsResult.build(
          [void Function(DescribeNetworkAclsResultBuilder) updates]) =
      _$DescribeNetworkAclsResult;

  const DescribeNetworkAclsResult._();

  /// Constructs a [DescribeNetworkAclsResult] from a [payload] and [response].
  factory DescribeNetworkAclsResult.fromResponse(
    DescribeNetworkAclsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<DescribeNetworkAclsResult>>
      serializers = [DescribeNetworkAclsResultEc2QuerySerializer()];

  /// Information about one or more network ACLs.
  _i2.BuiltList<NetworkAcl>? get networkAcls;

  /// The token to include in another request to get the next page of items. This value is `null` when there are no more items to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        networkAcls,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeNetworkAclsResult')
      ..add(
        'networkAcls',
        networkAcls,
      )
      ..add(
        'nextToken',
        nextToken,
      );
    return helper.toString();
  }
}

class DescribeNetworkAclsResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<DescribeNetworkAclsResult> {
  const DescribeNetworkAclsResultEc2QuerySerializer()
      : super('DescribeNetworkAclsResult');

  @override
  Iterable<Type> get types => const [
        DescribeNetworkAclsResult,
        _$DescribeNetworkAclsResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeNetworkAclsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeNetworkAclsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'networkAclSet':
          result.networkAcls.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(NetworkAcl)],
            ),
          ) as _i2.BuiltList<NetworkAcl>));
        case 'nextToken':
          result.nextToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DescribeNetworkAclsResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeNetworkAclsResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeNetworkAclsResult(:networkAcls, :nextToken) = object;
    if (networkAcls != null) {
      result$
        ..add(const _i3.XmlElementName('NetworkAclSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          networkAcls,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(NetworkAcl)],
          ),
        ));
    }
    if (nextToken != null) {
      result$
        ..add(const _i3.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          nextToken,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}