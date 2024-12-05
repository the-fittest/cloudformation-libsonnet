{
  new(): {
    local base = self,
    Properties:: {},
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::CloudFormation::HookTypeConfig',
  },
  setTypeArn(TypeArn): {
    Properties+::: {
      TypeArn:
        if !std.isString(TypeArn) then (error 'TypeArn must be a string')
        else if std.isEmpty(TypeArn) then (error 'TypeArn must be not empty')
        else TypeArn,
    },
  },
  setTypeName(TypeName): {
    Properties+::: {
      TypeName:
        if !std.isString(TypeName) then (error 'TypeName must be a string')
        else if std.isEmpty(TypeName) then (error 'TypeName must be not empty')
        else TypeName,
    },
  },
  setConfigurationArn(ConfigurationArn): {
    Properties+::: {
      ConfigurationArn:
        if !std.isString(ConfigurationArn) then (error 'ConfigurationArn must be a string')
        else if std.isEmpty(ConfigurationArn) then (error 'ConfigurationArn must be not empty')
        else ConfigurationArn,
    },
  },
  setConfiguration(Configuration): {
    Properties+::: {
      Configuration:
        if !std.isString(Configuration) then (error 'Configuration must be a string')
        else if std.isEmpty(Configuration) then (error 'Configuration must be not empty')
        else Configuration,
    },
  },
  setConfigurationAlias(ConfigurationAlias): {
    Properties+::: {
      ConfigurationAlias:
        if !std.isString(ConfigurationAlias) then (error 'ConfigurationAlias must be a string')
        else if std.isEmpty(ConfigurationAlias) then (error 'ConfigurationAlias must be not empty')
        else if ConfigurationAlias != 'default' then (error "ConfigurationAlias should be 'default'")
        else ConfigurationAlias,
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
