{
  new(
    Name,
    AuthenticationType,
  ): {
    local base = self,
    Properties: {
      assert std.isString(Name) : 'Name must be a string',
      Name: Name,
      assert std.isString(AuthenticationType) : 'AuthenticationType must be a string',
      AuthenticationType: AuthenticationType,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::AppSync::GraphQLApi',
  },
  withAdditionalAuthenticationProviders(AdditionalAuthenticationProviders): {
    Properties+::: {
      AdditionalAuthenticationProviders: (if std.isArray(AdditionalAuthenticationProviders) then AdditionalAuthenticationProviders else [AdditionalAuthenticationProviders]),
    },
  },
  withAdditionalAuthenticationProvidersMixin(AdditionalAuthenticationProviders): {
    Properties+::: {
      AdditionalAuthenticationProviders+: (if std.isArray(AdditionalAuthenticationProviders) then AdditionalAuthenticationProviders else [AdditionalAuthenticationProviders]),
    },
  },
  withApiId(ApiId): {
    assert std.isString(ApiId) : 'ApiId must be a string',
    Properties+::: {
      ApiId: ApiId,
    },
  },
  withApiType(ApiType): {
    assert std.isString(ApiType) : 'ApiType must be a string',
    Properties+::: {
      ApiType: ApiType,
    },
  },
  withArn(Arn): {
    assert std.isString(Arn) : 'Arn must be a string',
    Properties+::: {
      Arn: Arn,
    },
  },
  withEnhancedMetricsConfig(EnhancedMetricsConfig): {
    assert std.isObject(EnhancedMetricsConfig) : 'EnhancedMetricsConfig must be a object',
    Properties+::: {
      EnhancedMetricsConfig: EnhancedMetricsConfig,
    },
  },
  withEnvironmentVariables(EnvironmentVariables): {
    assert std.isObject(EnvironmentVariables) : 'EnvironmentVariables must be a object',
    Properties+::: {
      EnvironmentVariables: EnvironmentVariables,
    },
  },
  withGraphQLDns(GraphQLDns): {
    assert std.isString(GraphQLDns) : 'GraphQLDns must be a string',
    Properties+::: {
      GraphQLDns: GraphQLDns,
    },
  },
  withGraphQLEndpointArn(GraphQLEndpointArn): {
    assert std.isString(GraphQLEndpointArn) : 'GraphQLEndpointArn must be a string',
    Properties+::: {
      GraphQLEndpointArn: GraphQLEndpointArn,
    },
  },
  withGraphQLUrl(GraphQLUrl): {
    assert std.isString(GraphQLUrl) : 'GraphQLUrl must be a string',
    Properties+::: {
      GraphQLUrl: GraphQLUrl,
    },
  },
  withIntrospectionConfig(IntrospectionConfig): {
    assert std.isString(IntrospectionConfig) : 'IntrospectionConfig must be a string',
    Properties+::: {
      IntrospectionConfig: IntrospectionConfig,
    },
  },
  withLambdaAuthorizerConfig(LambdaAuthorizerConfig): {
    assert std.isObject(LambdaAuthorizerConfig) : 'LambdaAuthorizerConfig must be a object',
    Properties+::: {
      LambdaAuthorizerConfig: LambdaAuthorizerConfig,
    },
  },
  withLogConfig(LogConfig): {
    assert std.isObject(LogConfig) : 'LogConfig must be a object',
    Properties+::: {
      LogConfig: LogConfig,
    },
  },
  withMergedApiExecutionRoleArn(MergedApiExecutionRoleArn): {
    assert std.isString(MergedApiExecutionRoleArn) : 'MergedApiExecutionRoleArn must be a string',
    Properties+::: {
      MergedApiExecutionRoleArn: MergedApiExecutionRoleArn,
    },
  },
  withOpenIDConnectConfig(OpenIDConnectConfig): {
    assert std.isObject(OpenIDConnectConfig) : 'OpenIDConnectConfig must be a object',
    Properties+::: {
      OpenIDConnectConfig: OpenIDConnectConfig,
    },
  },
  withOwnerContact(OwnerContact): {
    assert std.isString(OwnerContact) : 'OwnerContact must be a string',
    Properties+::: {
      OwnerContact: OwnerContact,
    },
  },
  withQueryDepthLimit(QueryDepthLimit): {
    assert std.isNumber(QueryDepthLimit) : 'QueryDepthLimit must be a number',
    Properties+::: {
      QueryDepthLimit: QueryDepthLimit,
    },
  },
  withRealtimeDns(RealtimeDns): {
    assert std.isString(RealtimeDns) : 'RealtimeDns must be a string',
    Properties+::: {
      RealtimeDns: RealtimeDns,
    },
  },
  withRealtimeUrl(RealtimeUrl): {
    assert std.isString(RealtimeUrl) : 'RealtimeUrl must be a string',
    Properties+::: {
      RealtimeUrl: RealtimeUrl,
    },
  },
  withResolverCountLimit(ResolverCountLimit): {
    assert std.isNumber(ResolverCountLimit) : 'ResolverCountLimit must be a number',
    Properties+::: {
      ResolverCountLimit: ResolverCountLimit,
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
  withUserPoolConfig(UserPoolConfig): {
    assert std.isObject(UserPoolConfig) : 'UserPoolConfig must be a object',
    Properties+::: {
      UserPoolConfig: UserPoolConfig,
    },
  },
  withVisibility(Visibility): {
    assert std.isString(Visibility) : 'Visibility must be a string',
    Properties+::: {
      Visibility: Visibility,
    },
  },
  withXrayEnabled(XrayEnabled): {
    assert std.isBoolean(XrayEnabled) : 'XrayEnabled must be a boolean',
    Properties+::: {
      XrayEnabled: XrayEnabled,
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
