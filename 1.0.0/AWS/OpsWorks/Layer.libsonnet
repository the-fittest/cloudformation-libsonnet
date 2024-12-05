{
  new(
    EnableAutoHealing,
    Name,
    Type,
    AutoAssignElasticIps,
    Shortname,
    AutoAssignPublicIps,
    StackId,
  ): {
    local base = self,
    Properties: {
      EnableAutoHealing:
        if !std.isBoolean(EnableAutoHealing) then (error 'EnableAutoHealing must be a boolean') else EnableAutoHealing,
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else Name,
      Type:
        if !std.isString(Type) then (error 'Type must be a string')
        else if std.isEmpty(Type) then (error 'Type must be not empty')
        else Type,
      AutoAssignElasticIps:
        if !std.isBoolean(AutoAssignElasticIps) then (error 'AutoAssignElasticIps must be a boolean') else AutoAssignElasticIps,
      Shortname:
        if !std.isString(Shortname) then (error 'Shortname must be a string')
        else if std.isEmpty(Shortname) then (error 'Shortname must be not empty')
        else Shortname,
      AutoAssignPublicIps:
        if !std.isBoolean(AutoAssignPublicIps) then (error 'AutoAssignPublicIps must be a boolean') else AutoAssignPublicIps,
      StackId:
        if !std.isString(StackId) then (error 'StackId must be a string')
        else if std.isEmpty(StackId) then (error 'StackId must be not empty')
        else StackId,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::OpsWorks::Layer',
  },
  setId(Id): {
    Properties+::: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else Id,
    },
  },
  setAttributes(Attributes): {
    Properties+::: {
      Attributes:
        if !std.isObject(Attributes) then (error 'Attributes must be an object')
        else Attributes,
    },
  },
  setCustomInstanceProfileArn(CustomInstanceProfileArn): {
    Properties+::: {
      CustomInstanceProfileArn:
        if !std.isString(CustomInstanceProfileArn) then (error 'CustomInstanceProfileArn must be a string')
        else if std.isEmpty(CustomInstanceProfileArn) then (error 'CustomInstanceProfileArn must be not empty')
        else CustomInstanceProfileArn,
    },
  },
  setCustomJson(CustomJson): {
    Properties+::: {
      CustomJson:
        if !std.isObject(CustomJson) then (error 'CustomJson must be an object')
        else CustomJson,
    },
  },
  setCustomRecipes(CustomRecipes): {
    Properties+::: {
      CustomRecipes:
        if !std.isObject(CustomRecipes) then (error 'CustomRecipes must be an object')
        else CustomRecipes,
    },
  },
  setCustomSecurityGroupIds(CustomSecurityGroupIds): {
    Properties+::: {
      CustomSecurityGroupIds:
        if !std.isArray(CustomSecurityGroupIds) then (error 'CustomSecurityGroupIds must be an array')
        else CustomSecurityGroupIds,
    },
  },
  setCustomSecurityGroupIdsMixin(CustomSecurityGroupIds): {
    Properties+::: {
      CustomSecurityGroupIds+: CustomSecurityGroupIds,
    },
  },
  setInstallUpdatesOnBoot(InstallUpdatesOnBoot): {
    Properties+::: {
      InstallUpdatesOnBoot:
        if !std.isBoolean(InstallUpdatesOnBoot) then (error 'InstallUpdatesOnBoot must be a boolean') else InstallUpdatesOnBoot,
    },
  },
  setLifecycleEventConfiguration(LifecycleEventConfiguration): {
    Properties+::: {
      LifecycleEventConfiguration:
        if !std.isObject(LifecycleEventConfiguration) then (error 'LifecycleEventConfiguration must be an object')
        else LifecycleEventConfiguration,
    },
  },
  setLoadBasedAutoScaling(LoadBasedAutoScaling): {
    Properties+::: {
      LoadBasedAutoScaling:
        if !std.isObject(LoadBasedAutoScaling) then (error 'LoadBasedAutoScaling must be an object')
        else LoadBasedAutoScaling,
    },
  },
  setPackages(Packages): {
    Properties+::: {
      Packages:
        if !std.isArray(Packages) then (error 'Packages must be an array')
        else Packages,
    },
  },
  setPackagesMixin(Packages): {
    Properties+::: {
      Packages+: Packages,
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
  setUseEbsOptimizedInstances(UseEbsOptimizedInstances): {
    Properties+::: {
      UseEbsOptimizedInstances:
        if !std.isBoolean(UseEbsOptimizedInstances) then (error 'UseEbsOptimizedInstances must be a boolean') else UseEbsOptimizedInstances,
    },
  },
  setVolumeConfigurations(VolumeConfigurations): {
    Properties+::: {
      VolumeConfigurations:
        if !std.isArray(VolumeConfigurations) then (error 'VolumeConfigurations must be an array')
        else VolumeConfigurations,
    },
  },
  setVolumeConfigurationsMixin(VolumeConfigurations): {
    Properties+::: {
      VolumeConfigurations+: VolumeConfigurations,
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
