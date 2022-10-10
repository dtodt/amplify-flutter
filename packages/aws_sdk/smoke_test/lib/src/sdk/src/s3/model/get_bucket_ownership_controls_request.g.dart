// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.get_bucket_ownership_controls_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetBucketOwnershipControlsRequest
    extends GetBucketOwnershipControlsRequest {
  @override
  final String bucket;
  @override
  final String? expectedBucketOwner;

  factory _$GetBucketOwnershipControlsRequest(
          [void Function(GetBucketOwnershipControlsRequestBuilder)? updates]) =>
      (new GetBucketOwnershipControlsRequestBuilder()..update(updates))
          ._build();

  _$GetBucketOwnershipControlsRequest._(
      {required this.bucket, this.expectedBucketOwner})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bucket, r'GetBucketOwnershipControlsRequest', 'bucket');
  }

  @override
  GetBucketOwnershipControlsRequest rebuild(
          void Function(GetBucketOwnershipControlsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetBucketOwnershipControlsRequestBuilder toBuilder() =>
      new GetBucketOwnershipControlsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetBucketOwnershipControlsRequest &&
        bucket == other.bucket &&
        expectedBucketOwner == other.expectedBucketOwner;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, bucket.hashCode), expectedBucketOwner.hashCode));
  }
}

class GetBucketOwnershipControlsRequestBuilder
    implements
        Builder<GetBucketOwnershipControlsRequest,
            GetBucketOwnershipControlsRequestBuilder> {
  _$GetBucketOwnershipControlsRequest? _$v;

  String? _bucket;
  String? get bucket => _$this._bucket;
  set bucket(String? bucket) => _$this._bucket = bucket;

  String? _expectedBucketOwner;
  String? get expectedBucketOwner => _$this._expectedBucketOwner;
  set expectedBucketOwner(String? expectedBucketOwner) =>
      _$this._expectedBucketOwner = expectedBucketOwner;

  GetBucketOwnershipControlsRequestBuilder() {
    GetBucketOwnershipControlsRequest._init(this);
  }

  GetBucketOwnershipControlsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucket = $v.bucket;
      _expectedBucketOwner = $v.expectedBucketOwner;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetBucketOwnershipControlsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetBucketOwnershipControlsRequest;
  }

  @override
  void update(
      void Function(GetBucketOwnershipControlsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetBucketOwnershipControlsRequest build() => _build();

  _$GetBucketOwnershipControlsRequest _build() {
    final _$result = _$v ??
        new _$GetBucketOwnershipControlsRequest._(
            bucket: BuiltValueNullFieldError.checkNotNull(
                bucket, r'GetBucketOwnershipControlsRequest', 'bucket'),
            expectedBucketOwner: expectedBucketOwner);
    replace(_$result);
    return _$result;
  }
}

class _$GetBucketOwnershipControlsRequestPayload
    extends GetBucketOwnershipControlsRequestPayload {
  factory _$GetBucketOwnershipControlsRequestPayload(
          [void Function(GetBucketOwnershipControlsRequestPayloadBuilder)?
              updates]) =>
      (new GetBucketOwnershipControlsRequestPayloadBuilder()..update(updates))
          ._build();

  _$GetBucketOwnershipControlsRequestPayload._() : super._();

  @override
  GetBucketOwnershipControlsRequestPayload rebuild(
          void Function(GetBucketOwnershipControlsRequestPayloadBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetBucketOwnershipControlsRequestPayloadBuilder toBuilder() =>
      new GetBucketOwnershipControlsRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetBucketOwnershipControlsRequestPayload;
  }

  @override
  int get hashCode {
    return 960592435;
  }
}

class GetBucketOwnershipControlsRequestPayloadBuilder
    implements
        Builder<GetBucketOwnershipControlsRequestPayload,
            GetBucketOwnershipControlsRequestPayloadBuilder> {
  _$GetBucketOwnershipControlsRequestPayload? _$v;

  GetBucketOwnershipControlsRequestPayloadBuilder() {
    GetBucketOwnershipControlsRequestPayload._init(this);
  }

  @override
  void replace(GetBucketOwnershipControlsRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetBucketOwnershipControlsRequestPayload;
  }

  @override
  void update(
      void Function(GetBucketOwnershipControlsRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetBucketOwnershipControlsRequestPayload build() => _build();

  _$GetBucketOwnershipControlsRequestPayload _build() {
    final _$result = _$v ?? new _$GetBucketOwnershipControlsRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas