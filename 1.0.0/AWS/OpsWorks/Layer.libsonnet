{
  // AWS OpsWorks Layer
  Layer: {
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
        assert std.isBoolean(EnableAutoHealing) : 'EnableAutoHealing must be a boolean',
        EnableAutoHealing: EnableAutoHealing,
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isString(Type) : 'Type must be a string',
        Type: Type,
        assert std.isBoolean(AutoAssignElasticIps) : 'AutoAssignElasticIps must be a boolean',
        AutoAssignElasticIps: AutoAssignElasticIps,
        assert std.isString(Shortname) : 'Shortname must be a string',
        Shortname: Shortname,
        assert std.isBoolean(AutoAssignPublicIps) : 'AutoAssignPublicIps must be a boolean',
        AutoAssignPublicIps: AutoAssignPublicIps,
        assert std.isString(StackId) : 'StackId must be a string',
        StackId: StackId,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::OpsWorks::Layer',
    },
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: {
        Id: Id,
      },
    },
    withAttributes(Attributes): {
      assert std.isObject(Attributes) : 'Attributes must be a object',
      Properties+::: {
        Attributes: Attributes,
      },
    },
    withCustomInstanceProfileArn(CustomInstanceProfileArn): {
      assert std.isString(CustomInstanceProfileArn) : 'CustomInstanceProfileArn must be a string',
      Properties+::: {
        CustomInstanceProfileArn: CustomInstanceProfileArn,
      },
    },
    withCustomJson(CustomJson): {
      assert std.isObject(CustomJson) : 'CustomJson must be a object',
      Properties+::: {
        CustomJson: CustomJson,
      },
    },
    withCustomRecipes(CustomRecipes): {
      assert std.isObject(CustomRecipes) : 'CustomRecipes must be a object',
      Properties+::: {
        CustomRecipes: CustomRecipes,
      },
    },
    withCustomSecurityGroupIds(CustomSecurityGroupIds): {
      Properties+::: {
        CustomSecurityGroupIds: (if std.isArray(CustomSecurityGroupIds) then CustomSecurityGroupIds else [CustomSecurityGroupIds]),
      },
    },
    withCustomSecurityGroupIdsMixin(CustomSecurityGroupIds): {
      Properties+::: {
        CustomSecurityGroupIds+: (if std.isArray(CustomSecurityGroupIds) then CustomSecurityGroupIds else [CustomSecurityGroupIds]),
      },
    },
    withInstallUpdatesOnBoot(InstallUpdatesOnBoot): {
      assert std.isBoolean(InstallUpdatesOnBoot) : 'InstallUpdatesOnBoot must be a boolean',
      Properties+::: {
        InstallUpdatesOnBoot: InstallUpdatesOnBoot,
      },
    },
    withLifecycleEventConfiguration(LifecycleEventConfiguration): {
      assert std.isObject(LifecycleEventConfiguration) : 'LifecycleEventConfiguration must be a object',
      Properties+::: {
        LifecycleEventConfiguration: LifecycleEventConfiguration,
      },
    },
    withLoadBasedAutoScaling(LoadBasedAutoScaling): {
      assert std.isObject(LoadBasedAutoScaling) : 'LoadBasedAutoScaling must be a object',
      Properties+::: {
        LoadBasedAutoScaling: LoadBasedAutoScaling,
      },
    },
    withPackages(Packages): {
      Properties+::: {
        Packages: (if std.isArray(Packages) then Packages else [Packages]),
      },
    },
    withPackagesMixin(Packages): {
      Properties+::: {
        Packages+: (if std.isArray(Packages) then Packages else [Packages]),
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
    withUseEbsOptimizedInstances(UseEbsOptimizedInstances): {
      assert std.isBoolean(UseEbsOptimizedInstances) : 'UseEbsOptimizedInstances must be a boolean',
      Properties+::: {
        UseEbsOptimizedInstances: UseEbsOptimizedInstances,
      },
    },
    withVolumeConfigurations(VolumeConfigurations): {
      Properties+::: {
        VolumeConfigurations: (if std.isArray(VolumeConfigurations) then VolumeConfigurations else [VolumeConfigurations]),
      },
    },
    withVolumeConfigurationsMixin(VolumeConfigurations): {
      Properties+::: {
        VolumeConfigurations+: (if std.isArray(VolumeConfigurations) then VolumeConfigurations else [VolumeConfigurations]),
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
  },
}
