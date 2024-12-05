{
  new(
    ApiId,
    IntegrationId,
    IntegrationResponseKey,
  ): {
    local base = self,
    Properties: {
      ApiId:
        if !std.isString(ApiId) then (error 'ApiId must be a string')
        else if std.isEmpty(ApiId) then (error 'ApiId must be not empty')
        else ApiId,
      IntegrationId:
        if !std.isString(IntegrationId) then (error 'IntegrationId must be a string')
        else if std.isEmpty(IntegrationId) then (error 'IntegrationId must be not empty')
        else IntegrationId,
      IntegrationResponseKey:
        if !std.isString(IntegrationResponseKey) then (error 'IntegrationResponseKey must be a string')
        else if std.isEmpty(IntegrationResponseKey) then (error 'IntegrationResponseKey must be not empty')
        else IntegrationResponseKey,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::ApiGatewayV2::IntegrationResponse',
  },
  setIntegrationResponseId(IntegrationResponseId): {
    Properties+::: {
      IntegrationResponseId:
        if !std.isString(IntegrationResponseId) then (error 'IntegrationResponseId must be a string')
        else if std.isEmpty(IntegrationResponseId) then (error 'IntegrationResponseId must be not empty')
        else IntegrationResponseId,
    },
  },
  setResponseTemplates(ResponseTemplates): {
    Properties+::: {
      ResponseTemplates:
        if !std.isObject(ResponseTemplates) then (error 'ResponseTemplates must be an object')
        else ResponseTemplates,
    },
  },
  setTemplateSelectionExpression(TemplateSelectionExpression): {
    Properties+::: {
      TemplateSelectionExpression:
        if !std.isString(TemplateSelectionExpression) then (error 'TemplateSelectionExpression must be a string')
        else if std.isEmpty(TemplateSelectionExpression) then (error 'TemplateSelectionExpression must be not empty')
        else TemplateSelectionExpression,
    },
  },
  setResponseParameters(ResponseParameters): {
    Properties+::: {
      ResponseParameters:
        if !std.isObject(ResponseParameters) then (error 'ResponseParameters must be an object')
        else ResponseParameters,
    },
  },
  setContentHandlingStrategy(ContentHandlingStrategy): {
    Properties+::: {
      ContentHandlingStrategy:
        if !std.isString(ContentHandlingStrategy) then (error 'ContentHandlingStrategy must be a string')
        else if std.isEmpty(ContentHandlingStrategy) then (error 'ContentHandlingStrategy must be not empty')
        else ContentHandlingStrategy,
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
