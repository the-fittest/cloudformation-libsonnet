{
  // AWS Redshift Cluster
  Cluster: {
    new(
      NodeType,
      MasterUsername,
      DBName,
      ClusterType,
    ): {
      local base = self,
      Properties: {
        assert std.isString(NodeType) : 'NodeType must be a string',
        NodeType: NodeType,
        assert std.isString(MasterUsername) : 'MasterUsername must be a string',
        MasterUsername: MasterUsername,
        assert std.isString(DBName) : 'DBName must be a string',
        DBName: DBName,
        assert std.isString(ClusterType) : 'ClusterType must be a string',
        ClusterType: ClusterType,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::Redshift::Cluster',
    },
    withRevisionTarget(RevisionTarget): {
      assert std.isString(RevisionTarget) : 'RevisionTarget must be a string',
      Properties+::: {
        RevisionTarget: RevisionTarget,
      },
    },
    withAutomatedSnapshotRetentionPeriod(AutomatedSnapshotRetentionPeriod): {
      assert std.isNumber(AutomatedSnapshotRetentionPeriod) : 'AutomatedSnapshotRetentionPeriod must be a number',
      Properties+::: {
        AutomatedSnapshotRetentionPeriod: AutomatedSnapshotRetentionPeriod,
      },
    },
    withEncrypted(Encrypted): {
      assert std.isBoolean(Encrypted) : 'Encrypted must be a boolean',
      Properties+::: {
        Encrypted: Encrypted,
      },
    },
    withPort(Port): {
      assert std.isNumber(Port) : 'Port must be a number',
      Properties+::: {
        Port: Port,
      },
    },
    withNumberOfNodes(NumberOfNodes): {
      assert std.isNumber(NumberOfNodes) : 'NumberOfNodes must be a number',
      Properties+::: {
        NumberOfNodes: NumberOfNodes,
      },
    },
    withDestinationRegion(DestinationRegion): {
      assert std.isString(DestinationRegion) : 'DestinationRegion must be a string',
      Properties+::: {
        DestinationRegion: DestinationRegion,
      },
    },
    withAllowVersionUpgrade(AllowVersionUpgrade): {
      assert std.isBoolean(AllowVersionUpgrade) : 'AllowVersionUpgrade must be a boolean',
      Properties+::: {
        AllowVersionUpgrade: AllowVersionUpgrade,
      },
    },
    withEndpoint(Endpoint): {
      assert std.isObject(Endpoint) : 'Endpoint must be a object',
      Properties+::: {
        Endpoint: Endpoint,
      },
    },
    withNamespaceResourcePolicy(NamespaceResourcePolicy): {
      assert std.isObject(NamespaceResourcePolicy) : 'NamespaceResourcePolicy must be a object',
      Properties+::: {
        NamespaceResourcePolicy: NamespaceResourcePolicy,
      },
    },
    withMaintenanceTrackName(MaintenanceTrackName): {
      assert std.isString(MaintenanceTrackName) : 'MaintenanceTrackName must be a string',
      Properties+::: {
        MaintenanceTrackName: MaintenanceTrackName,
      },
    },
    withOwnerAccount(OwnerAccount): {
      assert std.isString(OwnerAccount) : 'OwnerAccount must be a string',
      Properties+::: {
        OwnerAccount: OwnerAccount,
      },
    },
    withMultiAZ(MultiAZ): {
      assert std.isBoolean(MultiAZ) : 'MultiAZ must be a boolean',
      Properties+::: {
        MultiAZ: MultiAZ,
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
    withSnapshotClusterIdentifier(SnapshotClusterIdentifier): {
      assert std.isString(SnapshotClusterIdentifier) : 'SnapshotClusterIdentifier must be a string',
      Properties+::: {
        SnapshotClusterIdentifier: SnapshotClusterIdentifier,
      },
    },
    withIamRoles(IamRoles): {
      Properties+::: {
        IamRoles: (if std.isArray(IamRoles) then IamRoles else [IamRoles]),
      },
    },
    withIamRolesMixin(IamRoles): {
      Properties+::: {
        IamRoles+: (if std.isArray(IamRoles) then IamRoles else [IamRoles]),
      },
    },
    withKmsKeyId(KmsKeyId): {
      assert std.isString(KmsKeyId) : 'KmsKeyId must be a string',
      Properties+::: {
        KmsKeyId: KmsKeyId,
      },
    },
    withSnapshotCopyManual(SnapshotCopyManual): {
      assert std.isBoolean(SnapshotCopyManual) : 'SnapshotCopyManual must be a boolean',
      Properties+::: {
        SnapshotCopyManual: SnapshotCopyManual,
      },
    },
    withManageMasterPassword(ManageMasterPassword): {
      assert std.isBoolean(ManageMasterPassword) : 'ManageMasterPassword must be a boolean',
      Properties+::: {
        ManageMasterPassword: ManageMasterPassword,
      },
    },
    withAvailabilityZone(AvailabilityZone): {
      assert std.isString(AvailabilityZone) : 'AvailabilityZone must be a string',
      Properties+::: {
        AvailabilityZone: AvailabilityZone,
      },
    },
    withClusterSecurityGroups(ClusterSecurityGroups): {
      Properties+::: {
        ClusterSecurityGroups: (if std.isArray(ClusterSecurityGroups) then ClusterSecurityGroups else [ClusterSecurityGroups]),
      },
    },
    withClusterSecurityGroupsMixin(ClusterSecurityGroups): {
      Properties+::: {
        ClusterSecurityGroups+: (if std.isArray(ClusterSecurityGroups) then ClusterSecurityGroups else [ClusterSecurityGroups]),
      },
    },
    withClusterIdentifier(ClusterIdentifier): {
      assert std.isString(ClusterIdentifier) : 'ClusterIdentifier must be a string',
      Properties+::: {
        ClusterIdentifier: ClusterIdentifier,
      },
    },
    withMasterUserPassword(MasterUserPassword): {
      assert std.isString(MasterUserPassword) : 'MasterUserPassword must be a string',
      Properties+::: {
        MasterUserPassword: MasterUserPassword,
      },
    },
    withClusterSubnetGroupName(ClusterSubnetGroupName): {
      assert std.isString(ClusterSubnetGroupName) : 'ClusterSubnetGroupName must be a string',
      Properties+::: {
        ClusterSubnetGroupName: ClusterSubnetGroupName,
      },
    },
    withLoggingProperties(LoggingProperties): {
      assert std.isObject(LoggingProperties) : 'LoggingProperties must be a object',
      Properties+::: {
        LoggingProperties: LoggingProperties,
      },
    },
    withDeferMaintenance(DeferMaintenance): {
      assert std.isBoolean(DeferMaintenance) : 'DeferMaintenance must be a boolean',
      Properties+::: {
        DeferMaintenance: DeferMaintenance,
      },
    },
    withPubliclyAccessible(PubliclyAccessible): {
      assert std.isBoolean(PubliclyAccessible) : 'PubliclyAccessible must be a boolean',
      Properties+::: {
        PubliclyAccessible: PubliclyAccessible,
      },
    },
    withDeferMaintenanceIdentifier(DeferMaintenanceIdentifier): {
      assert std.isString(DeferMaintenanceIdentifier) : 'DeferMaintenanceIdentifier must be a string',
      Properties+::: {
        DeferMaintenanceIdentifier: DeferMaintenanceIdentifier,
      },
    },
    withManualSnapshotRetentionPeriod(ManualSnapshotRetentionPeriod): {
      assert std.isNumber(ManualSnapshotRetentionPeriod) : 'ManualSnapshotRetentionPeriod must be a number',
      Properties+::: {
        ManualSnapshotRetentionPeriod: ManualSnapshotRetentionPeriod,
      },
    },
    withResourceAction(ResourceAction): {
      assert std.isString(ResourceAction) : 'ResourceAction must be a string',
      Properties+::: {
        ResourceAction: ResourceAction,
      },
    },
    withHsmClientCertificateIdentifier(HsmClientCertificateIdentifier): {
      assert std.isString(HsmClientCertificateIdentifier) : 'HsmClientCertificateIdentifier must be a string',
      Properties+::: {
        HsmClientCertificateIdentifier: HsmClientCertificateIdentifier,
      },
    },
    withElasticIp(ElasticIp): {
      assert std.isString(ElasticIp) : 'ElasticIp must be a string',
      Properties+::: {
        ElasticIp: ElasticIp,
      },
    },
    withAvailabilityZoneRelocationStatus(AvailabilityZoneRelocationStatus): {
      assert std.isString(AvailabilityZoneRelocationStatus) : 'AvailabilityZoneRelocationStatus must be a string',
      Properties+::: {
        AvailabilityZoneRelocationStatus: AvailabilityZoneRelocationStatus,
      },
    },
    withAquaConfigurationStatus(AquaConfigurationStatus): {
      assert std.isString(AquaConfigurationStatus) : 'AquaConfigurationStatus must be a string',
      Properties+::: {
        AquaConfigurationStatus: AquaConfigurationStatus,
      },
    },
    withSnapshotIdentifier(SnapshotIdentifier): {
      assert std.isString(SnapshotIdentifier) : 'SnapshotIdentifier must be a string',
      Properties+::: {
        SnapshotIdentifier: SnapshotIdentifier,
      },
    },
    withAvailabilityZoneRelocation(AvailabilityZoneRelocation): {
      assert std.isBoolean(AvailabilityZoneRelocation) : 'AvailabilityZoneRelocation must be a boolean',
      Properties+::: {
        AvailabilityZoneRelocation: AvailabilityZoneRelocation,
      },
    },
    withSnapshotCopyGrantName(SnapshotCopyGrantName): {
      assert std.isString(SnapshotCopyGrantName) : 'SnapshotCopyGrantName must be a string',
      Properties+::: {
        SnapshotCopyGrantName: SnapshotCopyGrantName,
      },
    },
    withEnhancedVpcRouting(EnhancedVpcRouting): {
      assert std.isBoolean(EnhancedVpcRouting) : 'EnhancedVpcRouting must be a boolean',
      Properties+::: {
        EnhancedVpcRouting: EnhancedVpcRouting,
      },
    },
    withClusterParameterGroupName(ClusterParameterGroupName): {
      assert std.isString(ClusterParameterGroupName) : 'ClusterParameterGroupName must be a string',
      Properties+::: {
        ClusterParameterGroupName: ClusterParameterGroupName,
      },
    },
    withDeferMaintenanceEndTime(DeferMaintenanceEndTime): {
      assert std.isString(DeferMaintenanceEndTime) : 'DeferMaintenanceEndTime must be a string',
      Properties+::: {
        DeferMaintenanceEndTime: DeferMaintenanceEndTime,
      },
    },
    withRotateEncryptionKey(RotateEncryptionKey): {
      assert std.isBoolean(RotateEncryptionKey) : 'RotateEncryptionKey must be a boolean',
      Properties+::: {
        RotateEncryptionKey: RotateEncryptionKey,
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
    withClusterNamespaceArn(ClusterNamespaceArn): {
      assert std.isString(ClusterNamespaceArn) : 'ClusterNamespaceArn must be a string',
      Properties+::: {
        ClusterNamespaceArn: ClusterNamespaceArn,
      },
    },
    withMasterPasswordSecretArn(MasterPasswordSecretArn): {
      assert std.isString(MasterPasswordSecretArn) : 'MasterPasswordSecretArn must be a string',
      Properties+::: {
        MasterPasswordSecretArn: MasterPasswordSecretArn,
      },
    },
    withClusterVersion(ClusterVersion): {
      assert std.isString(ClusterVersion) : 'ClusterVersion must be a string',
      Properties+::: {
        ClusterVersion: ClusterVersion,
      },
    },
    withHsmConfigurationIdentifier(HsmConfigurationIdentifier): {
      assert std.isString(HsmConfigurationIdentifier) : 'HsmConfigurationIdentifier must be a string',
      Properties+::: {
        HsmConfigurationIdentifier: HsmConfigurationIdentifier,
      },
    },
    withPreferredMaintenanceWindow(PreferredMaintenanceWindow): {
      assert std.isString(PreferredMaintenanceWindow) : 'PreferredMaintenanceWindow must be a string',
      Properties+::: {
        PreferredMaintenanceWindow: PreferredMaintenanceWindow,
      },
    },
    withDeferMaintenanceStartTime(DeferMaintenanceStartTime): {
      assert std.isString(DeferMaintenanceStartTime) : 'DeferMaintenanceStartTime must be a string',
      Properties+::: {
        DeferMaintenanceStartTime: DeferMaintenanceStartTime,
      },
    },
    withClassic(Classic): {
      assert std.isBoolean(Classic) : 'Classic must be a boolean',
      Properties+::: {
        Classic: Classic,
      },
    },
    withMasterPasswordSecretKmsKeyId(MasterPasswordSecretKmsKeyId): {
      assert std.isString(MasterPasswordSecretKmsKeyId) : 'MasterPasswordSecretKmsKeyId must be a string',
      Properties+::: {
        MasterPasswordSecretKmsKeyId: MasterPasswordSecretKmsKeyId,
      },
    },
    withDeferMaintenanceDuration(DeferMaintenanceDuration): {
      assert std.isNumber(DeferMaintenanceDuration) : 'DeferMaintenanceDuration must be a number',
      Properties+::: {
        DeferMaintenanceDuration: DeferMaintenanceDuration,
      },
    },
    withSnapshotCopyRetentionPeriod(SnapshotCopyRetentionPeriod): {
      assert std.isNumber(SnapshotCopyRetentionPeriod) : 'SnapshotCopyRetentionPeriod must be a number',
      Properties+::: {
        SnapshotCopyRetentionPeriod: SnapshotCopyRetentionPeriod,
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
