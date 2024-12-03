local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  Namespace: {
    '#': d.pkg(
      name='Namespace',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/RedshiftServerless.libsonnet',
      help='Definition of AWS::RedshiftServerless::Namespace Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::RedshiftServerless::Namespace Resource
        * NamespaceName A unique identifier for the namespace. You use this identifier to refer to the namespace for any subsequent namespace operations such as deleting or modifying. All alphabetical characters must be lower case. Namespace name should be unique for all namespaces within an AWS account.
      |||,
      args=[
        d.arg('NamespaceName', 'd.T.string'),
      ]
    ),
    new(
      NamespaceName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(NamespaceName) : 'NamespaceName must be a string',
        NamespaceName: NamespaceName,
      },
      DependsOn:: [],
      Type: 'AWS::RedshiftServerless::Namespace',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withAdminPasswordSecretKmsKeyId': d.fn('`withAdminPasswordSecretKmsKeyId` AdminPasswordSecretKmsKeyId ', [d.arg('AdminPasswordSecretKmsKeyId', d.T.string)]),
    withAdminPasswordSecretKmsKeyId(AdminPasswordSecretKmsKeyId): {
      assert std.isString(AdminPasswordSecretKmsKeyId) : 'AdminPasswordSecretKmsKeyId must be a string',
      Properties+::: { AdminPasswordSecretKmsKeyId: AdminPasswordSecretKmsKeyId },
    },
    '#withAdminUserPassword': d.fn('`withAdminUserPassword` AdminUserPassword ', [d.arg('AdminUserPassword', d.T.string)]),
    withAdminUserPassword(AdminUserPassword): {
      assert std.isString(AdminUserPassword) : 'AdminUserPassword must be a string',
      Properties+::: { AdminUserPassword: AdminUserPassword },
    },
    '#withAdminUsername': d.fn('`withAdminUsername` AdminUsername ', [d.arg('AdminUsername', d.T.string)]),
    withAdminUsername(AdminUsername): {
      assert std.isString(AdminUsername) : 'AdminUsername must be a string',
      Properties+::: { AdminUsername: AdminUsername },
    },
    '#withDbName': d.fn('`withDbName` DbName ', [d.arg('DbName', d.T.string)]),
    withDbName(DbName): {
      assert std.isString(DbName) : 'DbName must be a string',
      Properties+::: { DbName: DbName },
    },
    '#withDefaultIamRoleArn': d.fn('`withDefaultIamRoleArn` DefaultIamRoleArn ', [d.arg('DefaultIamRoleArn', d.T.string)]),
    withDefaultIamRoleArn(DefaultIamRoleArn): {
      assert std.isString(DefaultIamRoleArn) : 'DefaultIamRoleArn must be a string',
      Properties+::: { DefaultIamRoleArn: DefaultIamRoleArn },
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
    '#withLogExports': d.fn('`withLogExports` LogExports ', [d.arg('LogExports', d.T.array)]),
    withLogExports(LogExports): {
      assert std.isArray(LogExports) : 'LogExports must be a array',
      Properties+::: { LogExports: LogExports },
    },
    '#withManageAdminPassword': d.fn('`withManageAdminPassword` ManageAdminPassword ', [d.arg('ManageAdminPassword', d.T.boolean)]),
    withManageAdminPassword(ManageAdminPassword): {
      assert std.isBoolean(ManageAdminPassword) : 'ManageAdminPassword must be a boolean',
      Properties+::: { ManageAdminPassword: ManageAdminPassword },
    },
    '#withNamespace': d.fn('`withNamespace` Namespace ', [d.arg('Namespace', d.T.object)]),
    withNamespace(Namespace): {
      assert std.isObject(Namespace) : 'Namespace must be a object',
      Properties+::: { Namespace: Namespace },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withFinalSnapshotName': d.fn('`withFinalSnapshotName` FinalSnapshotName ', [d.arg('FinalSnapshotName', d.T.string)]),
    withFinalSnapshotName(FinalSnapshotName): {
      assert std.isString(FinalSnapshotName) : 'FinalSnapshotName must be a string',
      Properties+::: { FinalSnapshotName: FinalSnapshotName },
    },
    '#withFinalSnapshotRetentionPeriod': d.fn('`withFinalSnapshotRetentionPeriod` FinalSnapshotRetentionPeriod ', [d.arg('FinalSnapshotRetentionPeriod', d.T.integer)]),
    withFinalSnapshotRetentionPeriod(FinalSnapshotRetentionPeriod): {
      assert std.isNumber(FinalSnapshotRetentionPeriod) : 'FinalSnapshotRetentionPeriod must be a integer',
      Properties+::: { FinalSnapshotRetentionPeriod: FinalSnapshotRetentionPeriod },
    },
    '#withNamespaceResourcePolicy': d.fn('`withNamespaceResourcePolicy` NamespaceResourcePolicy ', [d.arg('NamespaceResourcePolicy', d.T.object)]),
    withNamespaceResourcePolicy(NamespaceResourcePolicy): {
      assert std.isObject(NamespaceResourcePolicy) : 'NamespaceResourcePolicy must be a object',
      Properties+::: { NamespaceResourcePolicy: NamespaceResourcePolicy },
    },
    '#withRedshiftIdcApplicationArn': d.fn('`withRedshiftIdcApplicationArn` RedshiftIdcApplicationArn ', [d.arg('RedshiftIdcApplicationArn', d.T.string)]),
    withRedshiftIdcApplicationArn(RedshiftIdcApplicationArn): {
      assert std.isString(RedshiftIdcApplicationArn) : 'RedshiftIdcApplicationArn must be a string',
      Properties+::: { RedshiftIdcApplicationArn: RedshiftIdcApplicationArn },
    },
    '#withSnapshotCopyConfigurations': d.fn('`withSnapshotCopyConfigurations` SnapshotCopyConfigurations ', [d.arg('SnapshotCopyConfigurations', d.T.array)]),
    withSnapshotCopyConfigurations(SnapshotCopyConfigurations): {
      assert std.isArray(SnapshotCopyConfigurations) : 'SnapshotCopyConfigurations must be a array',
      Properties+::: { SnapshotCopyConfigurations: SnapshotCopyConfigurations },
    },
  },
  Workgroup: {
    '#': d.pkg(
      name='Workgroup',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/RedshiftServerless.libsonnet',
      help='Definition of AWS::RedshiftServerless::Workgroup Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::RedshiftServerless::Workgroup Resource
        * WorkgroupName The name of the workgroup.
      |||,
      args=[
        d.arg('WorkgroupName', 'd.T.string'),
      ]
    ),
    new(
      WorkgroupName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(WorkgroupName) : 'WorkgroupName must be a string',
        WorkgroupName: WorkgroupName,
      },
      DependsOn:: [],
      Type: 'AWS::RedshiftServerless::Workgroup',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withNamespaceName': d.fn('`withNamespaceName` NamespaceName ', [d.arg('NamespaceName', d.T.string)]),
    withNamespaceName(NamespaceName): {
      assert std.isString(NamespaceName) : 'NamespaceName must be a string',
      Properties+::: { NamespaceName: NamespaceName },
    },
    '#withBaseCapacity': d.fn('`withBaseCapacity` BaseCapacity ', [d.arg('BaseCapacity', d.T.integer)]),
    withBaseCapacity(BaseCapacity): {
      assert std.isNumber(BaseCapacity) : 'BaseCapacity must be a integer',
      Properties+::: { BaseCapacity: BaseCapacity },
    },
    '#withMaxCapacity': d.fn('`withMaxCapacity` MaxCapacity ', [d.arg('MaxCapacity', d.T.integer)]),
    withMaxCapacity(MaxCapacity): {
      assert std.isNumber(MaxCapacity) : 'MaxCapacity must be a integer',
      Properties+::: { MaxCapacity: MaxCapacity },
    },
    '#withEnhancedVpcRouting': d.fn('`withEnhancedVpcRouting` EnhancedVpcRouting ', [d.arg('EnhancedVpcRouting', d.T.boolean)]),
    withEnhancedVpcRouting(EnhancedVpcRouting): {
      assert std.isBoolean(EnhancedVpcRouting) : 'EnhancedVpcRouting must be a boolean',
      Properties+::: { EnhancedVpcRouting: EnhancedVpcRouting },
    },
    '#withConfigParameters': d.fn('`withConfigParameters` ConfigParameters ', [d.arg('ConfigParameters', d.T.array)]),
    withConfigParameters(ConfigParameters): {
      assert std.isArray(ConfigParameters) : 'ConfigParameters must be a array',
      Properties+::: { ConfigParameters: ConfigParameters },
    },
    '#withSecurityGroupIds': d.fn('`withSecurityGroupIds` SecurityGroupIds ', [d.arg('SecurityGroupIds', d.T.array)]),
    withSecurityGroupIds(SecurityGroupIds): {
      assert std.isArray(SecurityGroupIds) : 'SecurityGroupIds must be a array',
      Properties+::: { SecurityGroupIds: SecurityGroupIds },
    },
    '#withSubnetIds': d.fn('`withSubnetIds` SubnetIds ', [d.arg('SubnetIds', d.T.array)]),
    withSubnetIds(SubnetIds): {
      assert std.isArray(SubnetIds) : 'SubnetIds must be a array',
      Properties+::: { SubnetIds: SubnetIds },
    },
    '#withPubliclyAccessible': d.fn('`withPubliclyAccessible` PubliclyAccessible ', [d.arg('PubliclyAccessible', d.T.boolean)]),
    withPubliclyAccessible(PubliclyAccessible): {
      assert std.isBoolean(PubliclyAccessible) : 'PubliclyAccessible must be a boolean',
      Properties+::: { PubliclyAccessible: PubliclyAccessible },
    },
    '#withPort': d.fn('`withPort` Port ', [d.arg('Port', d.T.integer)]),
    withPort(Port): {
      assert std.isNumber(Port) : 'Port must be a integer',
      Properties+::: { Port: Port },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withWorkgroup': d.fn('`withWorkgroup` Workgroup ', [d.arg('Workgroup', d.T.object)]),
    withWorkgroup(Workgroup): {
      assert std.isObject(Workgroup) : 'Workgroup must be a object',
      Properties+::: { Workgroup: Workgroup },
    },
  },
}
