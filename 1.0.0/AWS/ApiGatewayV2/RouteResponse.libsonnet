{
  new(
    RouteResponseKey,
    RouteId,
    ApiId,
  ): {
    local base = self,
    Properties: {
      assert std.isString(RouteResponseKey) : 'RouteResponseKey must be a string',
      RouteResponseKey: RouteResponseKey,
      assert std.isString(RouteId) : 'RouteId must be a string',
      RouteId: RouteId,
      assert std.isString(ApiId) : 'ApiId must be a string',
      ApiId: ApiId,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::ApiGatewayV2::RouteResponse',
  },
  withResponseParameters(ResponseParameters): {
    Properties+::: {
      ResponseParameters: ResponseParameters,
    },
  },
  withModelSelectionExpression(ModelSelectionExpression): {
    assert std.isString(ModelSelectionExpression) : 'ModelSelectionExpression must be a string',
    Properties+::: {
      ModelSelectionExpression: ModelSelectionExpression,
    },
  },
  withResponseModels(ResponseModels): {
    assert std.isObject(ResponseModels) : 'ResponseModels must be a object',
    Properties+::: {
      ResponseModels: ResponseModels,
    },
  },
  withRouteResponseId(RouteResponseId): {
    assert std.isString(RouteResponseId) : 'RouteResponseId must be a string',
    Properties+::: {
      RouteResponseId: RouteResponseId,
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
