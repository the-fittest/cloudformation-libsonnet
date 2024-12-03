local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  Server: {
    '#': d.pkg(
      name='Server',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/OpsWorksCM.libsonnet',
      help='Resource Type definition for AWS::OpsWorksCM::Server',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::OpsWorksCM::Server Resource
        * ServiceRoleArn 
        * InstanceProfileArn 
        * InstanceType 
      |||,
      args=[
        d.arg('ServiceRoleArn', 'd.T.string'),
        d.arg('InstanceProfileArn', 'd.T.string'),
        d.arg('InstanceType', 'd.T.string'),
      ]
    ),
    new(
      ServiceRoleArn,
      InstanceProfileArn,
      InstanceType,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ServiceRoleArn) : 'ServiceRoleArn must be a string',
        ServiceRoleArn: ServiceRoleArn,
        assert std.isString(InstanceProfileArn) : 'InstanceProfileArn must be a string',
        InstanceProfileArn: InstanceProfileArn,
        assert std.isString(InstanceType) : 'InstanceType must be a string',
        InstanceType: InstanceType,
      },
      DependsOn:: [],
      Type: 'AWS::OpsWorksCM::Server',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withKeyPair': d.fn('`withKeyPair` KeyPair ', [d.arg('KeyPair', d.T.string)]),
    withKeyPair(KeyPair): {
      assert std.isString(KeyPair) : 'KeyPair must be a string',
      Properties+::: { KeyPair: KeyPair },
    },
    '#withEngineVersion': d.fn('`withEngineVersion` EngineVersion ', [d.arg('EngineVersion', d.T.string)]),
    withEngineVersion(EngineVersion): {
      assert std.isString(EngineVersion) : 'EngineVersion must be a string',
      Properties+::: { EngineVersion: EngineVersion },
    },
    '#withDisableAutomatedBackup': d.fn('`withDisableAutomatedBackup` DisableAutomatedBackup ', [d.arg('DisableAutomatedBackup', d.T.boolean)]),
    withDisableAutomatedBackup(DisableAutomatedBackup): {
      assert std.isBoolean(DisableAutomatedBackup) : 'DisableAutomatedBackup must be a boolean',
      Properties+::: { DisableAutomatedBackup: DisableAutomatedBackup },
    },
    '#withBackupId': d.fn('`withBackupId` BackupId ', [d.arg('BackupId', d.T.string)]),
    withBackupId(BackupId): {
      assert std.isString(BackupId) : 'BackupId must be a string',
      Properties+::: { BackupId: BackupId },
    },
    '#withEngineModel': d.fn('`withEngineModel` EngineModel ', [d.arg('EngineModel', d.T.string)]),
    withEngineModel(EngineModel): {
      assert std.isString(EngineModel) : 'EngineModel must be a string',
      Properties+::: { EngineModel: EngineModel },
    },
    '#withPreferredMaintenanceWindow': d.fn('`withPreferredMaintenanceWindow` PreferredMaintenanceWindow ', [d.arg('PreferredMaintenanceWindow', d.T.string)]),
    withPreferredMaintenanceWindow(PreferredMaintenanceWindow): {
      assert std.isString(PreferredMaintenanceWindow) : 'PreferredMaintenanceWindow must be a string',
      Properties+::: { PreferredMaintenanceWindow: PreferredMaintenanceWindow },
    },
    '#withAssociatePublicIpAddress': d.fn('`withAssociatePublicIpAddress` AssociatePublicIpAddress ', [d.arg('AssociatePublicIpAddress', d.T.boolean)]),
    withAssociatePublicIpAddress(AssociatePublicIpAddress): {
      assert std.isBoolean(AssociatePublicIpAddress) : 'AssociatePublicIpAddress must be a boolean',
      Properties+::: { AssociatePublicIpAddress: AssociatePublicIpAddress },
    },
    '#withCustomCertificate': d.fn('`withCustomCertificate` CustomCertificate ', [d.arg('CustomCertificate', d.T.string)]),
    withCustomCertificate(CustomCertificate): {
      assert std.isString(CustomCertificate) : 'CustomCertificate must be a string',
      Properties+::: { CustomCertificate: CustomCertificate },
    },
    '#withPreferredBackupWindow': d.fn('`withPreferredBackupWindow` PreferredBackupWindow ', [d.arg('PreferredBackupWindow', d.T.string)]),
    withPreferredBackupWindow(PreferredBackupWindow): {
      assert std.isString(PreferredBackupWindow) : 'PreferredBackupWindow must be a string',
      Properties+::: { PreferredBackupWindow: PreferredBackupWindow },
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
    '#withCustomDomain': d.fn('`withCustomDomain` CustomDomain ', [d.arg('CustomDomain', d.T.string)]),
    withCustomDomain(CustomDomain): {
      assert std.isString(CustomDomain) : 'CustomDomain must be a string',
      Properties+::: { CustomDomain: CustomDomain },
    },
    '#withEndpoint': d.fn('`withEndpoint` Endpoint ', [d.arg('Endpoint', d.T.string)]),
    withEndpoint(Endpoint): {
      assert std.isString(Endpoint) : 'Endpoint must be a string',
      Properties+::: { Endpoint: Endpoint },
    },
    '#withCustomPrivateKey': d.fn('`withCustomPrivateKey` CustomPrivateKey ', [d.arg('CustomPrivateKey', d.T.string)]),
    withCustomPrivateKey(CustomPrivateKey): {
      assert std.isString(CustomPrivateKey) : 'CustomPrivateKey must be a string',
      Properties+::: { CustomPrivateKey: CustomPrivateKey },
    },
    '#withServerName': d.fn('`withServerName` ServerName ', [d.arg('ServerName', d.T.string)]),
    withServerName(ServerName): {
      assert std.isString(ServerName) : 'ServerName must be a string',
      Properties+::: { ServerName: ServerName },
    },
    '#withEngineAttributes': d.fn('`withEngineAttributes` EngineAttributes ', [d.arg('EngineAttributes', d.T.array)]),
    withEngineAttributes(EngineAttributes): {
      assert std.isArray(EngineAttributes) : 'EngineAttributes must be a array',
      Properties+::: { EngineAttributes: EngineAttributes },
    },
    '#withBackupRetentionCount': d.fn('`withBackupRetentionCount` BackupRetentionCount ', [d.arg('BackupRetentionCount', d.T.integer)]),
    withBackupRetentionCount(BackupRetentionCount): {
      assert std.isNumber(BackupRetentionCount) : 'BackupRetentionCount must be a integer',
      Properties+::: { BackupRetentionCount: BackupRetentionCount },
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
    '#withEngine': d.fn('`withEngine` Engine ', [d.arg('Engine', d.T.string)]),
    withEngine(Engine): {
      assert std.isString(Engine) : 'Engine must be a string',
      Properties+::: { Engine: Engine },
    },
  },
}
