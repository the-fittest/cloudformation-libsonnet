{
  new(
    EndpointName,
    Specification,
  ): {
    local base = self,
    Properties: {
      assert std.isString(EndpointName) : 'EndpointName must be a string',
      EndpointName: EndpointName,
      assert std.isObject(Specification) : 'Specification must be an object',
      Specification: Specification,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::SageMaker::InferenceComponent',
  },
  withInferenceComponentArn(InferenceComponentArn): {
    assert std.isString(InferenceComponentArn) : 'InferenceComponentArn must be a string',
    Properties+::: {
      InferenceComponentArn: InferenceComponentArn,
    },
  },
  withInferenceComponentName(InferenceComponentName): {
    assert std.isString(InferenceComponentName) : 'InferenceComponentName must be a string',
    Properties+::: {
      InferenceComponentName: InferenceComponentName,
    },
  },
  withEndpointArn(EndpointArn): {
    assert std.isString(EndpointArn) : 'EndpointArn must be a string',
    Properties+::: {
      EndpointArn: EndpointArn,
    },
  },
  withVariantName(VariantName): {
    assert std.isString(VariantName) : 'VariantName must be a string',
    Properties+::: {
      VariantName: VariantName,
    },
  },
  withFailureReason(FailureReason): {
    assert std.isString(FailureReason) : 'FailureReason must be a string',
    Properties+::: {
      FailureReason: FailureReason,
    },
  },
  withRuntimeConfig(RuntimeConfig): {
    assert std.isObject(RuntimeConfig) : 'RuntimeConfig must be a object',
    Properties+::: {
      RuntimeConfig: RuntimeConfig,
    },
  },
  withInferenceComponentStatus(InferenceComponentStatus): {
    assert std.isString(InferenceComponentStatus) : 'InferenceComponentStatus must be a string',
    Properties+::: {
      InferenceComponentStatus: InferenceComponentStatus,
    },
  },
  withCreationTime(CreationTime): {
    assert std.isString(CreationTime) : 'CreationTime must be a string',
    Properties+::: {
      CreationTime: CreationTime,
    },
  },
  withLastModifiedTime(LastModifiedTime): {
    assert std.isString(LastModifiedTime) : 'LastModifiedTime must be a string',
    Properties+::: {
      LastModifiedTime: LastModifiedTime,
    },
  },
  withTags(Tags): {
    Properties+::: {
      Tags: (if std.isArray(Tags) then Tags else [Tags]),
    },
  },
  withTagsMixin(Tags): {
    Properties+::: {
      Tags+: (if std.isArray(Tags) then Tags else [Tags]),
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
