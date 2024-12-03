local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  Application: {
    '#': d.pkg(
      name='Application',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/M2.libsonnet',
      help='Represents an application that runs on an AWS Mainframe Modernization Environment',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::M2::Application Resource
        * EngineType 
        * Name 
      |||,
      args=[
        d.arg('EngineType', 'd.T.string'),
        d.arg('Name', 'd.T.string'),
      ]
    ),
    new(
      EngineType,
      Name,
    ): {
      local base = self,
      Properties: {
        assert std.isString(EngineType) : 'EngineType must be a string',
        EngineType: EngineType,
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
      },
      DependsOn:: [],
      Type: 'AWS::M2::Application',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withApplicationArn': d.fn('`withApplicationArn` ApplicationArn ', [d.arg('ApplicationArn', d.T.string)]),
    withApplicationArn(ApplicationArn): {
      assert std.isString(ApplicationArn) : 'ApplicationArn must be a string',
      Properties+::: { ApplicationArn: ApplicationArn },
    },
    '#withApplicationId': d.fn('`withApplicationId` ApplicationId ', [d.arg('ApplicationId', d.T.string)]),
    withApplicationId(ApplicationId): {
      assert std.isString(ApplicationId) : 'ApplicationId must be a string',
      Properties+::: { ApplicationId: ApplicationId },
    },
    '#withDefinition': d.fn('`withDefinition` Definition ', [d.arg('Definition')]),
    withDefinition(Definition): {
      // Type: undefined
      Properties+::: { Definition: Definition },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withKmsKeyId': d.fn('`withKmsKeyId` KmsKeyId ', [d.arg('KmsKeyId', d.T.string)]),
    withKmsKeyId(KmsKeyId): {
      assert std.isString(KmsKeyId) : 'KmsKeyId must be a string',
      Properties+::: { KmsKeyId: KmsKeyId },
    },
    '#withRoleArn': d.fn('`withRoleArn` RoleArn ', [d.arg('RoleArn', d.T.string)]),
    withRoleArn(RoleArn): {
      assert std.isString(RoleArn) : 'RoleArn must be a string',
      Properties+::: { RoleArn: RoleArn },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.object)]),
    withTags(Tags): {
      assert std.isObject(Tags) : 'Tags must be a object',
      Properties+::: { Tags: Tags },
    },
  },
  Deployment: {
    '#': d.pkg(
      name='Deployment',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/M2.libsonnet',
      help='Represents a deployment resource of an AWS Mainframe Modernization (M2) application to a specified environment',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::M2::Deployment Resource
        * EnvironmentId The environment ID.
        * ApplicationId The application ID.
        * ApplicationVersion The version number of the application to deploy
      |||,
      args=[
        d.arg('EnvironmentId', 'd.T.string'),
        d.arg('ApplicationId', 'd.T.string'),
        d.arg('ApplicationVersion', 'd.T.integer'),
      ]
    ),
    new(
      EnvironmentId,
      ApplicationId,
      ApplicationVersion,
    ): {
      local base = self,
      Properties: {
        assert std.isString(EnvironmentId) : 'EnvironmentId must be a string',
        EnvironmentId: EnvironmentId,
        assert std.isString(ApplicationId) : 'ApplicationId must be a string',
        ApplicationId: ApplicationId,
        assert std.isNumber(ApplicationVersion) : 'ApplicationVersion must be a integer',
        ApplicationVersion: ApplicationVersion,
      },
      DependsOn:: [],
      Type: 'AWS::M2::Deployment',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDeploymentId': d.fn('`withDeploymentId` DeploymentId ', [d.arg('DeploymentId', d.T.string)]),
    withDeploymentId(DeploymentId): {
      assert std.isString(DeploymentId) : 'DeploymentId must be a string',
      Properties+::: { DeploymentId: DeploymentId },
    },
    '#withStatus': d.fn('`withStatus` Status ', [d.arg('Status', d.T.string)]),
    withStatus(Status): {
      assert std.isString(Status) : 'Status must be a string',
      Properties+::: { Status: Status },
    },
  },
  Environment: {
    '#': d.pkg(
      name='Environment',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/M2.libsonnet',
      help='Represents a runtime environment that can run migrated mainframe applications.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::M2::Environment Resource
        * EngineType 
        * InstanceType The type of instance underlying the environment.
        * Name The name of the environment.
      |||,
      args=[
        d.arg('EngineType', 'd.T.string'),
        d.arg('InstanceType', 'd.T.string'),
        d.arg('Name', 'd.T.string'),
      ]
    ),
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
      Type: 'AWS::M2::Environment',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withEngineVersion': d.fn('`withEngineVersion` EngineVersion ', [d.arg('EngineVersion', d.T.string)]),
    withEngineVersion(EngineVersion): {
      assert std.isString(EngineVersion) : 'EngineVersion must be a string',
      Properties+::: { EngineVersion: EngineVersion },
    },
    '#withEnvironmentArn': d.fn('`withEnvironmentArn` EnvironmentArn ', [d.arg('EnvironmentArn', d.T.string)]),
    withEnvironmentArn(EnvironmentArn): {
      assert std.isString(EnvironmentArn) : 'EnvironmentArn must be a string',
      Properties+::: { EnvironmentArn: EnvironmentArn },
    },
    '#withEnvironmentId': d.fn('`withEnvironmentId` EnvironmentId ', [d.arg('EnvironmentId', d.T.string)]),
    withEnvironmentId(EnvironmentId): {
      assert std.isString(EnvironmentId) : 'EnvironmentId must be a string',
      Properties+::: { EnvironmentId: EnvironmentId },
    },
    '#withHighAvailabilityConfig': d.fn('`withHighAvailabilityConfig` HighAvailabilityConfig ', [d.arg('HighAvailabilityConfig', d.T.object)]),
    withHighAvailabilityConfig(HighAvailabilityConfig): {
      assert std.isObject(HighAvailabilityConfig) : 'HighAvailabilityConfig must be a object',
      Properties+::: { HighAvailabilityConfig: HighAvailabilityConfig },
    },
    '#withKmsKeyId': d.fn('`withKmsKeyId` KmsKeyId ', [d.arg('KmsKeyId', d.T.string)]),
    withKmsKeyId(KmsKeyId): {
      assert std.isString(KmsKeyId) : 'KmsKeyId must be a string',
      Properties+::: { KmsKeyId: KmsKeyId },
    },
    '#withPreferredMaintenanceWindow': d.fn('`withPreferredMaintenanceWindow` PreferredMaintenanceWindow ', [d.arg('PreferredMaintenanceWindow', d.T.string)]),
    withPreferredMaintenanceWindow(PreferredMaintenanceWindow): {
      assert std.isString(PreferredMaintenanceWindow) : 'PreferredMaintenanceWindow must be a string',
      Properties+::: { PreferredMaintenanceWindow: PreferredMaintenanceWindow },
    },
    '#withPubliclyAccessible': d.fn('`withPubliclyAccessible` PubliclyAccessible ', [d.arg('PubliclyAccessible', d.T.boolean)]),
    withPubliclyAccessible(PubliclyAccessible): {
      assert std.isBoolean(PubliclyAccessible) : 'PubliclyAccessible must be a boolean',
      Properties+::: { PubliclyAccessible: PubliclyAccessible },
    },
    '#withSecurityGroupIds': d.fn('`withSecurityGroupIds` SecurityGroupIds ', [d.arg('SecurityGroupIds', d.T.array)]),
    withSecurityGroupIds(SecurityGroupIds): {
      assert std.isArray(SecurityGroupIds) : 'SecurityGroupIds must be a array',
      Properties+::: { SecurityGroupIds: SecurityGroupIds },
    },
    '#withStorageConfigurations': d.fn('`withStorageConfigurations` StorageConfigurations ', [d.arg('StorageConfigurations', d.T.array)]),
    withStorageConfigurations(StorageConfigurations): {
      assert std.isArray(StorageConfigurations) : 'StorageConfigurations must be a array',
      Properties+::: { StorageConfigurations: StorageConfigurations },
    },
    '#withSubnetIds': d.fn('`withSubnetIds` SubnetIds ', [d.arg('SubnetIds', d.T.array)]),
    withSubnetIds(SubnetIds): {
      assert std.isArray(SubnetIds) : 'SubnetIds must be a array',
      Properties+::: { SubnetIds: SubnetIds },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.object)]),
    withTags(Tags): {
      assert std.isObject(Tags) : 'Tags must be a object',
      Properties+::: { Tags: Tags },
    },
  },
}
