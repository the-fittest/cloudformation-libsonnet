{
  new(
    RestApiId,
    Type,
    Name,
  ): {
    local base = self,
    Properties: {
      assert std.isString(RestApiId) : 'RestApiId must be a string',
      RestApiId: RestApiId,
      assert std.isString(Type) : 'Type must be a string',
      Type: Type,
      assert std.isString(Name) : 'Name must be a string',
      Name: Name,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::ApiGateway::Authorizer',
  },
  withAuthorizerId(AuthorizerId): {
    assert std.isString(AuthorizerId) : 'AuthorizerId must be a string',
    Properties+::: {
      AuthorizerId: AuthorizerId,
    },
  },
  withAuthType(AuthType): {
    assert std.isString(AuthType) : 'AuthType must be a string',
    Properties+::: {
      AuthType: AuthType,
    },
  },
  withAuthorizerCredentials(AuthorizerCredentials): {
    assert std.isString(AuthorizerCredentials) : 'AuthorizerCredentials must be a string',
    Properties+::: {
      AuthorizerCredentials: AuthorizerCredentials,
    },
  },
  withAuthorizerResultTtlInSeconds(AuthorizerResultTtlInSeconds): {
    assert std.isNumber(AuthorizerResultTtlInSeconds) : 'AuthorizerResultTtlInSeconds must be a number',
    Properties+::: {
      AuthorizerResultTtlInSeconds: AuthorizerResultTtlInSeconds,
    },
  },
  withAuthorizerUri(AuthorizerUri): {
    assert std.isString(AuthorizerUri) : 'AuthorizerUri must be a string',
    Properties+::: {
      AuthorizerUri: AuthorizerUri,
    },
  },
  withIdentitySource(IdentitySource): {
    assert std.isString(IdentitySource) : 'IdentitySource must be a string',
    Properties+::: {
      IdentitySource: IdentitySource,
    },
  },
  withIdentityValidationExpression(IdentityValidationExpression): {
    assert std.isString(IdentityValidationExpression) : 'IdentityValidationExpression must be a string',
    Properties+::: {
      IdentityValidationExpression: IdentityValidationExpression,
    },
  },
  withProviderARNs(ProviderARNs): {
    Properties+::: {
      ProviderARNs: (if std.isArray(ProviderARNs) then ProviderARNs else [ProviderARNs]),
    },
  },
  withProviderARNsMixin(ProviderARNs): {
    Properties+::: {
      ProviderARNs+: (if std.isArray(ProviderARNs) then ProviderARNs else [ProviderARNs]),
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
