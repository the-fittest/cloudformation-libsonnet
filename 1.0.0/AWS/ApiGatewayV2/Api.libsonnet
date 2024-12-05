{
  new(): {
    local base = self,
    Properties:: {},
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::ApiGatewayV2::Api',
  },
  setRouteSelectionExpression(RouteSelectionExpression): {
    Properties+::: {
      RouteSelectionExpression:
        if !std.isString(RouteSelectionExpression) then (error 'RouteSelectionExpression must be a string')
        else if std.isEmpty(RouteSelectionExpression) then (error 'RouteSelectionExpression must be not empty')
        else RouteSelectionExpression,
    },
  },
  setBodyS3Location(BodyS3Location): {
    Properties+::: {
      BodyS3Location:
        if !std.isObject(BodyS3Location) then (error 'BodyS3Location must be an object')
        else BodyS3Location,
    },
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else Description,
    },
  },
  setApiEndpoint(ApiEndpoint): {
    Properties+::: {
      ApiEndpoint:
        if !std.isString(ApiEndpoint) then (error 'ApiEndpoint must be a string')
        else if std.isEmpty(ApiEndpoint) then (error 'ApiEndpoint must be not empty')
        else ApiEndpoint,
    },
  },
  setBasePath(BasePath): {
    Properties+::: {
      BasePath:
        if !std.isString(BasePath) then (error 'BasePath must be a string')
        else if std.isEmpty(BasePath) then (error 'BasePath must be not empty')
        else BasePath,
    },
  },
  setFailOnWarnings(FailOnWarnings): {
    Properties+::: {
      FailOnWarnings:
        if !std.isBoolean(FailOnWarnings) then (error 'FailOnWarnings must be a boolean') else FailOnWarnings,
    },
  },
  setDisableExecuteApiEndpoint(DisableExecuteApiEndpoint): {
    Properties+::: {
      DisableExecuteApiEndpoint:
        if !std.isBoolean(DisableExecuteApiEndpoint) then (error 'DisableExecuteApiEndpoint must be a boolean') else DisableExecuteApiEndpoint,
    },
  },
  setDisableSchemaValidation(DisableSchemaValidation): {
    Properties+::: {
      DisableSchemaValidation:
        if !std.isBoolean(DisableSchemaValidation) then (error 'DisableSchemaValidation must be a boolean') else DisableSchemaValidation,
    },
  },
  setName(Name): {
    Properties+::: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else Name,
    },
  },
  setTarget(Target): {
    Properties+::: {
      Target:
        if !std.isString(Target) then (error 'Target must be a string')
        else if std.isEmpty(Target) then (error 'Target must be not empty')
        else Target,
    },
  },
  setCredentialsArn(CredentialsArn): {
    Properties+::: {
      CredentialsArn:
        if !std.isString(CredentialsArn) then (error 'CredentialsArn must be a string')
        else if std.isEmpty(CredentialsArn) then (error 'CredentialsArn must be not empty')
        else CredentialsArn,
    },
  },
  setCorsConfiguration(CorsConfiguration): {
    Properties+::: {
      CorsConfiguration:
        if !std.isObject(CorsConfiguration) then (error 'CorsConfiguration must be an object')
        else CorsConfiguration,
    },
  },
  setVersion(Version): {
    Properties+::: {
      Version:
        if !std.isString(Version) then (error 'Version must be a string')
        else if std.isEmpty(Version) then (error 'Version must be not empty')
        else Version,
    },
  },
  setProtocolType(ProtocolType): {
    Properties+::: {
      ProtocolType:
        if !std.isString(ProtocolType) then (error 'ProtocolType must be a string')
        else if std.isEmpty(ProtocolType) then (error 'ProtocolType must be not empty')
        else ProtocolType,
    },
  },
  setRouteKey(RouteKey): {
    Properties+::: {
      RouteKey:
        if !std.isString(RouteKey) then (error 'RouteKey must be a string')
        else if std.isEmpty(RouteKey) then (error 'RouteKey must be not empty')
        else RouteKey,
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
  setBody(Body): {
    Properties+::: {
      Body:
        if !std.isObject(Body) then (error 'Body must be an object')
        else Body,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isObject(Tags) then (error 'Tags must be an object')
        else Tags,
    },
  },
  setApiKeySelectionExpression(ApiKeySelectionExpression): {
    Properties+::: {
      ApiKeySelectionExpression:
        if !std.isString(ApiKeySelectionExpression) then (error 'ApiKeySelectionExpression must be a string')
        else if std.isEmpty(ApiKeySelectionExpression) then (error 'ApiKeySelectionExpression must be not empty')
        else ApiKeySelectionExpression,
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
