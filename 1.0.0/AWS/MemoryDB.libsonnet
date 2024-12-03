local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  ACL: {
    '#': d.pkg(
      name='ACL',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/MemoryDB.libsonnet',
      help='Resource Type definition for AWS::MemoryDB::ACL',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::MemoryDB::ACL Resource
        * ACLName The name of the acl.
      |||,
      args=[
        d.arg('ACLName', 'd.T.string'),
      ]
    ),
    new(
      ACLName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ACLName) : 'ACLName must be a string',
        ACLName: ACLName,
      },
      DependsOn:: [],
      Type: 'AWS::MemoryDB::ACL',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withStatus': d.fn('`withStatus` Status ', [d.arg('Status', d.T.string)]),
    withStatus(Status): {
      assert std.isString(Status) : 'Status must be a string',
      Properties+::: { Status: Status },
    },
    '#withUserNames': d.fn('`withUserNames` UserNames ', [d.arg('UserNames', d.T.array)]),
    withUserNames(UserNames): {
      assert std.isArray(UserNames) : 'UserNames must be a array',
      Properties+::: { UserNames: UserNames },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  Cluster: {
    '#': d.pkg(
      name='Cluster',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/MemoryDB.libsonnet',
      help='The AWS::MemoryDB::Cluster resource creates an Amazon MemoryDB Cluster.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::MemoryDB::Cluster Resource
        * ClusterName The name of the cluster. This value must be unique as it also serves as the cluster identifier.
        * NodeType The compute and memory capacity of the nodes in the cluster.
        * ACLName The name of the Access Control List to associate with the cluster.
      |||,
      args=[
        d.arg('ClusterName', 'd.T.string'),
        d.arg('NodeType', 'd.T.string'),
        d.arg('ACLName', 'd.T.string'),
      ]
    ),
    new(
      ClusterName,
      NodeType,
      ACLName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ClusterName) : 'ClusterName must be a string',
        ClusterName: ClusterName,
        assert std.isString(NodeType) : 'NodeType must be a string',
        NodeType: NodeType,
        assert std.isString(ACLName) : 'ACLName must be a string',
        ACLName: ACLName,
      },
      DependsOn:: [],
      Type: 'AWS::MemoryDB::Cluster',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withMultiRegionClusterName': d.fn('`withMultiRegionClusterName` MultiRegionClusterName ', [d.arg('MultiRegionClusterName', d.T.string)]),
    withMultiRegionClusterName(MultiRegionClusterName): {
      assert std.isString(MultiRegionClusterName) : 'MultiRegionClusterName must be a string',
      Properties+::: { MultiRegionClusterName: MultiRegionClusterName },
    },
    '#withStatus': d.fn('`withStatus` Status ', [d.arg('Status', d.T.string)]),
    withStatus(Status): {
      assert std.isString(Status) : 'Status must be a string',
      Properties+::: { Status: Status },
    },
    '#withNumShards': d.fn('`withNumShards` NumShards ', [d.arg('NumShards', d.T.integer)]),
    withNumShards(NumShards): {
      assert std.isNumber(NumShards) : 'NumShards must be a integer',
      Properties+::: { NumShards: NumShards },
    },
    '#withNumReplicasPerShard': d.fn('`withNumReplicasPerShard` NumReplicasPerShard ', [d.arg('NumReplicasPerShard', d.T.integer)]),
    withNumReplicasPerShard(NumReplicasPerShard): {
      assert std.isNumber(NumReplicasPerShard) : 'NumReplicasPerShard must be a integer',
      Properties+::: { NumReplicasPerShard: NumReplicasPerShard },
    },
    '#withSubnetGroupName': d.fn('`withSubnetGroupName` SubnetGroupName ', [d.arg('SubnetGroupName', d.T.string)]),
    withSubnetGroupName(SubnetGroupName): {
      assert std.isString(SubnetGroupName) : 'SubnetGroupName must be a string',
      Properties+::: { SubnetGroupName: SubnetGroupName },
    },
    '#withSecurityGroupIds': d.fn('`withSecurityGroupIds` SecurityGroupIds ', [d.arg('SecurityGroupIds', d.T.array)]),
    withSecurityGroupIds(SecurityGroupIds): {
      assert std.isArray(SecurityGroupIds) : 'SecurityGroupIds must be a array',
      Properties+::: { SecurityGroupIds: SecurityGroupIds },
    },
    '#withMaintenanceWindow': d.fn('`withMaintenanceWindow` MaintenanceWindow ', [d.arg('MaintenanceWindow', d.T.string)]),
    withMaintenanceWindow(MaintenanceWindow): {
      assert std.isString(MaintenanceWindow) : 'MaintenanceWindow must be a string',
      Properties+::: { MaintenanceWindow: MaintenanceWindow },
    },
    '#withParameterGroupName': d.fn('`withParameterGroupName` ParameterGroupName ', [d.arg('ParameterGroupName', d.T.string)]),
    withParameterGroupName(ParameterGroupName): {
      assert std.isString(ParameterGroupName) : 'ParameterGroupName must be a string',
      Properties+::: { ParameterGroupName: ParameterGroupName },
    },
    '#withParameterGroupStatus': d.fn('`withParameterGroupStatus` ParameterGroupStatus ', [d.arg('ParameterGroupStatus', d.T.string)]),
    withParameterGroupStatus(ParameterGroupStatus): {
      assert std.isString(ParameterGroupStatus) : 'ParameterGroupStatus must be a string',
      Properties+::: { ParameterGroupStatus: ParameterGroupStatus },
    },
    '#withPort': d.fn('`withPort` Port ', [d.arg('Port', d.T.integer)]),
    withPort(Port): {
      assert std.isNumber(Port) : 'Port must be a integer',
      Properties+::: { Port: Port },
    },
    '#withSnapshotRetentionLimit': d.fn('`withSnapshotRetentionLimit` SnapshotRetentionLimit ', [d.arg('SnapshotRetentionLimit', d.T.integer)]),
    withSnapshotRetentionLimit(SnapshotRetentionLimit): {
      assert std.isNumber(SnapshotRetentionLimit) : 'SnapshotRetentionLimit must be a integer',
      Properties+::: { SnapshotRetentionLimit: SnapshotRetentionLimit },
    },
    '#withSnapshotWindow': d.fn('`withSnapshotWindow` SnapshotWindow ', [d.arg('SnapshotWindow', d.T.string)]),
    withSnapshotWindow(SnapshotWindow): {
      assert std.isString(SnapshotWindow) : 'SnapshotWindow must be a string',
      Properties+::: { SnapshotWindow: SnapshotWindow },
    },
    '#withSnsTopicArn': d.fn('`withSnsTopicArn` SnsTopicArn ', [d.arg('SnsTopicArn', d.T.string)]),
    withSnsTopicArn(SnsTopicArn): {
      assert std.isString(SnsTopicArn) : 'SnsTopicArn must be a string',
      Properties+::: { SnsTopicArn: SnsTopicArn },
    },
    '#withSnsTopicStatus': d.fn('`withSnsTopicStatus` SnsTopicStatus ', [d.arg('SnsTopicStatus', d.T.string)]),
    withSnsTopicStatus(SnsTopicStatus): {
      assert std.isString(SnsTopicStatus) : 'SnsTopicStatus must be a string',
      Properties+::: { SnsTopicStatus: SnsTopicStatus },
    },
    '#withTLSEnabled': d.fn('`withTLSEnabled` TLSEnabled ', [d.arg('TLSEnabled', d.T.boolean)]),
    withTLSEnabled(TLSEnabled): {
      assert std.isBoolean(TLSEnabled) : 'TLSEnabled must be a boolean',
      Properties+::: { TLSEnabled: TLSEnabled },
    },
    '#withDataTiering': d.fn('`withDataTiering` DataTiering ', [d.arg('DataTiering', d.T.object)]),
    withDataTiering(DataTiering): {
      assert std.isObject(DataTiering) : 'DataTiering must be a object',
      Properties+::: { DataTiering: DataTiering },
    },
    '#withKmsKeyId': d.fn('`withKmsKeyId` KmsKeyId ', [d.arg('KmsKeyId', d.T.string)]),
    withKmsKeyId(KmsKeyId): {
      assert std.isString(KmsKeyId) : 'KmsKeyId must be a string',
      Properties+::: { KmsKeyId: KmsKeyId },
    },
    '#withSnapshotArns': d.fn('`withSnapshotArns` SnapshotArns ', [d.arg('SnapshotArns', d.T.array)]),
    withSnapshotArns(SnapshotArns): {
      assert std.isArray(SnapshotArns) : 'SnapshotArns must be a array',
      Properties+::: { SnapshotArns: SnapshotArns },
    },
    '#withSnapshotName': d.fn('`withSnapshotName` SnapshotName ', [d.arg('SnapshotName', d.T.string)]),
    withSnapshotName(SnapshotName): {
      assert std.isString(SnapshotName) : 'SnapshotName must be a string',
      Properties+::: { SnapshotName: SnapshotName },
    },
    '#withFinalSnapshotName': d.fn('`withFinalSnapshotName` FinalSnapshotName ', [d.arg('FinalSnapshotName', d.T.string)]),
    withFinalSnapshotName(FinalSnapshotName): {
      assert std.isString(FinalSnapshotName) : 'FinalSnapshotName must be a string',
      Properties+::: { FinalSnapshotName: FinalSnapshotName },
    },
    '#withARN': d.fn('`withARN` ARN ', [d.arg('ARN', d.T.string)]),
    withARN(ARN): {
      assert std.isString(ARN) : 'ARN must be a string',
      Properties+::: { ARN: ARN },
    },
    '#withEngine': d.fn('`withEngine` Engine ', [d.arg('Engine', d.T.string)]),
    withEngine(Engine): {
      assert std.isString(Engine) : 'Engine must be a string',
      Properties+::: { Engine: Engine },
    },
    '#withEngineVersion': d.fn('`withEngineVersion` EngineVersion ', [d.arg('EngineVersion', d.T.string)]),
    withEngineVersion(EngineVersion): {
      assert std.isString(EngineVersion) : 'EngineVersion must be a string',
      Properties+::: { EngineVersion: EngineVersion },
    },
    '#withClusterEndpoint': d.fn('`withClusterEndpoint` ClusterEndpoint ', [d.arg('ClusterEndpoint', d.T.object)]),
    withClusterEndpoint(ClusterEndpoint): {
      assert std.isObject(ClusterEndpoint) : 'ClusterEndpoint must be a object',
      Properties+::: { ClusterEndpoint: ClusterEndpoint },
    },
    '#withAutoMinorVersionUpgrade': d.fn('`withAutoMinorVersionUpgrade` AutoMinorVersionUpgrade ', [d.arg('AutoMinorVersionUpgrade', d.T.boolean)]),
    withAutoMinorVersionUpgrade(AutoMinorVersionUpgrade): {
      assert std.isBoolean(AutoMinorVersionUpgrade) : 'AutoMinorVersionUpgrade must be a boolean',
      Properties+::: { AutoMinorVersionUpgrade: AutoMinorVersionUpgrade },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  MultiRegionCluster: {
    '#': d.pkg(
      name='MultiRegionCluster',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/MemoryDB.libsonnet',
      help='The AWS::MemoryDB::Multi Region Cluster resource creates an Amazon MemoryDB Multi Region Cluster.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::MemoryDB::MultiRegionCluster Resource
        * NodeType The compute and memory capacity of the nodes in the multi region cluster.
      |||,
      args=[
        d.arg('NodeType', 'd.T.string'),
      ]
    ),
    new(
      NodeType,
    ): {
      local base = self,
      Properties: {
        assert std.isString(NodeType) : 'NodeType must be a string',
        NodeType: NodeType,
      },
      DependsOn:: [],
      Type: 'AWS::MemoryDB::MultiRegionCluster',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withMultiRegionClusterNameSuffix': d.fn('`withMultiRegionClusterNameSuffix` MultiRegionClusterNameSuffix ', [d.arg('MultiRegionClusterNameSuffix', d.T.string)]),
    withMultiRegionClusterNameSuffix(MultiRegionClusterNameSuffix): {
      assert std.isString(MultiRegionClusterNameSuffix) : 'MultiRegionClusterNameSuffix must be a string',
      Properties+::: { MultiRegionClusterNameSuffix: MultiRegionClusterNameSuffix },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withMultiRegionClusterName': d.fn('`withMultiRegionClusterName` MultiRegionClusterName ', [d.arg('MultiRegionClusterName', d.T.string)]),
    withMultiRegionClusterName(MultiRegionClusterName): {
      assert std.isString(MultiRegionClusterName) : 'MultiRegionClusterName must be a string',
      Properties+::: { MultiRegionClusterName: MultiRegionClusterName },
    },
    '#withStatus': d.fn('`withStatus` Status ', [d.arg('Status', d.T.string)]),
    withStatus(Status): {
      assert std.isString(Status) : 'Status must be a string',
      Properties+::: { Status: Status },
    },
    '#withNumShards': d.fn('`withNumShards` NumShards ', [d.arg('NumShards', d.T.integer)]),
    withNumShards(NumShards): {
      assert std.isNumber(NumShards) : 'NumShards must be a integer',
      Properties+::: { NumShards: NumShards },
    },
    '#withMultiRegionParameterGroupName': d.fn('`withMultiRegionParameterGroupName` MultiRegionParameterGroupName ', [d.arg('MultiRegionParameterGroupName', d.T.string)]),
    withMultiRegionParameterGroupName(MultiRegionParameterGroupName): {
      assert std.isString(MultiRegionParameterGroupName) : 'MultiRegionParameterGroupName must be a string',
      Properties+::: { MultiRegionParameterGroupName: MultiRegionParameterGroupName },
    },
    '#withTLSEnabled': d.fn('`withTLSEnabled` TLSEnabled ', [d.arg('TLSEnabled', d.T.boolean)]),
    withTLSEnabled(TLSEnabled): {
      assert std.isBoolean(TLSEnabled) : 'TLSEnabled must be a boolean',
      Properties+::: { TLSEnabled: TLSEnabled },
    },
    '#withARN': d.fn('`withARN` ARN ', [d.arg('ARN', d.T.string)]),
    withARN(ARN): {
      assert std.isString(ARN) : 'ARN must be a string',
      Properties+::: { ARN: ARN },
    },
    '#withEngine': d.fn('`withEngine` Engine ', [d.arg('Engine', d.T.string)]),
    withEngine(Engine): {
      assert std.isString(Engine) : 'Engine must be a string',
      Properties+::: { Engine: Engine },
    },
    '#withEngineVersion': d.fn('`withEngineVersion` EngineVersion ', [d.arg('EngineVersion', d.T.string)]),
    withEngineVersion(EngineVersion): {
      assert std.isString(EngineVersion) : 'EngineVersion must be a string',
      Properties+::: { EngineVersion: EngineVersion },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withUpdateStrategy': d.fn('`withUpdateStrategy` UpdateStrategy ', [d.arg('UpdateStrategy', d.T.string)]),
    withUpdateStrategy(UpdateStrategy): {
      assert std.isString(UpdateStrategy) : 'UpdateStrategy must be a string',
      assert UpdateStrategy == 'COORDINATED' || UpdateStrategy == 'UNCOORDINATED' : "UpdateStrategy must be either 'COORDINATED' or 'UNCOORDINATED'",
      Properties+::: { UpdateStrategy: UpdateStrategy },
    },
  },
  ParameterGroup: {
    '#': d.pkg(
      name='ParameterGroup',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/MemoryDB.libsonnet',
      help='The AWS::MemoryDB::ParameterGroup resource creates an Amazon MemoryDB ParameterGroup.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::MemoryDB::ParameterGroup Resource
        * ParameterGroupName The name of the parameter group.
        * Family The name of the parameter group family that this parameter group is compatible with.
      |||,
      args=[
        d.arg('ParameterGroupName', 'd.T.string'),
        d.arg('Family', 'd.T.string'),
      ]
    ),
    new(
      ParameterGroupName,
      Family,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ParameterGroupName) : 'ParameterGroupName must be a string',
        ParameterGroupName: ParameterGroupName,
        assert std.isString(Family) : 'Family must be a string',
        Family: Family,
      },
      DependsOn:: [],
      Type: 'AWS::MemoryDB::ParameterGroup',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withParameters': d.fn('`withParameters` Parameters ', [d.arg('Parameters', d.T.object)]),
    withParameters(Parameters): {
      assert std.isObject(Parameters) : 'Parameters must be a object',
      Properties+::: { Parameters: Parameters },
    },
    '#withARN': d.fn('`withARN` ARN ', [d.arg('ARN', d.T.string)]),
    withARN(ARN): {
      assert std.isString(ARN) : 'ARN must be a string',
      Properties+::: { ARN: ARN },
    },
  },
  SubnetGroup: {
    '#': d.pkg(
      name='SubnetGroup',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/MemoryDB.libsonnet',
      help='The AWS::MemoryDB::SubnetGroup resource creates an Amazon MemoryDB Subnet Group.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::MemoryDB::SubnetGroup Resource
        * SubnetGroupName The name of the subnet group. This value must be unique as it also serves as the subnet group identifier.
        * SubnetIds A list of VPC subnet IDs for the subnet group.
      |||,
      args=[
        d.arg('SubnetGroupName', 'd.T.string'),
        d.arg('SubnetIds', 'd.T.array'),
      ]
    ),
    new(
      SubnetGroupName,
      SubnetIds,
    ): {
      local base = self,
      Properties: {
        assert std.isString(SubnetGroupName) : 'SubnetGroupName must be a string',
        SubnetGroupName: SubnetGroupName,
        assert std.isArray(SubnetIds) : 'SubnetIds must be a array',
        SubnetIds: SubnetIds,
      },
      DependsOn:: [],
      Type: 'AWS::MemoryDB::SubnetGroup',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withARN': d.fn('`withARN` ARN ', [d.arg('ARN', d.T.string)]),
    withARN(ARN): {
      assert std.isString(ARN) : 'ARN must be a string',
      Properties+::: { ARN: ARN },
    },
  },
  User: {
    '#': d.pkg(
      name='User',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/MemoryDB.libsonnet',
      help='Resource Type definition for AWS::MemoryDB::User',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::MemoryDB::User Resource
        * UserName The name of the user.
      |||,
      args=[
        d.arg('UserName', 'd.T.string'),
      ]
    ),
    new(
      UserName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(UserName) : 'UserName must be a string',
        UserName: UserName,
      },
      DependsOn:: [],
      Type: 'AWS::MemoryDB::User',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withStatus': d.fn('`withStatus` Status ', [d.arg('Status', d.T.string)]),
    withStatus(Status): {
      assert std.isString(Status) : 'Status must be a string',
      Properties+::: { Status: Status },
    },
    '#withAccessString': d.fn('`withAccessString` AccessString ', [d.arg('AccessString', d.T.string)]),
    withAccessString(AccessString): {
      assert std.isString(AccessString) : 'AccessString must be a string',
      Properties+::: { AccessString: AccessString },
    },
    '#withAuthenticationMode': d.fn('`withAuthenticationMode` AuthenticationMode ', [d.arg('AuthenticationMode', d.T.object)]),
    withAuthenticationMode(AuthenticationMode): {
      assert std.isObject(AuthenticationMode) : 'AuthenticationMode must be a object',
      Properties+::: { AuthenticationMode: AuthenticationMode },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
}
