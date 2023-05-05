// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.cloud_formation.operation.cancel_update_stack_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i9;

import 'package:aws_common/aws_common.dart' as _i6;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i4;
import 'package:smoke_test/src/sdk/src/cloud_formation/common/endpoint_resolver.dart'
    as _i7;
import 'package:smoke_test/src/sdk/src/cloud_formation/common/serializers.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/cancel_update_stack_input.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/token_already_exists_exception.dart'
    as _i8;

/// Cancels an update on the specified stack. If the call completes successfully, the stack rolls back the update and reverts to the previous stack configuration.
///
/// You can cancel only stacks that are in the `UPDATE\_IN\_PROGRESS` state.
class CancelUpdateStackOperation extends _i1.HttpOperation<
    _i2.CancelUpdateStackInput,
    _i2.CancelUpdateStackInput,
    _i1.Unit,
    _i1.Unit> {
  /// Cancels an update on the specified stack. If the call completes successfully, the stack rolls back the update and reverts to the previous stack configuration.
  ///
  /// You can cancel only stacks that are in the `UPDATE\_IN\_PROGRESS` state.
  CancelUpdateStackOperation({
    required String region,
    Uri? baseUri,
    _i3.AWSCredentialsProvider credentialsProvider =
        const _i3.AWSCredentialsProvider.environment(),
    List<_i1.HttpRequestInterceptor> requestInterceptors = const [],
    List<_i1.HttpResponseInterceptor> responseInterceptors = const [],
  })  : _region = region,
        _baseUri = baseUri,
        _credentialsProvider = credentialsProvider,
        _requestInterceptors = requestInterceptors,
        _responseInterceptors = responseInterceptors;

  @override
  late final List<
      _i1.HttpProtocol<_i2.CancelUpdateStackInput, _i2.CancelUpdateStackInput,
          _i1.Unit, _i1.Unit>> protocols = [
    _i4.AwsQueryProtocol(
      serializers: _i5.serializers,
      builderFactories: _i5.builderFactories,
      requestInterceptors: <_i1.HttpRequestInterceptor>[
            const _i1.WithHost(),
            const _i1.WithContentLength(),
            _i4.WithSigV4(
              region: _region,
              service: _i6.AWSService.cloudFormation,
              credentialsProvider: _credentialsProvider,
            ),
            const _i1.WithUserAgent('aws-sdk-dart/0.3.1'),
            const _i4.WithSdkInvocationId(),
            const _i4.WithSdkRequest(),
          ] +
          _requestInterceptors,
      responseInterceptors:
          <_i1.HttpResponseInterceptor>[] + _responseInterceptors,
      action: 'CancelUpdateStack',
      version: '2010-05-15',
      awsQueryErrors: const [
        _i4.AwsQueryError(
          shape: 'TokenAlreadyExistsException',
          code: 'TokenAlreadyExistsException',
          httpResponseCode: 400,
        )
      ],
    )
  ];

  late final _i4.AWSEndpoint _awsEndpoint = _i7.endpointResolver.resolve(
    _i7.sdkId,
    _region,
  );

  final String _region;

  final Uri? _baseUri;

  final _i3.AWSCredentialsProvider _credentialsProvider;

  final List<_i1.HttpRequestInterceptor> _requestInterceptors;

  final List<_i1.HttpResponseInterceptor> _responseInterceptors;

  @override
  _i1.HttpRequest buildRequest(_i2.CancelUpdateStackInput input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i1.Unit? output]) => 200;
  @override
  _i1.Unit buildOutput(
    _i1.Unit payload,
    _i6.AWSBaseHttpResponse response,
  ) =>
      payload;
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'com.amazonaws.cloudformation',
            shape: 'TokenAlreadyExistsException',
          ),
          _i1.ErrorKind.client,
          _i8.TokenAlreadyExistsException,
          statusCode: 400,
          builder: _i8.TokenAlreadyExistsException.fromResponse,
        )
      ];
  @override
  String get runtimeTypeName => 'CancelUpdateStack';
  @override
  _i4.AWSRetryer get retryer => _i4.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i1.Unit> run(
    _i2.CancelUpdateStackInput input, {
    _i6.AWSHttpClient? client,
    _i1.ShapeId? useProtocol,
  }) {
    return _i9.runZoned(
      () => super.run(
        input,
        client: client,
        useProtocol: useProtocol,
      ),
      zoneValues: {
        ...?_awsEndpoint.credentialScope?.zoneValues,
        ...{_i6.AWSHeaders.sdkInvocationId: _i6.uuid(secure: true)}
      },
    );
  }
}