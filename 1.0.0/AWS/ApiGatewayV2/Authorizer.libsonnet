{
  new(
    AuthorizerType,
    ApiId,
    Name,
  ): {
    local base = self,
    Properties: {
      assert std.isString(AuthorizerType) : 'AuthorizerType must be a string',
      AuthorizerType: AuthorizerType,
      assert std.isString(ApiId) : 'ApiId must be a string',
      ApiId: ApiId,
      assert std.isString(Name) : 'Name must be a string',
      Name: Name,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::ApiGatewayV2::Authorizer',
  },
  withIdentityValidationExpression(IdentityValidationExpression): {
    assert std.isString(IdentityValidationExpression) : 'IdentityValidationExpression must be a string',
    Properties+::: {
      IdentityValidationExpression: IdentityValidationExpression,
    },
  },
  withAuthorizerUri(AuthorizerUri): {
    assert std.isString(AuthorizerUri) : 'AuthorizerUri must be a string',
    Properties+::: {
      AuthorizerUri: AuthorizerUri,
    },
  },
  withAuthorizerCredentialsArn(AuthorizerCredentialsArn): {
    assert std.isString(AuthorizerCredentialsArn) : 'AuthorizerCredentialsArn must be a string',
    Properties+::: {
      AuthorizerCredentialsArn: AuthorizerCredentialsArn,
    },
  },
  withJwtConfiguration(JwtConfiguration): {
    assert std.isObject(JwtConfiguration) : 'JwtConfiguration must be a object',
    Properties+::: {
      JwtConfiguration: JwtConfiguration,
    },
  },
  withAuthorizerResultTtlInSeconds(AuthorizerResultTtlInSeconds): {
    assert std.isNumber(AuthorizerResultTtlInSeconds) : 'AuthorizerResultTtlInSeconds must be a number',
    Properties+::: {
      AuthorizerResultTtlInSeconds: AuthorizerResultTtlInSeconds,
    },
  },
  withIdentitySource(IdentitySource): {
    Properties+::: {
      IdentitySource: (if std.isArray(IdentitySource) then IdentitySource else [IdentitySource]),
    },
  },
  withIdentitySourceMixin(IdentitySource): {
    Properties+::: {
      IdentitySource+: (if std.isArray(IdentitySource) then IdentitySource else [IdentitySource]),
    },
  },
  withAuthorizerPayloadFormatVersion(AuthorizerPayloadFormatVersion): {
    assert std.isString(AuthorizerPayloadFormatVersion) : 'AuthorizerPayloadFormatVersion must be a string',
    Properties+::: {
      AuthorizerPayloadFormatVersion: AuthorizerPayloadFormatVersion,
    },
  },
  withEnableSimpleResponses(EnableSimpleResponses): {
    assert std.isBoolean(EnableSimpleResponses) : 'EnableSimpleResponses must be a boolean',
    Properties+::: {
      EnableSimpleResponses: EnableSimpleResponses,
    },
  },
  withAuthorizerId(AuthorizerId): {
    assert std.isString(AuthorizerId) : 'AuthorizerId must be a string',
    Properties+::: {
      AuthorizerId: AuthorizerId,
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
