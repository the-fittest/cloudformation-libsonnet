{
  new(
    RouteResponseKey,
    RouteId,
    ApiId,
  ): {
    local base = self,
    Properties: {
      RouteResponseKey:
        if !std.isString(RouteResponseKey) then (error 'RouteResponseKey must be a string')
        else if std.isEmpty(RouteResponseKey) then (error 'RouteResponseKey must be not empty')
        else RouteResponseKey,
      RouteId:
        if !std.isString(RouteId) then (error 'RouteId must be a string')
        else if std.isEmpty(RouteId) then (error 'RouteId must be not empty')
        else RouteId,
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
    Type: 'AWS::ApiGatewayV2::RouteResponse',
  },
  setResponseParameters(ResponseParameters): {
    Properties+::: {
      ResponseParameters: ResponseParameters,
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
  setResponseModels(ResponseModels): {
    Properties+::: {
      ResponseModels:
        if !std.isObject(ResponseModels) then (error 'ResponseModels must be an object')
        else ResponseModels,
    },
  },
  setRouteResponseId(RouteResponseId): {
    Properties+::: {
      RouteResponseId:
        if !std.isString(RouteResponseId) then (error 'RouteResponseId must be a string')
        else if std.isEmpty(RouteResponseId) then (error 'RouteResponseId must be not empty')
        else RouteResponseId,
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
