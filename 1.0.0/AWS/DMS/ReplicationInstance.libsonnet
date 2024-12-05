{
  new(
    ReplicationInstanceClass,
  ): {
    local base = self,
    Properties: {
      ReplicationInstanceClass:
        if !std.isString(ReplicationInstanceClass) then (error 'ReplicationInstanceClass must be a string')
        else if std.isEmpty(ReplicationInstanceClass) then (error 'ReplicationInstanceClass must be not empty')
        else ReplicationInstanceClass,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::DMS::ReplicationInstance',
  },
  setReplicationInstanceIdentifier(ReplicationInstanceIdentifier): {
    Properties+::: {
      ReplicationInstanceIdentifier:
        if !std.isString(ReplicationInstanceIdentifier) then (error 'ReplicationInstanceIdentifier must be a string')
        else if std.isEmpty(ReplicationInstanceIdentifier) then (error 'ReplicationInstanceIdentifier must be not empty')
        else ReplicationInstanceIdentifier,
    },
  },
  setEngineVersion(EngineVersion): {
    Properties+::: {
      EngineVersion:
        if !std.isString(EngineVersion) then (error 'EngineVersion must be a string')
        else if std.isEmpty(EngineVersion) then (error 'EngineVersion must be not empty')
        else EngineVersion,
    },
  },
  setKmsKeyId(KmsKeyId): {
    Properties+::: {
      KmsKeyId:
        if !std.isString(KmsKeyId) then (error 'KmsKeyId must be a string')
        else if std.isEmpty(KmsKeyId) then (error 'KmsKeyId must be not empty')
        else KmsKeyId,
    },
  },
  setAvailabilityZone(AvailabilityZone): {
    Properties+::: {
      AvailabilityZone:
        if !std.isString(AvailabilityZone) then (error 'AvailabilityZone must be a string')
        else if std.isEmpty(AvailabilityZone) then (error 'AvailabilityZone must be not empty')
        else AvailabilityZone,
    },
  },
  setPreferredMaintenanceWindow(PreferredMaintenanceWindow): {
    Properties+::: {
      PreferredMaintenanceWindow:
        if !std.isString(PreferredMaintenanceWindow) then (error 'PreferredMaintenanceWindow must be a string')
        else if std.isEmpty(PreferredMaintenanceWindow) then (error 'PreferredMaintenanceWindow must be not empty')
        else PreferredMaintenanceWindow,
    },
  },
  setAutoMinorVersionUpgrade(AutoMinorVersionUpgrade): {
    Properties+::: {
      AutoMinorVersionUpgrade:
        if !std.isBoolean(AutoMinorVersionUpgrade) then (error 'AutoMinorVersionUpgrade must be a boolean') else AutoMinorVersionUpgrade,
    },
  },
  setReplicationSubnetGroupIdentifier(ReplicationSubnetGroupIdentifier): {
    Properties+::: {
      ReplicationSubnetGroupIdentifier:
        if !std.isString(ReplicationSubnetGroupIdentifier) then (error 'ReplicationSubnetGroupIdentifier must be a string')
        else if std.isEmpty(ReplicationSubnetGroupIdentifier) then (error 'ReplicationSubnetGroupIdentifier must be not empty')
        else ReplicationSubnetGroupIdentifier,
    },
  },
  setReplicationInstancePrivateIpAddresses(ReplicationInstancePrivateIpAddresses): {
    Properties+::: {
      ReplicationInstancePrivateIpAddresses:
        if !std.isString(ReplicationInstancePrivateIpAddresses) then (error 'ReplicationInstancePrivateIpAddresses must be a string')
        else if std.isEmpty(ReplicationInstancePrivateIpAddresses) then (error 'ReplicationInstancePrivateIpAddresses must be not empty')
        else ReplicationInstancePrivateIpAddresses,
    },
  },
  setAllocatedStorage(AllocatedStorage): {
    Properties+::: {
      AllocatedStorage:
        if !std.isNumber(AllocatedStorage) then (error 'AllocatedStorage must be an number')
        else AllocatedStorage,
    },
  },
  setResourceIdentifier(ResourceIdentifier): {
    Properties+::: {
      ResourceIdentifier:
        if !std.isString(ResourceIdentifier) then (error 'ResourceIdentifier must be a string')
        else if std.isEmpty(ResourceIdentifier) then (error 'ResourceIdentifier must be not empty')
        else ResourceIdentifier,
    },
  },
  setVpcSecurityGroupIds(VpcSecurityGroupIds): {
    Properties+::: {
      VpcSecurityGroupIds:
        if !std.isArray(VpcSecurityGroupIds) then (error 'VpcSecurityGroupIds must be an array')
        else VpcSecurityGroupIds,
    },
  },
  setVpcSecurityGroupIdsMixin(VpcSecurityGroupIds): {
    Properties+::: {
      VpcSecurityGroupIds+: VpcSecurityGroupIds,
    },
  },
  setNetworkType(NetworkType): {
    Properties+::: {
      NetworkType:
        if !std.isString(NetworkType) then (error 'NetworkType must be a string')
        else if std.isEmpty(NetworkType) then (error 'NetworkType must be not empty')
        else NetworkType,
    },
  },
  setAllowMajorVersionUpgrade(AllowMajorVersionUpgrade): {
    Properties+::: {
      AllowMajorVersionUpgrade:
        if !std.isBoolean(AllowMajorVersionUpgrade) then (error 'AllowMajorVersionUpgrade must be a boolean') else AllowMajorVersionUpgrade,
    },
  },
  setPubliclyAccessible(PubliclyAccessible): {
    Properties+::: {
      PubliclyAccessible:
        if !std.isBoolean(PubliclyAccessible) then (error 'PubliclyAccessible must be a boolean') else PubliclyAccessible,
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
  setMultiAZ(MultiAZ): {
    Properties+::: {
      MultiAZ:
        if !std.isBoolean(MultiAZ) then (error 'MultiAZ must be a boolean') else MultiAZ,
    },
  },
  setReplicationInstancePublicIpAddresses(ReplicationInstancePublicIpAddresses): {
    Properties+::: {
      ReplicationInstancePublicIpAddresses:
        if !std.isString(ReplicationInstancePublicIpAddresses) then (error 'ReplicationInstancePublicIpAddresses must be a string')
        else if std.isEmpty(ReplicationInstancePublicIpAddresses) then (error 'ReplicationInstancePublicIpAddresses must be not empty')
        else ReplicationInstancePublicIpAddresses,
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
