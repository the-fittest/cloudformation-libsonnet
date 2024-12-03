local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  Cluster: {
    '#': d.pkg(
      name='Cluster',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/DocDBElastic.libsonnet',
      help='The AWS::DocDBElastic::Cluster Amazon DocumentDB (with MongoDB compatibility) Elastic Scale resource describes a Cluster',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::DocDBElastic::Cluster Resource
        * ClusterName 
        * AdminUserName 
        * ShardCapacity 
        * ShardCount 
        * AuthType 
      |||,
      args=[
        d.arg('ClusterName', 'd.T.string'),
        d.arg('AdminUserName', 'd.T.string'),
        d.arg('ShardCapacity', 'd.T.integer'),
        d.arg('ShardCount', 'd.T.integer'),
        d.arg('AuthType', 'd.T.string'),
      ]
    ),
    new(
      ClusterName,
      AdminUserName,
      ShardCapacity,
      ShardCount,
      AuthType,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ClusterName) : 'ClusterName must be a string',
        ClusterName: ClusterName,
        assert std.isString(AdminUserName) : 'AdminUserName must be a string',
        AdminUserName: AdminUserName,
        assert std.isNumber(ShardCapacity) : 'ShardCapacity must be a integer',
        ShardCapacity: ShardCapacity,
        assert std.isNumber(ShardCount) : 'ShardCount must be a integer',
        ShardCount: ShardCount,
        assert std.isString(AuthType) : 'AuthType must be a string',
        AuthType: AuthType,
      },
      DependsOn:: [],
      Type: 'AWS::DocDBElastic::Cluster',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withClusterArn': d.fn('`withClusterArn` ClusterArn ', [d.arg('ClusterArn', d.T.string)]),
    withClusterArn(ClusterArn): {
      assert std.isString(ClusterArn) : 'ClusterArn must be a string',
      Properties+::: { ClusterArn: ClusterArn },
    },
    '#withClusterEndpoint': d.fn('`withClusterEndpoint` ClusterEndpoint ', [d.arg('ClusterEndpoint', d.T.string)]),
    withClusterEndpoint(ClusterEndpoint): {
      assert std.isString(ClusterEndpoint) : 'ClusterEndpoint must be a string',
      Properties+::: { ClusterEndpoint: ClusterEndpoint },
    },
    '#withAdminUserPassword': d.fn('`withAdminUserPassword` AdminUserPassword ', [d.arg('AdminUserPassword', d.T.string)]),
    withAdminUserPassword(AdminUserPassword): {
      assert std.isString(AdminUserPassword) : 'AdminUserPassword must be a string',
      Properties+::: { AdminUserPassword: AdminUserPassword },
    },
    '#withVpcSecurityGroupIds': d.fn('`withVpcSecurityGroupIds` VpcSecurityGroupIds ', [d.arg('VpcSecurityGroupIds', d.T.array)]),
    withVpcSecurityGroupIds(VpcSecurityGroupIds): {
      assert std.isArray(VpcSecurityGroupIds) : 'VpcSecurityGroupIds must be a array',
      Properties+::: { VpcSecurityGroupIds: VpcSecurityGroupIds },
    },
    '#withSubnetIds': d.fn('`withSubnetIds` SubnetIds ', [d.arg('SubnetIds', d.T.array)]),
    withSubnetIds(SubnetIds): {
      assert std.isArray(SubnetIds) : 'SubnetIds must be a array',
      Properties+::: { SubnetIds: SubnetIds },
    },
    '#withPreferredMaintenanceWindow': d.fn('`withPreferredMaintenanceWindow` PreferredMaintenanceWindow ', [d.arg('PreferredMaintenanceWindow', d.T.string)]),
    withPreferredMaintenanceWindow(PreferredMaintenanceWindow): {
      assert std.isString(PreferredMaintenanceWindow) : 'PreferredMaintenanceWindow must be a string',
      Properties+::: { PreferredMaintenanceWindow: PreferredMaintenanceWindow },
    },
    '#withPreferredBackupWindow': d.fn('`withPreferredBackupWindow` PreferredBackupWindow ', [d.arg('PreferredBackupWindow', d.T.string)]),
    withPreferredBackupWindow(PreferredBackupWindow): {
      assert std.isString(PreferredBackupWindow) : 'PreferredBackupWindow must be a string',
      Properties+::: { PreferredBackupWindow: PreferredBackupWindow },
    },
    '#withBackupRetentionPeriod': d.fn('`withBackupRetentionPeriod` BackupRetentionPeriod ', [d.arg('BackupRetentionPeriod', d.T.integer)]),
    withBackupRetentionPeriod(BackupRetentionPeriod): {
      assert std.isNumber(BackupRetentionPeriod) : 'BackupRetentionPeriod must be a integer',
      Properties+::: { BackupRetentionPeriod: BackupRetentionPeriod },
    },
    '#withShardInstanceCount': d.fn('`withShardInstanceCount` ShardInstanceCount ', [d.arg('ShardInstanceCount', d.T.integer)]),
    withShardInstanceCount(ShardInstanceCount): {
      assert std.isNumber(ShardInstanceCount) : 'ShardInstanceCount must be a integer',
      Properties+::: { ShardInstanceCount: ShardInstanceCount },
    },
    '#withKmsKeyId': d.fn('`withKmsKeyId` KmsKeyId ', [d.arg('KmsKeyId', d.T.string)]),
    withKmsKeyId(KmsKeyId): {
      assert std.isString(KmsKeyId) : 'KmsKeyId must be a string',
      Properties+::: { KmsKeyId: KmsKeyId },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
}
