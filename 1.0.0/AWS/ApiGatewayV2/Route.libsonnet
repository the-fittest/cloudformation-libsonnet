{
  new(
    RouteKey,
    ApiId,
  ): {
    local base = self,
    Properties: {
      RouteKey:
        if !std.isString(RouteKey) then (error 'RouteKey must be a string')
        else if std.isEmpty(RouteKey) then (error 'RouteKey must be not empty')
        else RouteKey,
      ApiId:
        if !std.isString(ApiId) then (error 'ApiId must be a string')
        else if std.isEmpty(ApiId) then (error 'ApiId must be not empty')
        else ApiId,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::ApiGatewayV2::Route',
  },
  setRouteId(RouteId): {
    Properties+::: {
      RouteId:
        if !std.isString(RouteId) then (error 'RouteId must be a string')
        else if std.isEmpty(RouteId) then (error 'RouteId must be not empty')
        else RouteId,
    },
  },
  setRouteResponseSelectionExpression(RouteResponseSelectionExpression): {
    Properties+::: {
      RouteResponseSelectionExpression:
        if !std.isString(RouteResponseSelectionExpression) then (error 'RouteResponseSelectionExpression must be a string')
        else if std.isEmpty(RouteResponseSelectionExpression) then (error 'RouteResponseSelectionExpression must be not empty')
        else RouteResponseSelectionExpression,
    },
  },
  setRequestModels(RequestModels): {
    Properties+::: {
      RequestModels:
        if !std.isObject(RequestModels) then (error 'RequestModels must be an object')
        else RequestModels,
    },
  },
  setOperationName(OperationName): {
    Properties+::: {
      OperationName:
        if !std.isString(OperationName) then (error 'OperationName must be a string')
        else if std.isEmpty(OperationName) then (error 'OperationName must be not empty')
        else OperationName,
    },
  },
  setAuthorizationScopes(AuthorizationScopes): {
    Properties+::: {
      AuthorizationScopes:
        if !std.isArray(AuthorizationScopes) then (error 'AuthorizationScopes must be an array')
        else AuthorizationScopes,
    },
  },
  setAuthorizationScopesMixin(AuthorizationScopes): {
    Properties+::: {
      AuthorizationScopes+: AuthorizationScopes,
    },
  },
  setApiKeyRequired(ApiKeyRequired): {
    Properties+::: {
      ApiKeyRequired:
        if !std.isBoolean(ApiKeyRequired) then (error 'ApiKeyRequired must be a boolean') else ApiKeyRequired,
    },
  },
  setAuthorizationType(AuthorizationType): {
    Properties+::: {
      AuthorizationType:
        if !std.isString(AuthorizationType) then (error 'AuthorizationType must be a string')
        else if std.isEmpty(AuthorizationType) then (error 'AuthorizationType must be not empty')
        else AuthorizationType,
    },
  },
  setModelSelectionExpression(ModelSelectionExpression): {
    Properties+::: {
      ModelSelectionExpression:
        if !std.isString(ModelSelectionExpression) then (error 'ModelSelectionExpression must be a string')
        else if std.isEmpty(ModelSelectionExpression) then (error 'ModelSelectionExpression must be not empty')
        else ModelSelectionExpression,
    },
  },
  setRequestParameters(RequestParameters): {
    Properties+::: {
      RequestParameters:
        if !std.isObject(RequestParameters) then (error 'RequestParameters must be an object')
        else RequestParameters,
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
