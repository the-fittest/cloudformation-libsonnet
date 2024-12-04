{
  new(
    ApiId,
    IntegrationType,
  ): {
    local base = self,
    Properties: {
      assert std.isString(ApiId) : 'ApiId must be a string',
      ApiId: ApiId,
      assert std.isString(IntegrationType) : 'IntegrationType must be a string',
      IntegrationType: IntegrationType,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::ApiGatewayV2::Integration',
  },
  withConnectionId(ConnectionId): {
    assert std.isString(ConnectionId) : 'ConnectionId must be a string',
    Properties+::: {
      ConnectionId: ConnectionId,
    },
  },
  withConnectionType(ConnectionType): {
    assert std.isString(ConnectionType) : 'ConnectionType must be a string',
    Properties+::: {
      ConnectionType: ConnectionType,
    },
  },
  withContentHandlingStrategy(ContentHandlingStrategy): {
    assert std.isString(ContentHandlingStrategy) : 'ContentHandlingStrategy must be a string',
    Properties+::: {
      ContentHandlingStrategy: ContentHandlingStrategy,
    },
  },
  withCredentialsArn(CredentialsArn): {
    assert std.isString(CredentialsArn) : 'CredentialsArn must be a string',
    Properties+::: {
      CredentialsArn: CredentialsArn,
    },
  },
  withDescription(Description): {
    assert std.isString(Description) : 'Description must be a string',
    Properties+::: {
      Description: Description,
    },
  },
  withIntegrationMethod(IntegrationMethod): {
    assert std.isString(IntegrationMethod) : 'IntegrationMethod must be a string',
    Properties+::: {
      IntegrationMethod: IntegrationMethod,
    },
  },
  withIntegrationSubtype(IntegrationSubtype): {
    assert std.isString(IntegrationSubtype) : 'IntegrationSubtype must be a string',
    Properties+::: {
      IntegrationSubtype: IntegrationSubtype,
    },
  },
  withIntegrationId(IntegrationId): {
    assert std.isString(IntegrationId) : 'IntegrationId must be a string',
    Properties+::: {
      IntegrationId: IntegrationId,
    },
  },
  withIntegrationUri(IntegrationUri): {
    assert std.isString(IntegrationUri) : 'IntegrationUri must be a string',
    Properties+::: {
      IntegrationUri: IntegrationUri,
    },
  },
  withPassthroughBehavior(PassthroughBehavior): {
    assert std.isString(PassthroughBehavior) : 'PassthroughBehavior must be a string',
    Properties+::: {
      PassthroughBehavior: PassthroughBehavior,
    },
  },
  withPayloadFormatVersion(PayloadFormatVersion): {
    assert std.isString(PayloadFormatVersion) : 'PayloadFormatVersion must be a string',
    Properties+::: {
      PayloadFormatVersion: PayloadFormatVersion,
    },
  },
  withRequestParameters(RequestParameters): {
    assert std.isObject(RequestParameters) : 'RequestParameters must be a object',
    Properties+::: {
      RequestParameters: RequestParameters,
    },
  },
  withRequestTemplates(RequestTemplates): {
    assert std.isObject(RequestTemplates) : 'RequestTemplates must be a object',
    Properties+::: {
      RequestTemplates: RequestTemplates,
    },
  },
  withResponseParameters(ResponseParameters): {
    assert std.isObject(ResponseParameters) : 'ResponseParameters must be a object',
    Properties+::: {
      ResponseParameters: ResponseParameters,
    },
  },
  withTemplateSelectionExpression(TemplateSelectionExpression): {
    assert std.isString(TemplateSelectionExpression) : 'TemplateSelectionExpression must be a string',
    Properties+::: {
      TemplateSelectionExpression: TemplateSelectionExpression,
    },
  },
  withTimeoutInMillis(TimeoutInMillis): {
    assert std.isNumber(TimeoutInMillis) : 'TimeoutInMillis must be a number',
    Properties+::: {
      TimeoutInMillis: TimeoutInMillis,
    },
  },
  withTlsConfig(TlsConfig): {
    assert std.isObject(TlsConfig) : 'TlsConfig must be a object',
    Properties+::: {
      TlsConfig: TlsConfig,
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
