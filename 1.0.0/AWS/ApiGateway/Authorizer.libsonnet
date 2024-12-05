{
  new(
    RestApiId,
    Type,
    Name,
  ): {
    local base = self,
    Properties: {
      RestApiId:
        if !std.isString(RestApiId) then (error 'RestApiId must be a string')
        else if std.isEmpty(RestApiId) then (error 'RestApiId must be not empty')
        else RestApiId,
      Type:
        if !std.isString(Type) then (error 'Type must be a string')
        else if std.isEmpty(Type) then (error 'Type must be not empty')
        else Type,
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else Name,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::ApiGateway::Authorizer',
  },
  setAuthorizerId(AuthorizerId): {
    Properties+::: {
      AuthorizerId:
        if !std.isString(AuthorizerId) then (error 'AuthorizerId must be a string')
        else if std.isEmpty(AuthorizerId) then (error 'AuthorizerId must be not empty')
        else AuthorizerId,
    },
  },
  setAuthType(AuthType): {
    Properties+::: {
      AuthType:
        if !std.isString(AuthType) then (error 'AuthType must be a string')
        else if std.isEmpty(AuthType) then (error 'AuthType must be not empty')
        else AuthType,
    },
  },
  setAuthorizerCredentials(AuthorizerCredentials): {
    Properties+::: {
      AuthorizerCredentials:
        if !std.isString(AuthorizerCredentials) then (error 'AuthorizerCredentials must be a string')
        else if std.isEmpty(AuthorizerCredentials) then (error 'AuthorizerCredentials must be not empty')
        else AuthorizerCredentials,
    },
  },
  setAuthorizerResultTtlInSeconds(AuthorizerResultTtlInSeconds): {
    Properties+::: {
      AuthorizerResultTtlInSeconds:
        if !std.isNumber(AuthorizerResultTtlInSeconds) then (error 'AuthorizerResultTtlInSeconds must be an number')
        else AuthorizerResultTtlInSeconds,
    },
  },
  setAuthorizerUri(AuthorizerUri): {
    Properties+::: {
      AuthorizerUri:
        if !std.isString(AuthorizerUri) then (error 'AuthorizerUri must be a string')
        else if std.isEmpty(AuthorizerUri) then (error 'AuthorizerUri must be not empty')
        else AuthorizerUri,
    },
  },
  setIdentitySource(IdentitySource): {
    Properties+::: {
      IdentitySource:
        if !std.isString(IdentitySource) then (error 'IdentitySource must be a string')
        else if std.isEmpty(IdentitySource) then (error 'IdentitySource must be not empty')
        else IdentitySource,
    },
  },
  setIdentityValidationExpression(IdentityValidationExpression): {
    Properties+::: {
      IdentityValidationExpression:
        if !std.isString(IdentityValidationExpression) then (error 'IdentityValidationExpression must be a string')
        else if std.isEmpty(IdentityValidationExpression) then (error 'IdentityValidationExpression must be not empty')
        else IdentityValidationExpression,
    },
  },
  setProviderARNs(ProviderARNs): {
    Properties+::: {
      ProviderARNs:
        if !std.isArray(ProviderARNs) then (error 'ProviderARNs must be an array')
        else ProviderARNs,
    },
  },
  setProviderARNsMixin(ProviderARNs): {
    Properties+::: {
      ProviderARNs+: ProviderARNs,
    },
  },
  setDependsOn(DependsOn): {
    Properties+::: {
      DependsOn: DependsOn,
    },
  },
  setDependsOnMixin(DependsOn): {
    Properties+::: {
      DependsOn+: DependsOn,
    },
  },
  setCreationPolicy(CreationPolicy): {
    Properties+::: {
      CreationPolicy: CreationPolicy,
    },
  },
  setCreationPolicyMixin(CreationPolicy): {
    Properties+::: {
      CreationPolicy+: CreationPolicy,
    },
  },
  setDeletionPolicy(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy: DeletionPolicy,
    },
  },
  setDeletionPolicyMixin(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy+: DeletionPolicy,
    },
  },
  setUpdatePolicy(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy: UpdatePolicy,
    },
  },
  setUpdatePolicyMixin(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy+: UpdatePolicy,
    },
  },
  setUpdateReplacePolicy(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy: UpdateReplacePolicy,
    },
  },
  setUpdateReplacePolicyMixin(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy+: UpdateReplacePolicy,
    },
  },
  setMetadata(Metadata): {
    Properties+::: {
      Metadata: Metadata,
    },
  },
  setMetadataMixin(Metadata): {
    Properties+::: {
      Metadata+: Metadata,
    },
  },
}
