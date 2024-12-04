{
  // AWS M2 Environment
  Environment: {
    new(
      EngineType,
      InstanceType,
      Name,
    ): {
      local base = self,
      Properties: {
        assert std.isString(EngineType) : 'EngineType must be a string',
        EngineType: EngineType,
        assert std.isString(InstanceType) : 'InstanceType must be a string',
        InstanceType: InstanceType,
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::M2::Environment',
    },
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: {
        Description: Description,
      },
    },
    withEngineVersion(EngineVersion): {
      assert std.isString(EngineVersion) : 'EngineVersion must be a string',
      Properties+::: {
        EngineVersion: EngineVersion,
      },
    },
    withEnvironmentArn(EnvironmentArn): {
      assert std.isString(EnvironmentArn) : 'EnvironmentArn must be a string',
      Properties+::: {
        EnvironmentArn: EnvironmentArn,
      },
    },
    withEnvironmentId(EnvironmentId): {
      assert std.isString(EnvironmentId) : 'EnvironmentId must be a string',
      Properties+::: {
        EnvironmentId: EnvironmentId,
      },
    },
    withHighAvailabilityConfig(HighAvailabilityConfig): {
      assert std.isObject(HighAvailabilityConfig) : 'HighAvailabilityConfig must be a object',
      Properties+::: {
        HighAvailabilityConfig: HighAvailabilityConfig,
      },
    },
    withKmsKeyId(KmsKeyId): {
      assert std.isString(KmsKeyId) : 'KmsKeyId must be a string',
      Properties+::: {
        KmsKeyId: KmsKeyId,
      },
    },
    withPreferredMaintenanceWindow(PreferredMaintenanceWindow): {
      assert std.isString(PreferredMaintenanceWindow) : 'PreferredMaintenanceWindow must be a string',
      Properties+::: {
        PreferredMaintenanceWindow: PreferredMaintenanceWindow,
      },
    },
    withPubliclyAccessible(PubliclyAccessible): {
      assert std.isBoolean(PubliclyAccessible) : 'PubliclyAccessible must be a boolean',
      Properties+::: {
        PubliclyAccessible: PubliclyAccessible,
      },
    },
    withSecurityGroupIds(SecurityGroupIds): {
      Properties+::: {
        SecurityGroupIds: (if std.isArray(SecurityGroupIds) then SecurityGroupIds else [SecurityGroupIds]),
      },
    },
    withSecurityGroupIdsMixin(SecurityGroupIds): {
      Properties+::: {
        SecurityGroupIds+: (if std.isArray(SecurityGroupIds) then SecurityGroupIds else [SecurityGroupIds]),
      },
    },
    withStorageConfigurations(StorageConfigurations): {
      Properties+::: {
        StorageConfigurations: (if std.isArray(StorageConfigurations) then StorageConfigurations else [StorageConfigurations]),
      },
    },
    withStorageConfigurationsMixin(StorageConfigurations): {
      Properties+::: {
        StorageConfigurations+: (if std.isArray(StorageConfigurations) then StorageConfigurations else [StorageConfigurations]),
      },
    },
    withSubnetIds(SubnetIds): {
      Properties+::: {
        SubnetIds: (if std.isArray(SubnetIds) then SubnetIds else [SubnetIds]),
      },
    },
    withSubnetIdsMixin(SubnetIds): {
      Properties+::: {
        SubnetIds+: (if std.isArray(SubnetIds) then SubnetIds else [SubnetIds]),
      },
    },
    withTags(Tags): {
      assert std.isObject(Tags) : 'Tags must be a object',
      Properties+::: {
        Tags: Tags,
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
