{
  new(
  ): {
    local base = self,
    Properties: {
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::ApiGateway::RestApi',
  },
  withPolicy(Policy): {
    Properties+::: {
      Policy: Policy,
    },
  },
  withBodyS3Location(BodyS3Location): {
    assert std.isObject(BodyS3Location) : 'BodyS3Location must be a object',
    Properties+::: {
      BodyS3Location: BodyS3Location,
    },
  },
  withDescription(Description): {
    assert std.isString(Description) : 'Description must be a string',
    Properties+::: {
      Description: Description,
    },
  },
  withMinimumCompressionSize(MinimumCompressionSize): {
    assert std.isNumber(MinimumCompressionSize) : 'MinimumCompressionSize must be a number',
    Properties+::: {
      MinimumCompressionSize: MinimumCompressionSize,
    },
  },
  withParameters(Parameters): {
    Properties+::: {
      Parameters: Parameters,
    },
  },
  withCloneFrom(CloneFrom): {
    assert std.isString(CloneFrom) : 'CloneFrom must be a string',
    Properties+::: {
      CloneFrom: CloneFrom,
    },
  },
  withMode(Mode): {
    assert std.isString(Mode) : 'Mode must be a string',
    Properties+::: {
      Mode: Mode,
    },
  },
  withRestApiId(RestApiId): {
    assert std.isString(RestApiId) : 'RestApiId must be a string',
    Properties+::: {
      RestApiId: RestApiId,
    },
  },
  withDisableExecuteApiEndpoint(DisableExecuteApiEndpoint): {
    assert std.isBoolean(DisableExecuteApiEndpoint) : 'DisableExecuteApiEndpoint must be a boolean',
    Properties+::: {
      DisableExecuteApiEndpoint: DisableExecuteApiEndpoint,
    },
  },
  withFailOnWarnings(FailOnWarnings): {
    assert std.isBoolean(FailOnWarnings) : 'FailOnWarnings must be a boolean',
    Properties+::: {
      FailOnWarnings: FailOnWarnings,
    },
  },
  withBinaryMediaTypes(BinaryMediaTypes): {
    Properties+::: {
      BinaryMediaTypes: (if std.isArray(BinaryMediaTypes) then BinaryMediaTypes else [BinaryMediaTypes]),
    },
  },
  withBinaryMediaTypesMixin(BinaryMediaTypes): {
    Properties+::: {
      BinaryMediaTypes+: (if std.isArray(BinaryMediaTypes) then BinaryMediaTypes else [BinaryMediaTypes]),
    },
  },
  withName(Name): {
    assert std.isString(Name) : 'Name must be a string',
    Properties+::: {
      Name: Name,
    },
  },
  withRootResourceId(RootResourceId): {
    assert std.isString(RootResourceId) : 'RootResourceId must be a string',
    Properties+::: {
      RootResourceId: RootResourceId,
    },
  },
  withApiKeySourceType(ApiKeySourceType): {
    assert std.isString(ApiKeySourceType) : 'ApiKeySourceType must be a string',
    Properties+::: {
      ApiKeySourceType: ApiKeySourceType,
    },
  },
  withEndpointConfiguration(EndpointConfiguration): {
    assert std.isObject(EndpointConfiguration) : 'EndpointConfiguration must be a object',
    Properties+::: {
      EndpointConfiguration: EndpointConfiguration,
    },
  },
  withBody(Body): {
    Properties+::: {
      Body: Body,
    },
  },
  withTags(Tags): {
    Properties+::: {
      Tags: (if std.isArray(Tags) then Tags else [Tags]),
    },
  },
  withTagsMixin(Tags): {
    Properties+::: {
      Tags+: (if std.isArray(Tags) then Tags else [Tags]),
    },
  },
  withDependsOn(DependsOn): {
    Properties+::: {
      DependsOn: (if std.isArray(DependsOn) then DependsOn else [DependsOn]),
    },
  },
  withDependsOnMixin(DependsOn): {
    Properties+::: {
      DependsOn+: (if std.isArray(DependsOn) then DependsOn else [DependsOn]),
    },
  },
  withCreationPolicy(CreationPolicy): {
    Properties+::: {
      CreationPolicy: (if std.isArray(CreationPolicy) then CreationPolicy else [CreationPolicy]),
    },
  },
  withCreationPolicyMixin(CreationPolicy): {
    Properties+::: {
      CreationPolicy+: (if std.isArray(CreationPolicy) then CreationPolicy else [CreationPolicy]),
    },
  },
  withDeletionPolicy(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy: (if std.isArray(DeletionPolicy) then DeletionPolicy else [DeletionPolicy]),
    },
  },
  withDeletionPolicyMixin(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy+: (if std.isArray(DeletionPolicy) then DeletionPolicy else [DeletionPolicy]),
    },
  },
  withUpdatePolicy(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy: (if std.isArray(UpdatePolicy) then UpdatePolicy else [UpdatePolicy]),
    },
  },
  withUpdatePolicyMixin(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy+: (if std.isArray(UpdatePolicy) then UpdatePolicy else [UpdatePolicy]),
    },
  },
  withUpdateReplacePolicy(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy: (if std.isArray(UpdateReplacePolicy) then UpdateReplacePolicy else [UpdateReplacePolicy]),
    },
  },
  withUpdateReplacePolicyMixin(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy+: (if std.isArray(UpdateReplacePolicy) then UpdateReplacePolicy else [UpdateReplacePolicy]),
    },
  },
  withMetadata(Metadata): {
    Properties+::: {
      Metadata: (if std.isArray(Metadata) then Metadata else [Metadata]),
    },
  },
  withMetadataMixin(Metadata): {
    Properties+::: {
      Metadata+: (if std.isArray(Metadata) then Metadata else [Metadata]),
    },
  },
}
