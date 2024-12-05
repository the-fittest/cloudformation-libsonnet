{
  new(
    DeploymentStrategyId,
    ConfigurationProfileId,
    EnvironmentId,
    ConfigurationVersion,
    ApplicationId,
  ): {
    local base = self,
    Properties: {
      DeploymentStrategyId:
        if !std.isString(DeploymentStrategyId) then (error 'DeploymentStrategyId must be a string')
        else if std.isEmpty(DeploymentStrategyId) then (error 'DeploymentStrategyId must be not empty')
        else DeploymentStrategyId,
      ConfigurationProfileId:
        if !std.isString(ConfigurationProfileId) then (error 'ConfigurationProfileId must be a string')
        else if std.isEmpty(ConfigurationProfileId) then (error 'ConfigurationProfileId must be not empty')
        else ConfigurationProfileId,
      EnvironmentId:
        if !std.isString(EnvironmentId) then (error 'EnvironmentId must be a string')
        else if std.isEmpty(EnvironmentId) then (error 'EnvironmentId must be not empty')
        else EnvironmentId,
      ConfigurationVersion:
        if !std.isString(ConfigurationVersion) then (error 'ConfigurationVersion must be a string')
        else if std.isEmpty(ConfigurationVersion) then (error 'ConfigurationVersion must be not empty')
        else ConfigurationVersion,
      ApplicationId:
        if !std.isString(ApplicationId) then (error 'ApplicationId must be a string')
        else if std.isEmpty(ApplicationId) then (error 'ApplicationId must be not empty')
        else ApplicationId,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::AppConfig::Deployment',
  },
  setKmsKeyIdentifier(KmsKeyIdentifier): {
    Properties+::: {
      KmsKeyIdentifier:
        if !std.isString(KmsKeyIdentifier) then (error 'KmsKeyIdentifier must be a string')
        else if std.isEmpty(KmsKeyIdentifier) then (error 'KmsKeyIdentifier must be not empty')
        else KmsKeyIdentifier,
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
  setId(Id): {
    Properties+::: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else Id,
    },
  },
  setDynamicExtensionParameters(DynamicExtensionParameters): {
    Properties+::: {
      DynamicExtensionParameters:
        if !std.isArray(DynamicExtensionParameters) then (error 'DynamicExtensionParameters must be an array')
        else DynamicExtensionParameters,
    },
  },
  setDynamicExtensionParametersMixin(DynamicExtensionParameters): {
    Properties+::: {
      DynamicExtensionParameters+: DynamicExtensionParameters,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
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
