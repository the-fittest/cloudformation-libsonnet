{
  new(
    EndpointName,
    Specification,
  ): {
    local base = self,
    Properties: {
      EndpointName:
        if !std.isString(EndpointName) then (error 'EndpointName must be a string')
        else if std.isEmpty(EndpointName) then (error 'EndpointName must be not empty')
        else if std.length(EndpointName) > 63 then error ('EndpointName should have not more than 63 characters')
        else EndpointName,
      Specification:
        if !std.isObject(Specification) then (error 'Specification must be an object')
        else Specification,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::SageMaker::InferenceComponent',
  },
  setInferenceComponentArn(InferenceComponentArn): {
    Properties+::: {
      InferenceComponentArn:
        if !std.isString(InferenceComponentArn) then (error 'InferenceComponentArn must be a string')
        else if std.isEmpty(InferenceComponentArn) then (error 'InferenceComponentArn must be not empty')
        else if std.length(InferenceComponentArn) < 1 then error ('InferenceComponentArn should have at least 1 characters')
        else if std.length(InferenceComponentArn) > 256 then error ('InferenceComponentArn should have not more than 256 characters')
        else InferenceComponentArn,
    },
  },
  setInferenceComponentName(InferenceComponentName): {
    Properties+::: {
      InferenceComponentName:
        if !std.isString(InferenceComponentName) then (error 'InferenceComponentName must be a string')
        else if std.isEmpty(InferenceComponentName) then (error 'InferenceComponentName must be not empty')
        else if std.length(InferenceComponentName) > 63 then error ('InferenceComponentName should have not more than 63 characters')
        else InferenceComponentName,
    },
  },
  setEndpointArn(EndpointArn): {
    Properties+::: {
      EndpointArn:
        if !std.isString(EndpointArn) then (error 'EndpointArn must be a string')
        else if std.isEmpty(EndpointArn) then (error 'EndpointArn must be not empty')
        else if std.length(EndpointArn) < 1 then error ('EndpointArn should have at least 1 characters')
        else if std.length(EndpointArn) > 256 then error ('EndpointArn should have not more than 256 characters')
        else EndpointArn,
    },
  },
  setVariantName(VariantName): {
    Properties+::: {
      VariantName:
        if !std.isString(VariantName) then (error 'VariantName must be a string')
        else if std.isEmpty(VariantName) then (error 'VariantName must be not empty')
        else if std.length(VariantName) > 63 then error ('VariantName should have not more than 63 characters')
        else VariantName,
    },
  },
  setFailureReason(FailureReason): {
    Properties+::: {
      FailureReason:
        if !std.isString(FailureReason) then (error 'FailureReason must be a string')
        else if std.isEmpty(FailureReason) then (error 'FailureReason must be not empty')
        else if std.length(FailureReason) > 63 then error ('FailureReason should have not more than 63 characters')
        else FailureReason,
    },
  },
  setRuntimeConfig(RuntimeConfig): {
    Properties+::: {
      RuntimeConfig:
        if !std.isObject(RuntimeConfig) then (error 'RuntimeConfig must be an object')
        else RuntimeConfig,
    },
  },
  setInferenceComponentStatus(InferenceComponentStatus): {
    Properties+::: {
      InferenceComponentStatus:
        if !std.isString(InferenceComponentStatus) then (error 'InferenceComponentStatus must be a string')
        else if std.isEmpty(InferenceComponentStatus) then (error 'InferenceComponentStatus must be not empty')
        else if InferenceComponentStatus != 'InService' && InferenceComponentStatus != 'Creating' && InferenceComponentStatus != 'Updating' && InferenceComponentStatus != 'Failed' && InferenceComponentStatus != 'Deleting' then (error "InferenceComponentStatus should be 'InService' or 'Creating' or 'Updating' or 'Failed' or 'Deleting'")
        else InferenceComponentStatus,
    },
  },
  setCreationTime(CreationTime): {
    Properties+::: {
      CreationTime:
        if !std.isString(CreationTime) then (error 'CreationTime must be a string')
        else if std.isEmpty(CreationTime) then (error 'CreationTime must be not empty')
        else CreationTime,
    },
  },
  setLastModifiedTime(LastModifiedTime): {
    Properties+::: {
      LastModifiedTime:
        if !std.isString(LastModifiedTime) then (error 'LastModifiedTime must be a string')
        else if std.isEmpty(LastModifiedTime) then (error 'LastModifiedTime must be not empty')
        else LastModifiedTime,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else if std.length(Tags) > 50 then error ('Tags cannot have more than 50 items')
        else Tags,
    },
  },
  setTagsMixin(Tags): {
    Properties+::: {
      Tags+: Tags,
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
