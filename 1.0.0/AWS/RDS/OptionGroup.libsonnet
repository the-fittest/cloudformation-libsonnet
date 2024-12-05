{
  new(
    EngineName,
    MajorEngineVersion,
    OptionGroupDescription,
  ): {
    local base = self,
    Properties: {
      EngineName:
        if !std.isString(EngineName) then (error 'EngineName must be a string')
        else if std.isEmpty(EngineName) then (error 'EngineName must be not empty')
        else EngineName,
      MajorEngineVersion:
        if !std.isString(MajorEngineVersion) then (error 'MajorEngineVersion must be a string')
        else if std.isEmpty(MajorEngineVersion) then (error 'MajorEngineVersion must be not empty')
        else MajorEngineVersion,
      OptionGroupDescription:
        if !std.isString(OptionGroupDescription) then (error 'OptionGroupDescription must be a string')
        else if std.isEmpty(OptionGroupDescription) then (error 'OptionGroupDescription must be not empty')
        else OptionGroupDescription,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::RDS::OptionGroup',
  },
  setOptionGroupName(OptionGroupName): {
    Properties+::: {
      OptionGroupName:
        if !std.isString(OptionGroupName) then (error 'OptionGroupName must be a string')
        else if std.isEmpty(OptionGroupName) then (error 'OptionGroupName must be not empty')
        else OptionGroupName,
    },
  },
  setOptionConfigurations(OptionConfigurations): {
    Properties+::: {
      OptionConfigurations:
        if !std.isArray(OptionConfigurations) then (error 'OptionConfigurations must be an array')
        else OptionConfigurations,
    },
  },
  setOptionConfigurationsMixin(OptionConfigurations): {
    Properties+::: {
      OptionConfigurations+: OptionConfigurations,
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
