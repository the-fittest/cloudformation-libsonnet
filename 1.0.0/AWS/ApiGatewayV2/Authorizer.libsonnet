{
  new(
    AuthorizerType,
    ApiId,
    Name,
  ): {
    local base = self,
    Properties: {
      AuthorizerType:
        if !std.isString(AuthorizerType) then (error 'AuthorizerType must be a string')
        else if std.isEmpty(AuthorizerType) then (error 'AuthorizerType must be not empty')
        else AuthorizerType,
      ApiId:
        if !std.isString(ApiId) then (error 'ApiId must be a string')
        else if std.isEmpty(ApiId) then (error 'ApiId must be not empty')
        else ApiId,
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
    Type: 'AWS::ApiGatewayV2::Authorizer',
  },
  setIdentityValidationExpression(IdentityValidationExpression): {
    Properties+::: {
      IdentityValidationExpression:
        if !std.isString(IdentityValidationExpression) then (error 'IdentityValidationExpression must be a string')
        else if std.isEmpty(IdentityValidationExpression) then (error 'IdentityValidationExpression must be not empty')
        else IdentityValidationExpression,
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
  setAuthorizerCredentialsArn(AuthorizerCredentialsArn): {
    Properties+::: {
      AuthorizerCredentialsArn:
        if !std.isString(AuthorizerCredentialsArn) then (error 'AuthorizerCredentialsArn must be a string')
        else if std.isEmpty(AuthorizerCredentialsArn) then (error 'AuthorizerCredentialsArn must be not empty')
        else AuthorizerCredentialsArn,
    },
  },
  setJwtConfiguration(JwtConfiguration): {
    Properties+::: {
      JwtConfiguration:
        if !std.isObject(JwtConfiguration) then (error 'JwtConfiguration must be an object')
        else JwtConfiguration,
    },
  },
  setAuthorizerResultTtlInSeconds(AuthorizerResultTtlInSeconds): {
    Properties+::: {
      AuthorizerResultTtlInSeconds:
        if !std.isNumber(AuthorizerResultTtlInSeconds) then (error 'AuthorizerResultTtlInSeconds must be an number')
        else AuthorizerResultTtlInSeconds,
    },
  },
  setIdentitySource(IdentitySource): {
    Properties+::: {
      IdentitySource:
        if !std.isArray(IdentitySource) then (error 'IdentitySource must be an array')
        else IdentitySource,
    },
  },
  pushIdentitySource(IdentitySource): {
    Properties+::: {
      IdentitySource+: IdentitySource,
    },
  },
  setAuthorizerPayloadFormatVersion(AuthorizerPayloadFormatVersion): {
    Properties+::: {
      AuthorizerPayloadFormatVersion:
        if !std.isString(AuthorizerPayloadFormatVersion) then (error 'AuthorizerPayloadFormatVersion must be a string')
        else if std.isEmpty(AuthorizerPayloadFormatVersion) then (error 'AuthorizerPayloadFormatVersion must be not empty')
        else AuthorizerPayloadFormatVersion,
    },
  },
  setEnableSimpleResponses(EnableSimpleResponses): {
    Properties+::: {
      EnableSimpleResponses:
        if !std.isBoolean(EnableSimpleResponses) then (error 'EnableSimpleResponses must be a boolean') else EnableSimpleResponses,
    },
  },
  setAuthorizerId(AuthorizerId): {
    Properties+::: {
      AuthorizerId:
        if !std.isString(AuthorizerId) then (error 'AuthorizerId must be a string')
        else if std.isEmpty(AuthorizerId) then (error 'AuthorizerId must be not empty')
        else AuthorizerId,
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
