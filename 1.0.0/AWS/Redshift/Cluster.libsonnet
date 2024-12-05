{
  new(
    NodeType,
    MasterUsername,
    DBName,
    ClusterType,
  ): {
    local base = self,
    Properties: {
      NodeType:
        if !std.isString(NodeType) then (error 'NodeType must be a string')
        else if std.isEmpty(NodeType) then (error 'NodeType must be not empty')
        else NodeType,
      MasterUsername:
        if !std.isString(MasterUsername) then (error 'MasterUsername must be a string')
        else if std.isEmpty(MasterUsername) then (error 'MasterUsername must be not empty')
        else if std.length(MasterUsername) > 128 then error ('MasterUsername should have not more than 128 characters')
        else MasterUsername,
      DBName:
        if !std.isString(DBName) then (error 'DBName must be a string')
        else if std.isEmpty(DBName) then (error 'DBName must be not empty')
        else DBName,
      ClusterType:
        if !std.isString(ClusterType) then (error 'ClusterType must be a string')
        else if std.isEmpty(ClusterType) then (error 'ClusterType must be not empty')
        else ClusterType,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Redshift::Cluster',
  },
  setRevisionTarget(RevisionTarget): {
    Properties+::: {
      RevisionTarget:
        if !std.isString(RevisionTarget) then (error 'RevisionTarget must be a string')
        else if std.isEmpty(RevisionTarget) then (error 'RevisionTarget must be not empty')
        else RevisionTarget,
    },
  },
  setAutomatedSnapshotRetentionPeriod(AutomatedSnapshotRetentionPeriod): {
    Properties+::: {
      AutomatedSnapshotRetentionPeriod:
        if !std.isNumber(AutomatedSnapshotRetentionPeriod) then (error 'AutomatedSnapshotRetentionPeriod must be an number')
        else AutomatedSnapshotRetentionPeriod,
    },
  },
  setEncrypted(Encrypted): {
    Properties+::: {
      Encrypted:
        if !std.isBoolean(Encrypted) then (error 'Encrypted must be a boolean') else Encrypted,
    },
  },
  setPort(Port): {
    Properties+::: {
      Port:
        if !std.isNumber(Port) then (error 'Port must be an number')
        else Port,
    },
  },
  setNumberOfNodes(NumberOfNodes): {
    Properties+::: {
      NumberOfNodes:
        if !std.isNumber(NumberOfNodes) then (error 'NumberOfNodes must be an number')
        else NumberOfNodes,
    },
  },
  setDestinationRegion(DestinationRegion): {
    Properties+::: {
      DestinationRegion:
        if !std.isString(DestinationRegion) then (error 'DestinationRegion must be a string')
        else if std.isEmpty(DestinationRegion) then (error 'DestinationRegion must be not empty')
        else DestinationRegion,
    },
  },
  setAllowVersionUpgrade(AllowVersionUpgrade): {
    Properties+::: {
      AllowVersionUpgrade:
        if !std.isBoolean(AllowVersionUpgrade) then (error 'AllowVersionUpgrade must be a boolean') else AllowVersionUpgrade,
    },
  },
  setEndpoint(Endpoint): {
    Properties+::: {
      Endpoint:
        if !std.isObject(Endpoint) then (error 'Endpoint must be an object')
        else Endpoint,
    },
  },
  setNamespaceResourcePolicy(NamespaceResourcePolicy): {
    Properties+::: {
      NamespaceResourcePolicy:
        if !std.isObject(NamespaceResourcePolicy) then (error 'NamespaceResourcePolicy must be an object')
        else NamespaceResourcePolicy,
    },
  },
  setMaintenanceTrackName(MaintenanceTrackName): {
    Properties+::: {
      MaintenanceTrackName:
        if !std.isString(MaintenanceTrackName) then (error 'MaintenanceTrackName must be a string')
        else if std.isEmpty(MaintenanceTrackName) then (error 'MaintenanceTrackName must be not empty')
        else MaintenanceTrackName,
    },
  },
  setOwnerAccount(OwnerAccount): {
    Properties+::: {
      OwnerAccount:
        if !std.isString(OwnerAccount) then (error 'OwnerAccount must be a string')
        else if std.isEmpty(OwnerAccount) then (error 'OwnerAccount must be not empty')
        else OwnerAccount,
    },
  },
  setMultiAZ(MultiAZ): {
    Properties+::: {
      MultiAZ:
        if !std.isBoolean(MultiAZ) then (error 'MultiAZ must be a boolean') else MultiAZ,
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
  setSnapshotClusterIdentifier(SnapshotClusterIdentifier): {
    Properties+::: {
      SnapshotClusterIdentifier:
        if !std.isString(SnapshotClusterIdentifier) then (error 'SnapshotClusterIdentifier must be a string')
        else if std.isEmpty(SnapshotClusterIdentifier) then (error 'SnapshotClusterIdentifier must be not empty')
        else SnapshotClusterIdentifier,
    },
  },
  setIamRoles(IamRoles): {
    Properties+::: {
      IamRoles:
        if !std.isArray(IamRoles) then (error 'IamRoles must be an array')
        else if std.length(IamRoles) > 50 then error ('IamRoles cannot have more than 50 items')
        else IamRoles,
    },
  },
  setIamRolesMixin(IamRoles): {
    Properties+::: {
      IamRoles+: IamRoles,
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
  setSnapshotCopyManual(SnapshotCopyManual): {
    Properties+::: {
      SnapshotCopyManual:
        if !std.isBoolean(SnapshotCopyManual) then (error 'SnapshotCopyManual must be a boolean') else SnapshotCopyManual,
    },
  },
  setManageMasterPassword(ManageMasterPassword): {
    Properties+::: {
      ManageMasterPassword:
        if !std.isBoolean(ManageMasterPassword) then (error 'ManageMasterPassword must be a boolean') else ManageMasterPassword,
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
  setClusterSecurityGroups(ClusterSecurityGroups): {
    Properties+::: {
      ClusterSecurityGroups:
        if !std.isArray(ClusterSecurityGroups) then (error 'ClusterSecurityGroups must be an array')
        else ClusterSecurityGroups,
    },
  },
  setClusterSecurityGroupsMixin(ClusterSecurityGroups): {
    Properties+::: {
      ClusterSecurityGroups+: ClusterSecurityGroups,
    },
  },
  setClusterIdentifier(ClusterIdentifier): {
    Properties+::: {
      ClusterIdentifier:
        if !std.isString(ClusterIdentifier) then (error 'ClusterIdentifier must be a string')
        else if std.isEmpty(ClusterIdentifier) then (error 'ClusterIdentifier must be not empty')
        else if std.length(ClusterIdentifier) > 63 then error ('ClusterIdentifier should have not more than 63 characters')
        else ClusterIdentifier,
    },
  },
  setMasterUserPassword(MasterUserPassword): {
    Properties+::: {
      MasterUserPassword:
        if !std.isString(MasterUserPassword) then (error 'MasterUserPassword must be a string')
        else if std.isEmpty(MasterUserPassword) then (error 'MasterUserPassword must be not empty')
        else if std.length(MasterUserPassword) > 64 then error ('MasterUserPassword should have not more than 64 characters')
        else MasterUserPassword,
    },
  },
  setClusterSubnetGroupName(ClusterSubnetGroupName): {
    Properties+::: {
      ClusterSubnetGroupName:
        if !std.isString(ClusterSubnetGroupName) then (error 'ClusterSubnetGroupName must be a string')
        else if std.isEmpty(ClusterSubnetGroupName) then (error 'ClusterSubnetGroupName must be not empty')
        else ClusterSubnetGroupName,
    },
  },
  setLoggingProperties(LoggingProperties): {
    Properties+::: {
      LoggingProperties:
        if !std.isObject(LoggingProperties) then (error 'LoggingProperties must be an object')
        else LoggingProperties,
    },
  },
  setDeferMaintenance(DeferMaintenance): {
    Properties+::: {
      DeferMaintenance:
        if !std.isBoolean(DeferMaintenance) then (error 'DeferMaintenance must be a boolean') else DeferMaintenance,
    },
  },
  setPubliclyAccessible(PubliclyAccessible): {
    Properties+::: {
      PubliclyAccessible:
        if !std.isBoolean(PubliclyAccessible) then (error 'PubliclyAccessible must be a boolean') else PubliclyAccessible,
    },
  },
  setDeferMaintenanceIdentifier(DeferMaintenanceIdentifier): {
    Properties+::: {
      DeferMaintenanceIdentifier:
        if !std.isString(DeferMaintenanceIdentifier) then (error 'DeferMaintenanceIdentifier must be a string')
        else if std.isEmpty(DeferMaintenanceIdentifier) then (error 'DeferMaintenanceIdentifier must be not empty')
        else DeferMaintenanceIdentifier,
    },
  },
  setManualSnapshotRetentionPeriod(ManualSnapshotRetentionPeriod): {
    Properties+::: {
      ManualSnapshotRetentionPeriod:
        if !std.isNumber(ManualSnapshotRetentionPeriod) then (error 'ManualSnapshotRetentionPeriod must be an number')
        else ManualSnapshotRetentionPeriod,
    },
  },
  setResourceAction(ResourceAction): {
    Properties+::: {
      ResourceAction:
        if !std.isString(ResourceAction) then (error 'ResourceAction must be a string')
        else if std.isEmpty(ResourceAction) then (error 'ResourceAction must be not empty')
        else ResourceAction,
    },
  },
  setHsmClientCertificateIdentifier(HsmClientCertificateIdentifier): {
    Properties+::: {
      HsmClientCertificateIdentifier:
        if !std.isString(HsmClientCertificateIdentifier) then (error 'HsmClientCertificateIdentifier must be a string')
        else if std.isEmpty(HsmClientCertificateIdentifier) then (error 'HsmClientCertificateIdentifier must be not empty')
        else HsmClientCertificateIdentifier,
    },
  },
  setElasticIp(ElasticIp): {
    Properties+::: {
      ElasticIp:
        if !std.isString(ElasticIp) then (error 'ElasticIp must be a string')
        else if std.isEmpty(ElasticIp) then (error 'ElasticIp must be not empty')
        else ElasticIp,
    },
  },
  setAvailabilityZoneRelocationStatus(AvailabilityZoneRelocationStatus): {
    Properties+::: {
      AvailabilityZoneRelocationStatus:
        if !std.isString(AvailabilityZoneRelocationStatus) then (error 'AvailabilityZoneRelocationStatus must be a string')
        else if std.isEmpty(AvailabilityZoneRelocationStatus) then (error 'AvailabilityZoneRelocationStatus must be not empty')
        else AvailabilityZoneRelocationStatus,
    },
  },
  setAquaConfigurationStatus(AquaConfigurationStatus): {
    Properties+::: {
      AquaConfigurationStatus:
        if !std.isString(AquaConfigurationStatus) then (error 'AquaConfigurationStatus must be a string')
        else if std.isEmpty(AquaConfigurationStatus) then (error 'AquaConfigurationStatus must be not empty')
        else AquaConfigurationStatus,
    },
  },
  setSnapshotIdentifier(SnapshotIdentifier): {
    Properties+::: {
      SnapshotIdentifier:
        if !std.isString(SnapshotIdentifier) then (error 'SnapshotIdentifier must be a string')
        else if std.isEmpty(SnapshotIdentifier) then (error 'SnapshotIdentifier must be not empty')
        else SnapshotIdentifier,
    },
  },
  setAvailabilityZoneRelocation(AvailabilityZoneRelocation): {
    Properties+::: {
      AvailabilityZoneRelocation:
        if !std.isBoolean(AvailabilityZoneRelocation) then (error 'AvailabilityZoneRelocation must be a boolean') else AvailabilityZoneRelocation,
    },
  },
  setSnapshotCopyGrantName(SnapshotCopyGrantName): {
    Properties+::: {
      SnapshotCopyGrantName:
        if !std.isString(SnapshotCopyGrantName) then (error 'SnapshotCopyGrantName must be a string')
        else if std.isEmpty(SnapshotCopyGrantName) then (error 'SnapshotCopyGrantName must be not empty')
        else SnapshotCopyGrantName,
    },
  },
  setEnhancedVpcRouting(EnhancedVpcRouting): {
    Properties+::: {
      EnhancedVpcRouting:
        if !std.isBoolean(EnhancedVpcRouting) then (error 'EnhancedVpcRouting must be a boolean') else EnhancedVpcRouting,
    },
  },
  setClusterParameterGroupName(ClusterParameterGroupName): {
    Properties+::: {
      ClusterParameterGroupName:
        if !std.isString(ClusterParameterGroupName) then (error 'ClusterParameterGroupName must be a string')
        else if std.isEmpty(ClusterParameterGroupName) then (error 'ClusterParameterGroupName must be not empty')
        else if std.length(ClusterParameterGroupName) > 255 then error ('ClusterParameterGroupName should have not more than 255 characters')
        else ClusterParameterGroupName,
    },
  },
  setDeferMaintenanceEndTime(DeferMaintenanceEndTime): {
    Properties+::: {
      DeferMaintenanceEndTime:
        if !std.isString(DeferMaintenanceEndTime) then (error 'DeferMaintenanceEndTime must be a string')
        else if std.isEmpty(DeferMaintenanceEndTime) then (error 'DeferMaintenanceEndTime must be not empty')
        else DeferMaintenanceEndTime,
    },
  },
  setRotateEncryptionKey(RotateEncryptionKey): {
    Properties+::: {
      RotateEncryptionKey:
        if !std.isBoolean(RotateEncryptionKey) then (error 'RotateEncryptionKey must be a boolean') else RotateEncryptionKey,
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
  setClusterNamespaceArn(ClusterNamespaceArn): {
    Properties+::: {
      ClusterNamespaceArn:
        if !std.isString(ClusterNamespaceArn) then (error 'ClusterNamespaceArn must be a string')
        else if std.isEmpty(ClusterNamespaceArn) then (error 'ClusterNamespaceArn must be not empty')
        else ClusterNamespaceArn,
    },
  },
  setMasterPasswordSecretArn(MasterPasswordSecretArn): {
    Properties+::: {
      MasterPasswordSecretArn:
        if !std.isString(MasterPasswordSecretArn) then (error 'MasterPasswordSecretArn must be a string')
        else if std.isEmpty(MasterPasswordSecretArn) then (error 'MasterPasswordSecretArn must be not empty')
        else MasterPasswordSecretArn,
    },
  },
  setClusterVersion(ClusterVersion): {
    Properties+::: {
      ClusterVersion:
        if !std.isString(ClusterVersion) then (error 'ClusterVersion must be a string')
        else if std.isEmpty(ClusterVersion) then (error 'ClusterVersion must be not empty')
        else ClusterVersion,
    },
  },
  setHsmConfigurationIdentifier(HsmConfigurationIdentifier): {
    Properties+::: {
      HsmConfigurationIdentifier:
        if !std.isString(HsmConfigurationIdentifier) then (error 'HsmConfigurationIdentifier must be a string')
        else if std.isEmpty(HsmConfigurationIdentifier) then (error 'HsmConfigurationIdentifier must be not empty')
        else HsmConfigurationIdentifier,
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
  setDeferMaintenanceStartTime(DeferMaintenanceStartTime): {
    Properties+::: {
      DeferMaintenanceStartTime:
        if !std.isString(DeferMaintenanceStartTime) then (error 'DeferMaintenanceStartTime must be a string')
        else if std.isEmpty(DeferMaintenanceStartTime) then (error 'DeferMaintenanceStartTime must be not empty')
        else DeferMaintenanceStartTime,
    },
  },
  setClassic(Classic): {
    Properties+::: {
      Classic:
        if !std.isBoolean(Classic) then (error 'Classic must be a boolean') else Classic,
    },
  },
  setMasterPasswordSecretKmsKeyId(MasterPasswordSecretKmsKeyId): {
    Properties+::: {
      MasterPasswordSecretKmsKeyId:
        if !std.isString(MasterPasswordSecretKmsKeyId) then (error 'MasterPasswordSecretKmsKeyId must be a string')
        else if std.isEmpty(MasterPasswordSecretKmsKeyId) then (error 'MasterPasswordSecretKmsKeyId must be not empty')
        else MasterPasswordSecretKmsKeyId,
    },
  },
  setDeferMaintenanceDuration(DeferMaintenanceDuration): {
    Properties+::: {
      DeferMaintenanceDuration:
        if !std.isNumber(DeferMaintenanceDuration) then (error 'DeferMaintenanceDuration must be an number')
        else DeferMaintenanceDuration,
    },
  },
  setSnapshotCopyRetentionPeriod(SnapshotCopyRetentionPeriod): {
    Properties+::: {
      SnapshotCopyRetentionPeriod:
        if !std.isNumber(SnapshotCopyRetentionPeriod) then (error 'SnapshotCopyRetentionPeriod must be an number')
        else SnapshotCopyRetentionPeriod,
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
