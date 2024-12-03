local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  Cluster: {
    '#': d.pkg(
      name='Cluster',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Redshift.libsonnet',
      help='An example resource schema demonstrating some basic constructs and validation rules.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Redshift::Cluster Resource
        * NodeType The node type to be provisioned for the cluster.Valid Values: ds2.xlarge | ds2.8xlarge | dc1.large | dc1.8xlarge | dc2.large | dc2.8xlarge | ra3.4xlarge | ra3.16xlarge
        * MasterUsername The user name associated with the master user account for the cluster that is being created. The user name cant be PUBLIC and first character must be a letter.
        * DBName The name of the first database to be created when the cluster is created. To create additional databases after the cluster is created, connect to the cluster with a SQL client and use SQL commands to create a database.
        * ClusterType The type of the cluster. When cluster type is specified as single-node, the NumberOfNodes parameter is not required and if multi-node, the NumberOfNodes parameter is required
      |||,
      args=[
        d.arg('NodeType', 'd.T.string'),
        d.arg('MasterUsername', 'd.T.string'),
        d.arg('DBName', 'd.T.string'),
        d.arg('ClusterType', 'd.T.string'),
      ]
    ),
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
      Type: 'AWS::Redshift::Cluster',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withRevisionTarget': d.fn('`withRevisionTarget` RevisionTarget ', [d.arg('RevisionTarget', d.T.string)]),
    withRevisionTarget(RevisionTarget): {
      assert std.isString(RevisionTarget) : 'RevisionTarget must be a string',
      Properties+::: { RevisionTarget: RevisionTarget },
    },
    '#withAutomatedSnapshotRetentionPeriod': d.fn('`withAutomatedSnapshotRetentionPeriod` AutomatedSnapshotRetentionPeriod ', [d.arg('AutomatedSnapshotRetentionPeriod', d.T.integer)]),
    withAutomatedSnapshotRetentionPeriod(AutomatedSnapshotRetentionPeriod): {
      assert std.isNumber(AutomatedSnapshotRetentionPeriod) : 'AutomatedSnapshotRetentionPeriod must be a integer',
      Properties+::: { AutomatedSnapshotRetentionPeriod: AutomatedSnapshotRetentionPeriod },
    },
    '#withEncrypted': d.fn('`withEncrypted` Encrypted ', [d.arg('Encrypted', d.T.boolean)]),
    withEncrypted(Encrypted): {
      assert std.isBoolean(Encrypted) : 'Encrypted must be a boolean',
      Properties+::: { Encrypted: Encrypted },
    },
    '#withPort': d.fn('`withPort` Port ', [d.arg('Port', d.T.integer)]),
    withPort(Port): {
      assert std.isNumber(Port) : 'Port must be a integer',
      Properties+::: { Port: Port },
    },
    '#withNumberOfNodes': d.fn('`withNumberOfNodes` NumberOfNodes ', [d.arg('NumberOfNodes', d.T.integer)]),
    withNumberOfNodes(NumberOfNodes): {
      assert std.isNumber(NumberOfNodes) : 'NumberOfNodes must be a integer',
      Properties+::: { NumberOfNodes: NumberOfNodes },
    },
    '#withDestinationRegion': d.fn('`withDestinationRegion` DestinationRegion ', [d.arg('DestinationRegion', d.T.string)]),
    withDestinationRegion(DestinationRegion): {
      assert std.isString(DestinationRegion) : 'DestinationRegion must be a string',
      Properties+::: { DestinationRegion: DestinationRegion },
    },
    '#withAllowVersionUpgrade': d.fn('`withAllowVersionUpgrade` AllowVersionUpgrade ', [d.arg('AllowVersionUpgrade', d.T.boolean)]),
    withAllowVersionUpgrade(AllowVersionUpgrade): {
      assert std.isBoolean(AllowVersionUpgrade) : 'AllowVersionUpgrade must be a boolean',
      Properties+::: { AllowVersionUpgrade: AllowVersionUpgrade },
    },
    '#withEndpoint': d.fn('`withEndpoint` Endpoint ', [d.arg('Endpoint', d.T.object)]),
    withEndpoint(Endpoint): {
      assert std.isObject(Endpoint) : 'Endpoint must be a object',
      Properties+::: { Endpoint: Endpoint },
    },
    '#withNamespaceResourcePolicy': d.fn('`withNamespaceResourcePolicy` NamespaceResourcePolicy ', [d.arg('NamespaceResourcePolicy', d.T.object)]),
    withNamespaceResourcePolicy(NamespaceResourcePolicy): {
      assert std.isObject(NamespaceResourcePolicy) : 'NamespaceResourcePolicy must be a object',
      Properties+::: { NamespaceResourcePolicy: NamespaceResourcePolicy },
    },
    '#withMaintenanceTrackName': d.fn('`withMaintenanceTrackName` MaintenanceTrackName ', [d.arg('MaintenanceTrackName', d.T.string)]),
    withMaintenanceTrackName(MaintenanceTrackName): {
      assert std.isString(MaintenanceTrackName) : 'MaintenanceTrackName must be a string',
      Properties+::: { MaintenanceTrackName: MaintenanceTrackName },
    },
    '#withOwnerAccount': d.fn('`withOwnerAccount` OwnerAccount ', [d.arg('OwnerAccount', d.T.string)]),
    withOwnerAccount(OwnerAccount): {
      assert std.isString(OwnerAccount) : 'OwnerAccount must be a string',
      Properties+::: { OwnerAccount: OwnerAccount },
    },
    '#withMultiAZ': d.fn('`withMultiAZ` MultiAZ ', [d.arg('MultiAZ', d.T.boolean)]),
    withMultiAZ(MultiAZ): {
      assert std.isBoolean(MultiAZ) : 'MultiAZ must be a boolean',
      Properties+::: { MultiAZ: MultiAZ },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withSnapshotClusterIdentifier': d.fn('`withSnapshotClusterIdentifier` SnapshotClusterIdentifier ', [d.arg('SnapshotClusterIdentifier', d.T.string)]),
    withSnapshotClusterIdentifier(SnapshotClusterIdentifier): {
      assert std.isString(SnapshotClusterIdentifier) : 'SnapshotClusterIdentifier must be a string',
      Properties+::: { SnapshotClusterIdentifier: SnapshotClusterIdentifier },
    },
    '#withIamRoles': d.fn('`withIamRoles` IamRoles ', [d.arg('IamRoles', d.T.array)]),
    withIamRoles(IamRoles): {
      assert std.isArray(IamRoles) : 'IamRoles must be a array',
      Properties+::: { IamRoles: IamRoles },
    },
    '#withKmsKeyId': d.fn('`withKmsKeyId` KmsKeyId ', [d.arg('KmsKeyId', d.T.string)]),
    withKmsKeyId(KmsKeyId): {
      assert std.isString(KmsKeyId) : 'KmsKeyId must be a string',
      Properties+::: { KmsKeyId: KmsKeyId },
    },
    '#withSnapshotCopyManual': d.fn('`withSnapshotCopyManual` SnapshotCopyManual ', [d.arg('SnapshotCopyManual', d.T.boolean)]),
    withSnapshotCopyManual(SnapshotCopyManual): {
      assert std.isBoolean(SnapshotCopyManual) : 'SnapshotCopyManual must be a boolean',
      Properties+::: { SnapshotCopyManual: SnapshotCopyManual },
    },
    '#withManageMasterPassword': d.fn('`withManageMasterPassword` ManageMasterPassword ', [d.arg('ManageMasterPassword', d.T.boolean)]),
    withManageMasterPassword(ManageMasterPassword): {
      assert std.isBoolean(ManageMasterPassword) : 'ManageMasterPassword must be a boolean',
      Properties+::: { ManageMasterPassword: ManageMasterPassword },
    },
    '#withAvailabilityZone': d.fn('`withAvailabilityZone` AvailabilityZone ', [d.arg('AvailabilityZone', d.T.string)]),
    withAvailabilityZone(AvailabilityZone): {
      assert std.isString(AvailabilityZone) : 'AvailabilityZone must be a string',
      Properties+::: { AvailabilityZone: AvailabilityZone },
    },
    '#withClusterSecurityGroups': d.fn('`withClusterSecurityGroups` ClusterSecurityGroups ', [d.arg('ClusterSecurityGroups', d.T.array)]),
    withClusterSecurityGroups(ClusterSecurityGroups): {
      assert std.isArray(ClusterSecurityGroups) : 'ClusterSecurityGroups must be a array',
      Properties+::: { ClusterSecurityGroups: ClusterSecurityGroups },
    },
    '#withClusterIdentifier': d.fn('`withClusterIdentifier` ClusterIdentifier ', [d.arg('ClusterIdentifier', d.T.string)]),
    withClusterIdentifier(ClusterIdentifier): {
      assert std.isString(ClusterIdentifier) : 'ClusterIdentifier must be a string',
      Properties+::: { ClusterIdentifier: ClusterIdentifier },
    },
    '#withMasterUserPassword': d.fn('`withMasterUserPassword` MasterUserPassword ', [d.arg('MasterUserPassword', d.T.string)]),
    withMasterUserPassword(MasterUserPassword): {
      assert std.isString(MasterUserPassword) : 'MasterUserPassword must be a string',
      Properties+::: { MasterUserPassword: MasterUserPassword },
    },
    '#withClusterSubnetGroupName': d.fn('`withClusterSubnetGroupName` ClusterSubnetGroupName ', [d.arg('ClusterSubnetGroupName', d.T.string)]),
    withClusterSubnetGroupName(ClusterSubnetGroupName): {
      assert std.isString(ClusterSubnetGroupName) : 'ClusterSubnetGroupName must be a string',
      Properties+::: { ClusterSubnetGroupName: ClusterSubnetGroupName },
    },
    '#withLoggingProperties': d.fn('`withLoggingProperties` LoggingProperties ', [d.arg('LoggingProperties', d.T.object)]),
    withLoggingProperties(LoggingProperties): {
      assert std.isObject(LoggingProperties) : 'LoggingProperties must be a object',
      Properties+::: { LoggingProperties: LoggingProperties },
    },
    '#withDeferMaintenance': d.fn('`withDeferMaintenance` DeferMaintenance ', [d.arg('DeferMaintenance', d.T.boolean)]),
    withDeferMaintenance(DeferMaintenance): {
      assert std.isBoolean(DeferMaintenance) : 'DeferMaintenance must be a boolean',
      Properties+::: { DeferMaintenance: DeferMaintenance },
    },
    '#withPubliclyAccessible': d.fn('`withPubliclyAccessible` PubliclyAccessible ', [d.arg('PubliclyAccessible', d.T.boolean)]),
    withPubliclyAccessible(PubliclyAccessible): {
      assert std.isBoolean(PubliclyAccessible) : 'PubliclyAccessible must be a boolean',
      Properties+::: { PubliclyAccessible: PubliclyAccessible },
    },
    '#withDeferMaintenanceIdentifier': d.fn('`withDeferMaintenanceIdentifier` DeferMaintenanceIdentifier ', [d.arg('DeferMaintenanceIdentifier', d.T.string)]),
    withDeferMaintenanceIdentifier(DeferMaintenanceIdentifier): {
      assert std.isString(DeferMaintenanceIdentifier) : 'DeferMaintenanceIdentifier must be a string',
      Properties+::: { DeferMaintenanceIdentifier: DeferMaintenanceIdentifier },
    },
    '#withManualSnapshotRetentionPeriod': d.fn('`withManualSnapshotRetentionPeriod` ManualSnapshotRetentionPeriod ', [d.arg('ManualSnapshotRetentionPeriod', d.T.integer)]),
    withManualSnapshotRetentionPeriod(ManualSnapshotRetentionPeriod): {
      assert std.isNumber(ManualSnapshotRetentionPeriod) : 'ManualSnapshotRetentionPeriod must be a integer',
      Properties+::: { ManualSnapshotRetentionPeriod: ManualSnapshotRetentionPeriod },
    },
    '#withResourceAction': d.fn('`withResourceAction` ResourceAction ', [d.arg('ResourceAction', d.T.string)]),
    withResourceAction(ResourceAction): {
      assert std.isString(ResourceAction) : 'ResourceAction must be a string',
      Properties+::: { ResourceAction: ResourceAction },
    },
    '#withHsmClientCertificateIdentifier': d.fn('`withHsmClientCertificateIdentifier` HsmClientCertificateIdentifier ', [d.arg('HsmClientCertificateIdentifier', d.T.string)]),
    withHsmClientCertificateIdentifier(HsmClientCertificateIdentifier): {
      assert std.isString(HsmClientCertificateIdentifier) : 'HsmClientCertificateIdentifier must be a string',
      Properties+::: { HsmClientCertificateIdentifier: HsmClientCertificateIdentifier },
    },
    '#withElasticIp': d.fn('`withElasticIp` ElasticIp ', [d.arg('ElasticIp', d.T.string)]),
    withElasticIp(ElasticIp): {
      assert std.isString(ElasticIp) : 'ElasticIp must be a string',
      Properties+::: { ElasticIp: ElasticIp },
    },
    '#withAvailabilityZoneRelocationStatus': d.fn('`withAvailabilityZoneRelocationStatus` AvailabilityZoneRelocationStatus ', [d.arg('AvailabilityZoneRelocationStatus', d.T.string)]),
    withAvailabilityZoneRelocationStatus(AvailabilityZoneRelocationStatus): {
      assert std.isString(AvailabilityZoneRelocationStatus) : 'AvailabilityZoneRelocationStatus must be a string',
      Properties+::: { AvailabilityZoneRelocationStatus: AvailabilityZoneRelocationStatus },
    },
    '#withAquaConfigurationStatus': d.fn('`withAquaConfigurationStatus` AquaConfigurationStatus ', [d.arg('AquaConfigurationStatus', d.T.string)]),
    withAquaConfigurationStatus(AquaConfigurationStatus): {
      assert std.isString(AquaConfigurationStatus) : 'AquaConfigurationStatus must be a string',
      Properties+::: { AquaConfigurationStatus: AquaConfigurationStatus },
    },
    '#withSnapshotIdentifier': d.fn('`withSnapshotIdentifier` SnapshotIdentifier ', [d.arg('SnapshotIdentifier', d.T.string)]),
    withSnapshotIdentifier(SnapshotIdentifier): {
      assert std.isString(SnapshotIdentifier) : 'SnapshotIdentifier must be a string',
      Properties+::: { SnapshotIdentifier: SnapshotIdentifier },
    },
    '#withAvailabilityZoneRelocation': d.fn('`withAvailabilityZoneRelocation` AvailabilityZoneRelocation ', [d.arg('AvailabilityZoneRelocation', d.T.boolean)]),
    withAvailabilityZoneRelocation(AvailabilityZoneRelocation): {
      assert std.isBoolean(AvailabilityZoneRelocation) : 'AvailabilityZoneRelocation must be a boolean',
      Properties+::: { AvailabilityZoneRelocation: AvailabilityZoneRelocation },
    },
    '#withSnapshotCopyGrantName': d.fn('`withSnapshotCopyGrantName` SnapshotCopyGrantName ', [d.arg('SnapshotCopyGrantName', d.T.string)]),
    withSnapshotCopyGrantName(SnapshotCopyGrantName): {
      assert std.isString(SnapshotCopyGrantName) : 'SnapshotCopyGrantName must be a string',
      Properties+::: { SnapshotCopyGrantName: SnapshotCopyGrantName },
    },
    '#withEnhancedVpcRouting': d.fn('`withEnhancedVpcRouting` EnhancedVpcRouting ', [d.arg('EnhancedVpcRouting', d.T.boolean)]),
    withEnhancedVpcRouting(EnhancedVpcRouting): {
      assert std.isBoolean(EnhancedVpcRouting) : 'EnhancedVpcRouting must be a boolean',
      Properties+::: { EnhancedVpcRouting: EnhancedVpcRouting },
    },
    '#withClusterParameterGroupName': d.fn('`withClusterParameterGroupName` ClusterParameterGroupName ', [d.arg('ClusterParameterGroupName', d.T.string)]),
    withClusterParameterGroupName(ClusterParameterGroupName): {
      assert std.isString(ClusterParameterGroupName) : 'ClusterParameterGroupName must be a string',
      Properties+::: { ClusterParameterGroupName: ClusterParameterGroupName },
    },
    '#withDeferMaintenanceEndTime': d.fn('`withDeferMaintenanceEndTime` DeferMaintenanceEndTime ', [d.arg('DeferMaintenanceEndTime', d.T.string)]),
    withDeferMaintenanceEndTime(DeferMaintenanceEndTime): {
      assert std.isString(DeferMaintenanceEndTime) : 'DeferMaintenanceEndTime must be a string',
      Properties+::: { DeferMaintenanceEndTime: DeferMaintenanceEndTime },
    },
    '#withRotateEncryptionKey': d.fn('`withRotateEncryptionKey` RotateEncryptionKey ', [d.arg('RotateEncryptionKey', d.T.boolean)]),
    withRotateEncryptionKey(RotateEncryptionKey): {
      assert std.isBoolean(RotateEncryptionKey) : 'RotateEncryptionKey must be a boolean',
      Properties+::: { RotateEncryptionKey: RotateEncryptionKey },
    },
    '#withVpcSecurityGroupIds': d.fn('`withVpcSecurityGroupIds` VpcSecurityGroupIds ', [d.arg('VpcSecurityGroupIds', d.T.array)]),
    withVpcSecurityGroupIds(VpcSecurityGroupIds): {
      assert std.isArray(VpcSecurityGroupIds) : 'VpcSecurityGroupIds must be a array',
      Properties+::: { VpcSecurityGroupIds: VpcSecurityGroupIds },
    },
    '#withClusterNamespaceArn': d.fn('`withClusterNamespaceArn` ClusterNamespaceArn ', [d.arg('ClusterNamespaceArn', d.T.string)]),
    withClusterNamespaceArn(ClusterNamespaceArn): {
      assert std.isString(ClusterNamespaceArn) : 'ClusterNamespaceArn must be a string',
      Properties+::: { ClusterNamespaceArn: ClusterNamespaceArn },
    },
    '#withMasterPasswordSecretArn': d.fn('`withMasterPasswordSecretArn` MasterPasswordSecretArn ', [d.arg('MasterPasswordSecretArn', d.T.string)]),
    withMasterPasswordSecretArn(MasterPasswordSecretArn): {
      assert std.isString(MasterPasswordSecretArn) : 'MasterPasswordSecretArn must be a string',
      Properties+::: { MasterPasswordSecretArn: MasterPasswordSecretArn },
    },
    '#withClusterVersion': d.fn('`withClusterVersion` ClusterVersion ', [d.arg('ClusterVersion', d.T.string)]),
    withClusterVersion(ClusterVersion): {
      assert std.isString(ClusterVersion) : 'ClusterVersion must be a string',
      Properties+::: { ClusterVersion: ClusterVersion },
    },
    '#withHsmConfigurationIdentifier': d.fn('`withHsmConfigurationIdentifier` HsmConfigurationIdentifier ', [d.arg('HsmConfigurationIdentifier', d.T.string)]),
    withHsmConfigurationIdentifier(HsmConfigurationIdentifier): {
      assert std.isString(HsmConfigurationIdentifier) : 'HsmConfigurationIdentifier must be a string',
      Properties+::: { HsmConfigurationIdentifier: HsmConfigurationIdentifier },
    },
    '#withPreferredMaintenanceWindow': d.fn('`withPreferredMaintenanceWindow` PreferredMaintenanceWindow ', [d.arg('PreferredMaintenanceWindow', d.T.string)]),
    withPreferredMaintenanceWindow(PreferredMaintenanceWindow): {
      assert std.isString(PreferredMaintenanceWindow) : 'PreferredMaintenanceWindow must be a string',
      Properties+::: { PreferredMaintenanceWindow: PreferredMaintenanceWindow },
    },
    '#withDeferMaintenanceStartTime': d.fn('`withDeferMaintenanceStartTime` DeferMaintenanceStartTime ', [d.arg('DeferMaintenanceStartTime', d.T.string)]),
    withDeferMaintenanceStartTime(DeferMaintenanceStartTime): {
      assert std.isString(DeferMaintenanceStartTime) : 'DeferMaintenanceStartTime must be a string',
      Properties+::: { DeferMaintenanceStartTime: DeferMaintenanceStartTime },
    },
    '#withClassic': d.fn('`withClassic` Classic ', [d.arg('Classic', d.T.boolean)]),
    withClassic(Classic): {
      assert std.isBoolean(Classic) : 'Classic must be a boolean',
      Properties+::: { Classic: Classic },
    },
    '#withMasterPasswordSecretKmsKeyId': d.fn('`withMasterPasswordSecretKmsKeyId` MasterPasswordSecretKmsKeyId ', [d.arg('MasterPasswordSecretKmsKeyId', d.T.string)]),
    withMasterPasswordSecretKmsKeyId(MasterPasswordSecretKmsKeyId): {
      assert std.isString(MasterPasswordSecretKmsKeyId) : 'MasterPasswordSecretKmsKeyId must be a string',
      Properties+::: { MasterPasswordSecretKmsKeyId: MasterPasswordSecretKmsKeyId },
    },
    '#withDeferMaintenanceDuration': d.fn('`withDeferMaintenanceDuration` DeferMaintenanceDuration ', [d.arg('DeferMaintenanceDuration', d.T.integer)]),
    withDeferMaintenanceDuration(DeferMaintenanceDuration): {
      assert std.isNumber(DeferMaintenanceDuration) : 'DeferMaintenanceDuration must be a integer',
      Properties+::: { DeferMaintenanceDuration: DeferMaintenanceDuration },
    },
    '#withSnapshotCopyRetentionPeriod': d.fn('`withSnapshotCopyRetentionPeriod` SnapshotCopyRetentionPeriod ', [d.arg('SnapshotCopyRetentionPeriod', d.T.integer)]),
    withSnapshotCopyRetentionPeriod(SnapshotCopyRetentionPeriod): {
      assert std.isNumber(SnapshotCopyRetentionPeriod) : 'SnapshotCopyRetentionPeriod must be a integer',
      Properties+::: { SnapshotCopyRetentionPeriod: SnapshotCopyRetentionPeriod },
    },
  },
  ClusterParameterGroup: {
    '#': d.pkg(
      name='ClusterParameterGroup',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Redshift.libsonnet',
      help='Resource Type definition for AWS::Redshift::ClusterParameterGroup',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Redshift::ClusterParameterGroup Resource
        * Description A description of the parameter group.
        * ParameterGroupFamily The Amazon Redshift engine version to which the cluster parameter group applies. The cluster engine version determines the set of parameters.
      |||,
      args=[
        d.arg('Description', 'd.T.string'),
        d.arg('ParameterGroupFamily', 'd.T.string'),
      ]
    ),
    new(
      Description,
      ParameterGroupFamily,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Description) : 'Description must be a string',
        Description: Description,
        assert std.isString(ParameterGroupFamily) : 'ParameterGroupFamily must be a string',
        ParameterGroupFamily: ParameterGroupFamily,
      },
      DependsOn:: [],
      Type: 'AWS::Redshift::ClusterParameterGroup',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withParameterGroupName': d.fn('`withParameterGroupName` ParameterGroupName ', [d.arg('ParameterGroupName', d.T.string)]),
    withParameterGroupName(ParameterGroupName): {
      assert std.isString(ParameterGroupName) : 'ParameterGroupName must be a string',
      Properties+::: { ParameterGroupName: ParameterGroupName },
    },
    '#withParameters': d.fn('`withParameters` Parameters ', [d.arg('Parameters', d.T.array)]),
    withParameters(Parameters): {
      assert std.isArray(Parameters) : 'Parameters must be a array',
      Properties+::: { Parameters: Parameters },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  ClusterSecurityGroup: {
    '#': d.pkg(
      name='ClusterSecurityGroup',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Redshift.libsonnet',
      help='Resource Type definition for AWS::Redshift::ClusterSecurityGroup',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Redshift::ClusterSecurityGroup Resource
        * Description 
      |||,
      args=[
        d.arg('Description', 'd.T.string'),
      ]
    ),
    new(
      Description,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Description) : 'Description must be a string',
        Description: Description,
      },
      DependsOn:: [],
      Type: 'AWS::Redshift::ClusterSecurityGroup',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  ClusterSecurityGroupIngress: {
    '#': d.pkg(
      name='ClusterSecurityGroupIngress',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Redshift.libsonnet',
      help='Resource Type definition for AWS::Redshift::ClusterSecurityGroupIngress',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Redshift::ClusterSecurityGroupIngress Resource
        * ClusterSecurityGroupName 
      |||,
      args=[
        d.arg('ClusterSecurityGroupName', 'd.T.string'),
      ]
    ),
    new(
      ClusterSecurityGroupName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ClusterSecurityGroupName) : 'ClusterSecurityGroupName must be a string',
        ClusterSecurityGroupName: ClusterSecurityGroupName,
      },
      DependsOn:: [],
      Type: 'AWS::Redshift::ClusterSecurityGroupIngress',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withCIDRIP': d.fn('`withCIDRIP` CIDRIP ', [d.arg('CIDRIP', d.T.string)]),
    withCIDRIP(CIDRIP): {
      assert std.isString(CIDRIP) : 'CIDRIP must be a string',
      Properties+::: { CIDRIP: CIDRIP },
    },
    '#withEC2SecurityGroupName': d.fn('`withEC2SecurityGroupName` EC2SecurityGroupName ', [d.arg('EC2SecurityGroupName', d.T.string)]),
    withEC2SecurityGroupName(EC2SecurityGroupName): {
      assert std.isString(EC2SecurityGroupName) : 'EC2SecurityGroupName must be a string',
      Properties+::: { EC2SecurityGroupName: EC2SecurityGroupName },
    },
    '#withEC2SecurityGroupOwnerId': d.fn('`withEC2SecurityGroupOwnerId` EC2SecurityGroupOwnerId ', [d.arg('EC2SecurityGroupOwnerId', d.T.string)]),
    withEC2SecurityGroupOwnerId(EC2SecurityGroupOwnerId): {
      assert std.isString(EC2SecurityGroupOwnerId) : 'EC2SecurityGroupOwnerId must be a string',
      Properties+::: { EC2SecurityGroupOwnerId: EC2SecurityGroupOwnerId },
    },
  },
  ClusterSubnetGroup: {
    '#': d.pkg(
      name='ClusterSubnetGroup',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Redshift.libsonnet',
      help='Specifies an Amazon Redshift subnet group.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Redshift::ClusterSubnetGroup Resource
        * Description The description of the parameter group.
        * SubnetIds The list of VPC subnet IDs
      |||,
      args=[
        d.arg('Description', 'd.T.string'),
        d.arg('SubnetIds', 'd.T.array'),
      ]
    ),
    new(
      Description,
      SubnetIds,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Description) : 'Description must be a string',
        Description: Description,
        assert std.isArray(SubnetIds) : 'SubnetIds must be a array',
        SubnetIds: SubnetIds,
      },
      DependsOn:: [],
      Type: 'AWS::Redshift::ClusterSubnetGroup',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withClusterSubnetGroupName': d.fn('`withClusterSubnetGroupName` ClusterSubnetGroupName ', [d.arg('ClusterSubnetGroupName', d.T.string)]),
    withClusterSubnetGroupName(ClusterSubnetGroupName): {
      assert std.isString(ClusterSubnetGroupName) : 'ClusterSubnetGroupName must be a string',
      Properties+::: { ClusterSubnetGroupName: ClusterSubnetGroupName },
    },
  },
  EndpointAccess: {
    '#': d.pkg(
      name='EndpointAccess',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Redshift.libsonnet',
      help='Resource schema for a Redshift-managed VPC endpoint.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Redshift::EndpointAccess Resource
        * ClusterIdentifier A unique identifier for the cluster. You use this identifier to refer to the cluster for any subsequent cluster operations such as deleting or modifying. All alphabetical characters must be lower case, no hypens at the end, no two consecutive hyphens. Cluster name should be unique for all clusters within an AWS account
        * SubnetGroupName The subnet group name where Amazon Redshift chooses to deploy the endpoint.
        * EndpointName The name of the endpoint.
        * VpcSecurityGroupIds A list of vpc security group ids to apply to the created endpoint access.
      |||,
      args=[
        d.arg('ClusterIdentifier', 'd.T.string'),
        d.arg('SubnetGroupName', 'd.T.string'),
        d.arg('EndpointName', 'd.T.string'),
        d.arg('VpcSecurityGroupIds', 'd.T.array'),
      ]
    ),
    new(
      ClusterIdentifier,
      SubnetGroupName,
      EndpointName,
      VpcSecurityGroupIds,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ClusterIdentifier) : 'ClusterIdentifier must be a string',
        ClusterIdentifier: ClusterIdentifier,
        assert std.isString(SubnetGroupName) : 'SubnetGroupName must be a string',
        SubnetGroupName: SubnetGroupName,
        assert std.isString(EndpointName) : 'EndpointName must be a string',
        EndpointName: EndpointName,
        assert std.isArray(VpcSecurityGroupIds) : 'VpcSecurityGroupIds must be a array',
        VpcSecurityGroupIds: VpcSecurityGroupIds,
      },
      DependsOn:: [],
      Type: 'AWS::Redshift::EndpointAccess',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withEndpointStatus': d.fn('`withEndpointStatus` EndpointStatus ', [d.arg('EndpointStatus', d.T.string)]),
    withEndpointStatus(EndpointStatus): {
      assert std.isString(EndpointStatus) : 'EndpointStatus must be a string',
      Properties+::: { EndpointStatus: EndpointStatus },
    },
    '#withVpcEndpoint': d.fn('`withVpcEndpoint` VpcEndpoint ', [d.arg('VpcEndpoint', d.T.object)]),
    withVpcEndpoint(VpcEndpoint): {
      assert std.isObject(VpcEndpoint) : 'VpcEndpoint must be a object',
      Properties+::: { VpcEndpoint: VpcEndpoint },
    },
    '#withAddress': d.fn('`withAddress` Address ', [d.arg('Address', d.T.string)]),
    withAddress(Address): {
      assert std.isString(Address) : 'Address must be a string',
      Properties+::: { Address: Address },
    },
    '#withResourceOwner': d.fn('`withResourceOwner` ResourceOwner ', [d.arg('ResourceOwner', d.T.string)]),
    withResourceOwner(ResourceOwner): {
      assert std.isString(ResourceOwner) : 'ResourceOwner must be a string',
      Properties+::: { ResourceOwner: ResourceOwner },
    },
    '#withPort': d.fn('`withPort` Port ', [d.arg('Port', d.T.integer)]),
    withPort(Port): {
      assert std.isNumber(Port) : 'Port must be a integer',
      Properties+::: { Port: Port },
    },
    '#withEndpointCreateTime': d.fn('`withEndpointCreateTime` EndpointCreateTime ', [d.arg('EndpointCreateTime', d.T.string)]),
    withEndpointCreateTime(EndpointCreateTime): {
      assert std.isString(EndpointCreateTime) : 'EndpointCreateTime must be a string',
      Properties+::: { EndpointCreateTime: EndpointCreateTime },
    },
    '#withVpcSecurityGroups': d.fn('`withVpcSecurityGroups` VpcSecurityGroups ', [d.arg('VpcSecurityGroups', d.T.array)]),
    withVpcSecurityGroups(VpcSecurityGroups): {
      assert std.isArray(VpcSecurityGroups) : 'VpcSecurityGroups must be a array',
      Properties+::: { VpcSecurityGroups: VpcSecurityGroups },
    },
  },
  EndpointAuthorization: {
    '#': d.pkg(
      name='EndpointAuthorization',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Redshift.libsonnet',
      help='Describes an endpoint authorization for authorizing Redshift-managed VPC endpoint access to a cluster across AWS accounts.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Redshift::EndpointAuthorization Resource
        * ClusterIdentifier The cluster identifier.
        * Account The target AWS account ID to grant or revoke access for.
      |||,
      args=[
        d.arg('ClusterIdentifier', 'd.T.string'),
        d.arg('Account', 'd.T.string'),
      ]
    ),
    new(
      ClusterIdentifier,
      Account,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ClusterIdentifier) : 'ClusterIdentifier must be a string',
        ClusterIdentifier: ClusterIdentifier,
        assert std.isString(Account) : 'Account must be a string',
        Account: Account,
      },
      DependsOn:: [],
      Type: 'AWS::Redshift::EndpointAuthorization',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withStatus': d.fn('`withStatus` Status ', [d.arg('Status', d.T.string)]),
    withStatus(Status): {
      assert std.isString(Status) : 'Status must be a string',
      Properties+::: { Status: Status },
    },
    '#withGrantee': d.fn('`withGrantee` Grantee ', [d.arg('Grantee', d.T.string)]),
    withGrantee(Grantee): {
      assert std.isString(Grantee) : 'Grantee must be a string',
      Properties+::: { Grantee: Grantee },
    },
    '#withGrantor': d.fn('`withGrantor` Grantor ', [d.arg('Grantor', d.T.string)]),
    withGrantor(Grantor): {
      assert std.isString(Grantor) : 'Grantor must be a string',
      Properties+::: { Grantor: Grantor },
    },
    '#withEndpointCount': d.fn('`withEndpointCount` EndpointCount ', [d.arg('EndpointCount', d.T.integer)]),
    withEndpointCount(EndpointCount): {
      assert std.isNumber(EndpointCount) : 'EndpointCount must be a integer',
      Properties+::: { EndpointCount: EndpointCount },
    },
    '#withAuthorizeTime': d.fn('`withAuthorizeTime` AuthorizeTime ', [d.arg('AuthorizeTime', d.T.string)]),
    withAuthorizeTime(AuthorizeTime): {
      assert std.isString(AuthorizeTime) : 'AuthorizeTime must be a string',
      Properties+::: { AuthorizeTime: AuthorizeTime },
    },
    '#withAllowedVPCs': d.fn('`withAllowedVPCs` AllowedVPCs ', [d.arg('AllowedVPCs', d.T.array)]),
    withAllowedVPCs(AllowedVPCs): {
      assert std.isArray(AllowedVPCs) : 'AllowedVPCs must be a array',
      Properties+::: { AllowedVPCs: AllowedVPCs },
    },
    '#withForce': d.fn('`withForce` Force ', [d.arg('Force', d.T.boolean)]),
    withForce(Force): {
      assert std.isBoolean(Force) : 'Force must be a boolean',
      Properties+::: { Force: Force },
    },
    '#withAllowedAllVPCs': d.fn('`withAllowedAllVPCs` AllowedAllVPCs ', [d.arg('AllowedAllVPCs', d.T.boolean)]),
    withAllowedAllVPCs(AllowedAllVPCs): {
      assert std.isBoolean(AllowedAllVPCs) : 'AllowedAllVPCs must be a boolean',
      Properties+::: { AllowedAllVPCs: AllowedAllVPCs },
    },
    '#withVpcIds': d.fn('`withVpcIds` VpcIds ', [d.arg('VpcIds', d.T.array)]),
    withVpcIds(VpcIds): {
      assert std.isArray(VpcIds) : 'VpcIds must be a array',
      Properties+::: { VpcIds: VpcIds },
    },
    '#withClusterStatus': d.fn('`withClusterStatus` ClusterStatus ', [d.arg('ClusterStatus', d.T.string)]),
    withClusterStatus(ClusterStatus): {
      assert std.isString(ClusterStatus) : 'ClusterStatus must be a string',
      Properties+::: { ClusterStatus: ClusterStatus },
    },
  },
  EventSubscription: {
    '#': d.pkg(
      name='EventSubscription',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Redshift.libsonnet',
      help='The AWS::Redshift::EventSubscription resource creates an Amazon Redshift Event Subscription.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Redshift::EventSubscription Resource
        * SubscriptionName The name of the Amazon Redshift event notification subscription
      |||,
      args=[
        d.arg('SubscriptionName', 'd.T.string'),
      ]
    ),
    new(
      SubscriptionName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(SubscriptionName) : 'SubscriptionName must be a string',
        SubscriptionName: SubscriptionName,
      },
      DependsOn:: [],
      Type: 'AWS::Redshift::EventSubscription',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withStatus': d.fn('`withStatus` Status ', [d.arg('Status', d.T.string)]),
    withStatus(Status): {
      assert std.isString(Status) : 'Status must be a string',
      assert Status == 'active' || Status == 'no-permission' || Status == 'topic-not-exist' : "Status must be either 'active' or 'no-permission' or 'topic-not-exist'",
      Properties+::: { Status: Status },
    },
    '#withCustSubscriptionId': d.fn('`withCustSubscriptionId` CustSubscriptionId ', [d.arg('CustSubscriptionId', d.T.string)]),
    withCustSubscriptionId(CustSubscriptionId): {
      assert std.isString(CustSubscriptionId) : 'CustSubscriptionId must be a string',
      Properties+::: { CustSubscriptionId: CustSubscriptionId },
    },
    '#withEventCategoriesList': d.fn('`withEventCategoriesList` EventCategoriesList ', [d.arg('EventCategoriesList', d.T.array)]),
    withEventCategoriesList(EventCategoriesList): {
      assert std.isArray(EventCategoriesList) : 'EventCategoriesList must be a array',
      Properties+::: { EventCategoriesList: EventCategoriesList },
    },
    '#withSourceType': d.fn('`withSourceType` SourceType ', [d.arg('SourceType', d.T.string)]),
    withSourceType(SourceType): {
      assert std.isString(SourceType) : 'SourceType must be a string',
      assert SourceType == 'cluster' || SourceType == 'cluster-parameter-group' || SourceType == 'cluster-security-group' || SourceType == 'cluster-snapshot' || SourceType == 'scheduled-action' : "SourceType must be either 'cluster' or 'cluster-parameter-group' or 'cluster-security-group' or 'cluster-snapshot' or 'scheduled-action'",
      Properties+::: { SourceType: SourceType },
    },
    '#withEventCategories': d.fn('`withEventCategories` EventCategories ', [d.arg('EventCategories', d.T.array)]),
    withEventCategories(EventCategories): {
      assert std.isArray(EventCategories) : 'EventCategories must be a array',
      Properties+::: { EventCategories: EventCategories },
    },
    '#withEnabled': d.fn('`withEnabled` Enabled ', [d.arg('Enabled', d.T.boolean)]),
    withEnabled(Enabled): {
      assert std.isBoolean(Enabled) : 'Enabled must be a boolean',
      Properties+::: { Enabled: Enabled },
    },
    '#withSeverity': d.fn('`withSeverity` Severity ', [d.arg('Severity', d.T.string)]),
    withSeverity(Severity): {
      assert std.isString(Severity) : 'Severity must be a string',
      assert Severity == 'ERROR' || Severity == 'INFO' : "Severity must be either 'ERROR' or 'INFO'",
      Properties+::: { Severity: Severity },
    },
    '#withSourceIds': d.fn('`withSourceIds` SourceIds ', [d.arg('SourceIds', d.T.array)]),
    withSourceIds(SourceIds): {
      assert std.isArray(SourceIds) : 'SourceIds must be a array',
      Properties+::: { SourceIds: SourceIds },
    },
    '#withCustomerAwsId': d.fn('`withCustomerAwsId` CustomerAwsId ', [d.arg('CustomerAwsId', d.T.string)]),
    withCustomerAwsId(CustomerAwsId): {
      assert std.isString(CustomerAwsId) : 'CustomerAwsId must be a string',
      Properties+::: { CustomerAwsId: CustomerAwsId },
    },
    '#withSourceIdsList': d.fn('`withSourceIdsList` SourceIdsList ', [d.arg('SourceIdsList', d.T.array)]),
    withSourceIdsList(SourceIdsList): {
      assert std.isArray(SourceIdsList) : 'SourceIdsList must be a array',
      Properties+::: { SourceIdsList: SourceIdsList },
    },
    '#withSnsTopicArn': d.fn('`withSnsTopicArn` SnsTopicArn ', [d.arg('SnsTopicArn', d.T.string)]),
    withSnsTopicArn(SnsTopicArn): {
      assert std.isString(SnsTopicArn) : 'SnsTopicArn must be a string',
      Properties+::: { SnsTopicArn: SnsTopicArn },
    },
    '#withSubscriptionCreationTime': d.fn('`withSubscriptionCreationTime` SubscriptionCreationTime ', [d.arg('SubscriptionCreationTime', d.T.string)]),
    withSubscriptionCreationTime(SubscriptionCreationTime): {
      assert std.isString(SubscriptionCreationTime) : 'SubscriptionCreationTime must be a string',
      Properties+::: { SubscriptionCreationTime: SubscriptionCreationTime },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  Integration: {
    '#': d.pkg(
      name='Integration',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Redshift.libsonnet',
      help='Integration from a source AWS service to a Redshift cluster',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Redshift::Integration Resource
        * SourceArn The Amazon Resource Name (ARN) of the database to use as the source for replication, for example, arn:aws:dynamodb:us-east-2:123412341234:table/dynamotable
        * TargetArn The Amazon Resource Name (ARN) of the Redshift data warehouse to use as the target for replication, for example, arn:aws:redshift:us-east-2:123412341234:namespace:e43aab3e-10a3-4ec4-83d4-f227ff9bfbcf
      |||,
      args=[
        d.arg('SourceArn', 'd.T.string'),
        d.arg('TargetArn', 'd.T.string'),
      ]
    ),
    new(
      SourceArn,
      TargetArn,
    ): {
      local base = self,
      Properties: {
        assert std.isString(SourceArn) : 'SourceArn must be a string',
        SourceArn: SourceArn,
        assert std.isString(TargetArn) : 'TargetArn must be a string',
        TargetArn: TargetArn,
      },
      DependsOn:: [],
      Type: 'AWS::Redshift::Integration',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withIntegrationArn': d.fn('`withIntegrationArn` IntegrationArn ', [d.arg('IntegrationArn', d.T.string)]),
    withIntegrationArn(IntegrationArn): {
      assert std.isString(IntegrationArn) : 'IntegrationArn must be a string',
      Properties+::: { IntegrationArn: IntegrationArn },
    },
    '#withIntegrationName': d.fn('`withIntegrationName` IntegrationName ', [d.arg('IntegrationName', d.T.string)]),
    withIntegrationName(IntegrationName): {
      assert std.isString(IntegrationName) : 'IntegrationName must be a string',
      Properties+::: { IntegrationName: IntegrationName },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withCreateTime': d.fn('`withCreateTime` CreateTime ', [d.arg('CreateTime', d.T.string)]),
    withCreateTime(CreateTime): {
      assert std.isString(CreateTime) : 'CreateTime must be a string',
      Properties+::: { CreateTime: CreateTime },
    },
    '#withKMSKeyId': d.fn('`withKMSKeyId` KMSKeyId ', [d.arg('KMSKeyId', d.T.string)]),
    withKMSKeyId(KMSKeyId): {
      assert std.isString(KMSKeyId) : 'KMSKeyId must be a string',
      Properties+::: { KMSKeyId: KMSKeyId },
    },
    '#withAdditionalEncryptionContext': d.fn('`withAdditionalEncryptionContext` AdditionalEncryptionContext ', [d.arg('AdditionalEncryptionContext', d.T.object)]),
    withAdditionalEncryptionContext(AdditionalEncryptionContext): {
      assert std.isObject(AdditionalEncryptionContext) : 'AdditionalEncryptionContext must be a object',
      Properties+::: { AdditionalEncryptionContext: AdditionalEncryptionContext },
    },
  },
  ScheduledAction: {
    '#': d.pkg(
      name='ScheduledAction',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Redshift.libsonnet',
      help='The AWS::Redshift::ScheduledAction resource creates an Amazon Redshift Scheduled Action.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Redshift::ScheduledAction Resource
        * ScheduledActionName The name of the scheduled action. The name must be unique within an account.
      |||,
      args=[
        d.arg('ScheduledActionName', 'd.T.string'),
      ]
    ),
    new(
      ScheduledActionName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ScheduledActionName) : 'ScheduledActionName must be a string',
        ScheduledActionName: ScheduledActionName,
      },
      DependsOn:: [],
      Type: 'AWS::Redshift::ScheduledAction',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withScheduledActionDescription': d.fn('`withScheduledActionDescription` ScheduledActionDescription ', [d.arg('ScheduledActionDescription', d.T.string)]),
    withScheduledActionDescription(ScheduledActionDescription): {
      assert std.isString(ScheduledActionDescription) : 'ScheduledActionDescription must be a string',
      Properties+::: { ScheduledActionDescription: ScheduledActionDescription },
    },
    '#withEndTime': d.fn('`withEndTime` EndTime ', [d.arg('EndTime', d.T.string)]),
    withEndTime(EndTime): {
      assert std.isString(EndTime) : 'EndTime must be a string',
      Properties+::: { EndTime: EndTime },
    },
    '#withState': d.fn('`withState` State ', [d.arg('State', d.T.string)]),
    withState(State): {
      assert std.isString(State) : 'State must be a string',
      assert State == 'ACTIVE' || State == 'DISABLED' : "State must be either 'ACTIVE' or 'DISABLED'",
      Properties+::: { State: State },
    },
    '#withSchedule': d.fn('`withSchedule` Schedule ', [d.arg('Schedule', d.T.string)]),
    withSchedule(Schedule): {
      assert std.isString(Schedule) : 'Schedule must be a string',
      Properties+::: { Schedule: Schedule },
    },
    '#withIamRole': d.fn('`withIamRole` IamRole ', [d.arg('IamRole', d.T.string)]),
    withIamRole(IamRole): {
      assert std.isString(IamRole) : 'IamRole must be a string',
      Properties+::: { IamRole: IamRole },
    },
    '#withStartTime': d.fn('`withStartTime` StartTime ', [d.arg('StartTime', d.T.string)]),
    withStartTime(StartTime): {
      assert std.isString(StartTime) : 'StartTime must be a string',
      Properties+::: { StartTime: StartTime },
    },
    '#withEnable': d.fn('`withEnable` Enable ', [d.arg('Enable', d.T.boolean)]),
    withEnable(Enable): {
      assert std.isBoolean(Enable) : 'Enable must be a boolean',
      Properties+::: { Enable: Enable },
    },
    '#withTargetAction': d.fn('`withTargetAction` TargetAction ', [d.arg('TargetAction', d.T.object)]),
    withTargetAction(TargetAction): {
      assert std.isObject(TargetAction) : 'TargetAction must be a object',
      Properties+::: { TargetAction: TargetAction },
    },
    '#withNextInvocations': d.fn('`withNextInvocations` NextInvocations ', [d.arg('NextInvocations', d.T.array)]),
    withNextInvocations(NextInvocations): {
      assert std.isArray(NextInvocations) : 'NextInvocations must be a array',
      Properties+::: { NextInvocations: NextInvocations },
    },
  },
}
