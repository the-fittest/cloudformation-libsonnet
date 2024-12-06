{
  new(
    Name,
    AuthenticationType,
  ): {
    local base = self,
    Properties: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else Name,
      AuthenticationType:
        if !std.isString(AuthenticationType) then (error 'AuthenticationType must be a string')
        else if std.isEmpty(AuthenticationType) then (error 'AuthenticationType must be not empty')
        else AuthenticationType,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::AppSync::GraphQLApi',
  },
  setAdditionalAuthenticationProviders(AdditionalAuthenticationProviders): {
    Properties+::: {
      AdditionalAuthenticationProviders:
        if !std.isArray(AdditionalAuthenticationProviders) then (error 'AdditionalAuthenticationProviders must be an array')
        else AdditionalAuthenticationProviders,
    },
  },
  pushAdditionalAuthenticationProviders(AdditionalAuthenticationProviders): {
    Properties+::: {
      AdditionalAuthenticationProviders+: AdditionalAuthenticationProviders,
    },
  },
  setApiId(ApiId): {
    Properties+::: {
      ApiId:
        if !std.isString(ApiId) then (error 'ApiId must be a string')
        else if std.isEmpty(ApiId) then (error 'ApiId must be not empty')
        else ApiId,
    },
  },
  setApiType(ApiType): {
    Properties+::: {
      ApiType:
        if !std.isString(ApiType) then (error 'ApiType must be a string')
        else if std.isEmpty(ApiType) then (error 'ApiType must be not empty')
        else ApiType,
    },
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else Arn,
    },
  },
  setEnhancedMetricsConfig(EnhancedMetricsConfig): {
    Properties+::: {
      EnhancedMetricsConfig:
        if !std.isObject(EnhancedMetricsConfig) then (error 'EnhancedMetricsConfig must be an object')
        else if !std.objectHas(EnhancedMetricsConfig, 'OperationLevelMetricsConfig') then (error ' have attribute OperationLevelMetricsConfig')
        else if !std.objectHas(EnhancedMetricsConfig, 'ResolverLevelMetricsBehavior') then (error ' have attribute ResolverLevelMetricsBehavior')
        else if !std.objectHas(EnhancedMetricsConfig, 'DataSourceLevelMetricsBehavior') then (error ' have attribute DataSourceLevelMetricsBehavior')
        else EnhancedMetricsConfig,
    },
  },
  setEnvironmentVariables(EnvironmentVariables): {
    Properties+::: {
      EnvironmentVariables:
        if !std.isObject(EnvironmentVariables) then (error 'EnvironmentVariables must be an object')
        else EnvironmentVariables,
    },
  },
  setGraphQLDns(GraphQLDns): {
    Properties+::: {
      GraphQLDns:
        if !std.isString(GraphQLDns) then (error 'GraphQLDns must be a string')
        else if std.isEmpty(GraphQLDns) then (error 'GraphQLDns must be not empty')
        else GraphQLDns,
    },
  },
  setGraphQLEndpointArn(GraphQLEndpointArn): {
    Properties+::: {
      GraphQLEndpointArn:
        if !std.isString(GraphQLEndpointArn) then (error 'GraphQLEndpointArn must be a string')
        else if std.isEmpty(GraphQLEndpointArn) then (error 'GraphQLEndpointArn must be not empty')
        else GraphQLEndpointArn,
    },
  },
  setGraphQLUrl(GraphQLUrl): {
    Properties+::: {
      GraphQLUrl:
        if !std.isString(GraphQLUrl) then (error 'GraphQLUrl must be a string')
        else if std.isEmpty(GraphQLUrl) then (error 'GraphQLUrl must be not empty')
        else GraphQLUrl,
    },
  },
  setIntrospectionConfig(IntrospectionConfig): {
    Properties+::: {
      IntrospectionConfig:
        if !std.isString(IntrospectionConfig) then (error 'IntrospectionConfig must be a string')
        else if std.isEmpty(IntrospectionConfig) then (error 'IntrospectionConfig must be not empty')
        else IntrospectionConfig,
    },
  },
  setLambdaAuthorizerConfig(LambdaAuthorizerConfig): {
    Properties+::: {
      LambdaAuthorizerConfig:
        if !std.isObject(LambdaAuthorizerConfig) then (error 'LambdaAuthorizerConfig must be an object')
        else LambdaAuthorizerConfig,
    },
  },
  setLogConfig(LogConfig): {
    Properties+::: {
      LogConfig:
        if !std.isObject(LogConfig) then (error 'LogConfig must be an object')
        else LogConfig,
    },
  },
  setMergedApiExecutionRoleArn(MergedApiExecutionRoleArn): {
    Properties+::: {
      MergedApiExecutionRoleArn:
        if !std.isString(MergedApiExecutionRoleArn) then (error 'MergedApiExecutionRoleArn must be a string')
        else if std.isEmpty(MergedApiExecutionRoleArn) then (error 'MergedApiExecutionRoleArn must be not empty')
        else MergedApiExecutionRoleArn,
    },
  },
  setOpenIDConnectConfig(OpenIDConnectConfig): {
    Properties+::: {
      OpenIDConnectConfig:
        if !std.isObject(OpenIDConnectConfig) then (error 'OpenIDConnectConfig must be an object')
        else OpenIDConnectConfig,
    },
  },
  setOwnerContact(OwnerContact): {
    Properties+::: {
      OwnerContact:
        if !std.isString(OwnerContact) then (error 'OwnerContact must be a string')
        else if std.isEmpty(OwnerContact) then (error 'OwnerContact must be not empty')
        else OwnerContact,
    },
  },
  setQueryDepthLimit(QueryDepthLimit): {
    Properties+::: {
      QueryDepthLimit:
        if !std.isNumber(QueryDepthLimit) then (error 'QueryDepthLimit must be an number')
        else QueryDepthLimit,
    },
  },
  setRealtimeDns(RealtimeDns): {
    Properties+::: {
      RealtimeDns:
        if !std.isString(RealtimeDns) then (error 'RealtimeDns must be a string')
        else if std.isEmpty(RealtimeDns) then (error 'RealtimeDns must be not empty')
        else RealtimeDns,
    },
  },
  setRealtimeUrl(RealtimeUrl): {
    Properties+::: {
      RealtimeUrl:
        if !std.isString(RealtimeUrl) then (error 'RealtimeUrl must be a string')
        else if std.isEmpty(RealtimeUrl) then (error 'RealtimeUrl must be not empty')
        else RealtimeUrl,
    },
  },
  setResolverCountLimit(ResolverCountLimit): {
    Properties+::: {
      ResolverCountLimit:
        if !std.isNumber(ResolverCountLimit) then (error 'ResolverCountLimit must be an number')
        else ResolverCountLimit,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else Tags,
    },
  },
  pushTags(Tags): {
    Properties+::: {
      Tags+: Tags,
    },
  },
  setUserPoolConfig(UserPoolConfig): {
    Properties+::: {
      UserPoolConfig:
        if !std.isObject(UserPoolConfig) then (error 'UserPoolConfig must be an object')
        else UserPoolConfig,
    },
  },
  setVisibility(Visibility): {
    Properties+::: {
      Visibility:
        if !std.isString(Visibility) then (error 'Visibility must be a string')
        else if std.isEmpty(Visibility) then (error 'Visibility must be not empty')
        else Visibility,
    },
  },
  setXrayEnabled(XrayEnabled): {
    Properties+::: {
      XrayEnabled:
        if !std.isBoolean(XrayEnabled) then (error 'XrayEnabled must be a boolean') else XrayEnabled,
    },
  },
  setDependsOn(DependsOn): {
    Properties+::: {
      DependsOn: DependsOn,
    },
  },
  pushDependsOn(DependsOn): {
    Properties+::: {
      DependsOn+: DependsOn,
    },
  },
  setCreationPolicy(CreationPolicy): {
    Properties+::: {
      CreationPolicy: CreationPolicy,
    },
  },
  pushCreationPolicy(CreationPolicy): {
    Properties+::: {
      CreationPolicy+: CreationPolicy,
    },
  },
  setDeletionPolicy(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy: DeletionPolicy,
    },
  },
  pushDeletionPolicy(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy+: DeletionPolicy,
    },
  },
  setUpdatePolicy(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy: UpdatePolicy,
    },
  },
  pushUpdatePolicy(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy+: UpdatePolicy,
    },
  },
  setUpdateReplacePolicy(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy: UpdateReplacePolicy,
    },
  },
  pushUpdateReplacePolicy(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy+: UpdateReplacePolicy,
    },
  },
  setMetadata(Metadata): {
    Properties+::: {
      Metadata: Metadata,
    },
  },
  pushMetadata(Metadata): {
    Properties+::: {
      Metadata+: Metadata,
    },
  },
}
