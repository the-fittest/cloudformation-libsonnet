{
  new(
    Category,
    InputArtifactDetails,
    OutputArtifactDetails,
    Provider,
    Version,
  ): {
    local base = self,
    Properties: {
      Category:
        if !std.isString(Category) then (error 'Category must be a string')
        else if std.isEmpty(Category) then (error 'Category must be not empty')
        else Category,
      InputArtifactDetails:
        if !std.isObject(InputArtifactDetails) then (error 'InputArtifactDetails must be an object')
        else if !std.objectHas(InputArtifactDetails, 'MaximumCount') then (error ' have attribute MaximumCount')
        else if !std.objectHas(InputArtifactDetails, 'MinimumCount') then (error ' have attribute MinimumCount')
        else InputArtifactDetails,
      OutputArtifactDetails:
        if !std.isObject(OutputArtifactDetails) then (error 'OutputArtifactDetails must be an object')
        else if !std.objectHas(OutputArtifactDetails, 'MaximumCount') then (error ' have attribute MaximumCount')
        else if !std.objectHas(OutputArtifactDetails, 'MinimumCount') then (error ' have attribute MinimumCount')
        else OutputArtifactDetails,
      Provider:
        if !std.isString(Provider) then (error 'Provider must be a string')
        else if std.isEmpty(Provider) then (error 'Provider must be not empty')
        else Provider,
      Version:
        if !std.isString(Version) then (error 'Version must be a string')
        else if std.isEmpty(Version) then (error 'Version must be not empty')
        else Version,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::CodePipeline::CustomActionType',
  },
  setConfigurationProperties(ConfigurationProperties): {
    Properties+::: {
      ConfigurationProperties:
        if !std.isArray(ConfigurationProperties) then (error 'ConfigurationProperties must be an array')
        else ConfigurationProperties,
    },
  },
  setConfigurationPropertiesMixin(ConfigurationProperties): {
    Properties+::: {
      ConfigurationProperties+: ConfigurationProperties,
    },
  },
  setSettings(Settings): {
    Properties+::: {
      Settings:
        if !std.isObject(Settings) then (error 'Settings must be an object')
        else Settings,
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
  setId(Id): {
    Properties+::: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else Id,
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
