{
  new(
    ReplicationInstanceClass,
  ): {
    local base = self,
    Properties: {
      assert std.isString(ReplicationInstanceClass) : 'ReplicationInstanceClass must be a string',
      ReplicationInstanceClass: ReplicationInstanceClass,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::DMS::ReplicationInstance',
  },
  withReplicationInstanceIdentifier(ReplicationInstanceIdentifier): {
    assert std.isString(ReplicationInstanceIdentifier) : 'ReplicationInstanceIdentifier must be a string',
    Properties+::: {
      ReplicationInstanceIdentifier: ReplicationInstanceIdentifier,
    },
  },
  withEngineVersion(EngineVersion): {
    assert std.isString(EngineVersion) : 'EngineVersion must be a string',
    Properties+::: {
      EngineVersion: EngineVersion,
    },
  },
  withKmsKeyId(KmsKeyId): {
    assert std.isString(KmsKeyId) : 'KmsKeyId must be a string',
    Properties+::: {
      KmsKeyId: KmsKeyId,
    },
  },
  withAvailabilityZone(AvailabilityZone): {
    assert std.isString(AvailabilityZone) : 'AvailabilityZone must be a string',
    Properties+::: {
      AvailabilityZone: AvailabilityZone,
    },
  },
  withPreferredMaintenanceWindow(PreferredMaintenanceWindow): {
    assert std.isString(PreferredMaintenanceWindow) : 'PreferredMaintenanceWindow must be a string',
    Properties+::: {
      PreferredMaintenanceWindow: PreferredMaintenanceWindow,
    },
  },
  withAutoMinorVersionUpgrade(AutoMinorVersionUpgrade): {
    assert std.isBoolean(AutoMinorVersionUpgrade) : 'AutoMinorVersionUpgrade must be a boolean',
    Properties+::: {
      AutoMinorVersionUpgrade: AutoMinorVersionUpgrade,
    },
  },
  withReplicationSubnetGroupIdentifier(ReplicationSubnetGroupIdentifier): {
    assert std.isString(ReplicationSubnetGroupIdentifier) : 'ReplicationSubnetGroupIdentifier must be a string',
    Properties+::: {
      ReplicationSubnetGroupIdentifier: ReplicationSubnetGroupIdentifier,
    },
  },
  withReplicationInstancePrivateIpAddresses(ReplicationInstancePrivateIpAddresses): {
    assert std.isString(ReplicationInstancePrivateIpAddresses) : 'ReplicationInstancePrivateIpAddresses must be a string',
    Properties+::: {
      ReplicationInstancePrivateIpAddresses: ReplicationInstancePrivateIpAddresses,
    },
  },
  withAllocatedStorage(AllocatedStorage): {
    assert std.isNumber(AllocatedStorage) : 'AllocatedStorage must be a number',
    Properties+::: {
      AllocatedStorage: AllocatedStorage,
    },
  },
  withResourceIdentifier(ResourceIdentifier): {
    assert std.isString(ResourceIdentifier) : 'ResourceIdentifier must be a string',
    Properties+::: {
      ResourceIdentifier: ResourceIdentifier,
    },
  },
  withVpcSecurityGroupIds(VpcSecurityGroupIds): {
    Properties+::: {
      VpcSecurityGroupIds: (if std.isArray(VpcSecurityGroupIds) then VpcSecurityGroupIds else [VpcSecurityGroupIds]),
    },
  },
  withVpcSecurityGroupIdsMixin(VpcSecurityGroupIds): {
    Properties+::: {
      VpcSecurityGroupIds+: (if std.isArray(VpcSecurityGroupIds) then VpcSecurityGroupIds else [VpcSecurityGroupIds]),
    },
  },
  withNetworkType(NetworkType): {
    assert std.isString(NetworkType) : 'NetworkType must be a string',
    Properties+::: {
      NetworkType: NetworkType,
    },
  },
  withAllowMajorVersionUpgrade(AllowMajorVersionUpgrade): {
    assert std.isBoolean(AllowMajorVersionUpgrade) : 'AllowMajorVersionUpgrade must be a boolean',
    Properties+::: {
      AllowMajorVersionUpgrade: AllowMajorVersionUpgrade,
    },
  },
  withPubliclyAccessible(PubliclyAccessible): {
    assert std.isBoolean(PubliclyAccessible) : 'PubliclyAccessible must be a boolean',
    Properties+::: {
      PubliclyAccessible: PubliclyAccessible,
    },
  },
  withId(Id): {
    assert std.isString(Id) : 'Id must be a string',
    Properties+::: {
      Id: Id,
    },
  },
  withMultiAZ(MultiAZ): {
    assert std.isBoolean(MultiAZ) : 'MultiAZ must be a boolean',
    Properties+::: {
      MultiAZ: MultiAZ,
    },
  },
  withReplicationInstancePublicIpAddresses(ReplicationInstancePublicIpAddresses): {
    assert std.isString(ReplicationInstancePublicIpAddresses) : 'ReplicationInstancePublicIpAddresses must be a string',
    Properties+::: {
      ReplicationInstancePublicIpAddresses: ReplicationInstancePublicIpAddresses,
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
