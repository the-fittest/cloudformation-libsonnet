{
  new(
    RouteKey,
    ApiId,
  ): {
    local base = self,
    Properties: {
      assert std.isString(RouteKey) : 'RouteKey must be a string',
      RouteKey: RouteKey,
      assert std.isString(ApiId) : 'ApiId must be a string',
      ApiId: ApiId,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::ApiGatewayV2::Route',
  },
  withRouteId(RouteId): {
    assert std.isString(RouteId) : 'RouteId must be a string',
    Properties+::: {
      RouteId: RouteId,
    },
  },
  withRouteResponseSelectionExpression(RouteResponseSelectionExpression): {
    assert std.isString(RouteResponseSelectionExpression) : 'RouteResponseSelectionExpression must be a string',
    Properties+::: {
      RouteResponseSelectionExpression: RouteResponseSelectionExpression,
    },
  },
  withRequestModels(RequestModels): {
    assert std.isObject(RequestModels) : 'RequestModels must be a object',
    Properties+::: {
      RequestModels: RequestModels,
    },
  },
  withOperationName(OperationName): {
    assert std.isString(OperationName) : 'OperationName must be a string',
    Properties+::: {
      OperationName: OperationName,
    },
  },
  withAuthorizationScopes(AuthorizationScopes): {
    Properties+::: {
      AuthorizationScopes: (if std.isArray(AuthorizationScopes) then AuthorizationScopes else [AuthorizationScopes]),
    },
  },
  withAuthorizationScopesMixin(AuthorizationScopes): {
    Properties+::: {
      AuthorizationScopes+: (if std.isArray(AuthorizationScopes) then AuthorizationScopes else [AuthorizationScopes]),
    },
  },
  withApiKeyRequired(ApiKeyRequired): {
    assert std.isBoolean(ApiKeyRequired) : 'ApiKeyRequired must be a boolean',
    Properties+::: {
      ApiKeyRequired: ApiKeyRequired,
    },
  },
  withAuthorizationType(AuthorizationType): {
    assert std.isString(AuthorizationType) : 'AuthorizationType must be a string',
    Properties+::: {
      AuthorizationType: AuthorizationType,
    },
  },
  withModelSelectionExpression(ModelSelectionExpression): {
    assert std.isString(ModelSelectionExpression) : 'ModelSelectionExpression must be a string',
    Properties+::: {
      ModelSelectionExpression: ModelSelectionExpression,
    },
  },
  withRequestParameters(RequestParameters): {
    assert std.isObject(RequestParameters) : 'RequestParameters must be a object',
    Properties+::: {
      RequestParameters: RequestParameters,
    },
  },
  withTarget(Target): {
    assert std.isString(Target) : 'Target must be a string',
    Properties+::: {
      Target: Target,
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
