{
  new(
    ApiId,
    IntegrationId,
    IntegrationResponseKey,
  ): {
    local base = self,
    Properties: {
      assert std.isString(ApiId) : 'ApiId must be a string',
      ApiId: ApiId,
      assert std.isString(IntegrationId) : 'IntegrationId must be a string',
      IntegrationId: IntegrationId,
      assert std.isString(IntegrationResponseKey) : 'IntegrationResponseKey must be a string',
      IntegrationResponseKey: IntegrationResponseKey,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::ApiGatewayV2::IntegrationResponse',
  },
  withIntegrationResponseId(IntegrationResponseId): {
    assert std.isString(IntegrationResponseId) : 'IntegrationResponseId must be a string',
    Properties+::: {
      IntegrationResponseId: IntegrationResponseId,
    },
  },
  withResponseTemplates(ResponseTemplates): {
    assert std.isObject(ResponseTemplates) : 'ResponseTemplates must be a object',
    Properties+::: {
      ResponseTemplates: ResponseTemplates,
    },
  },
  withTemplateSelectionExpression(TemplateSelectionExpression): {
    assert std.isString(TemplateSelectionExpression) : 'TemplateSelectionExpression must be a string',
    Properties+::: {
      TemplateSelectionExpression: TemplateSelectionExpression,
    },
  },
  withResponseParameters(ResponseParameters): {
    assert std.isObject(ResponseParameters) : 'ResponseParameters must be a object',
    Properties+::: {
      ResponseParameters: ResponseParameters,
    },
  },
  withContentHandlingStrategy(ContentHandlingStrategy): {
    assert std.isString(ContentHandlingStrategy) : 'ContentHandlingStrategy must be a string',
    Properties+::: {
      ContentHandlingStrategy: ContentHandlingStrategy,
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
