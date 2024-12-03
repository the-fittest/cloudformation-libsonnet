local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  Fleet: {
    '#': d.pkg(
      name='Fleet',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/CodeBuild.libsonnet',
      help='Resource Type definition for AWS::CodeBuild::Fleet',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::CodeBuild::Fleet Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::CodeBuild::Fleet',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
    '#withBaseCapacity': d.fn('`withBaseCapacity` BaseCapacity ', [d.arg('BaseCapacity', d.T.integer)]),
    withBaseCapacity(BaseCapacity): {
      assert std.isNumber(BaseCapacity) : 'BaseCapacity must be a integer',
      Properties+::: { BaseCapacity: BaseCapacity },
    },
    '#withEnvironmentType': d.fn('`withEnvironmentType` EnvironmentType ', [d.arg('EnvironmentType', d.T.string)]),
    withEnvironmentType(EnvironmentType): {
      assert std.isString(EnvironmentType) : 'EnvironmentType must be a string',
      assert EnvironmentType == 'WINDOWS_SERVER_2019_CONTAINER' || EnvironmentType == 'WINDOWS_SERVER_2022_CONTAINER' || EnvironmentType == 'LINUX_CONTAINER' || EnvironmentType == 'LINUX_GPU_CONTAINER' || EnvironmentType == 'ARM_CONTAINER' || EnvironmentType == 'MAC_ARM' : "EnvironmentType must be either 'WINDOWS_SERVER_2019_CONTAINER' or 'WINDOWS_SERVER_2022_CONTAINER' or 'LINUX_CONTAINER' or 'LINUX_GPU_CONTAINER' or 'ARM_CONTAINER' or 'MAC_ARM'",
      Properties+::: { EnvironmentType: EnvironmentType },
    },
    '#withComputeType': d.fn('`withComputeType` ComputeType ', [d.arg('ComputeType', d.T.string)]),
    withComputeType(ComputeType): {
      assert std.isString(ComputeType) : 'ComputeType must be a string',
      assert ComputeType == 'BUILD_GENERAL1_SMALL' || ComputeType == 'BUILD_GENERAL1_MEDIUM' || ComputeType == 'BUILD_GENERAL1_LARGE' || ComputeType == 'BUILD_GENERAL1_XLARGE' || ComputeType == 'BUILD_GENERAL1_2XLARGE' || ComputeType == 'ATTRIBUTE_BASED_COMPUTE' : "ComputeType must be either 'BUILD_GENERAL1_SMALL' or 'BUILD_GENERAL1_MEDIUM' or 'BUILD_GENERAL1_LARGE' or 'BUILD_GENERAL1_XLARGE' or 'BUILD_GENERAL1_2XLARGE' or 'ATTRIBUTE_BASED_COMPUTE'",
      Properties+::: { ComputeType: ComputeType },
    },
    '#withOverflowBehavior': d.fn('`withOverflowBehavior` OverflowBehavior ', [d.arg('OverflowBehavior', d.T.string)]),
    withOverflowBehavior(OverflowBehavior): {
      assert std.isString(OverflowBehavior) : 'OverflowBehavior must be a string',
      assert OverflowBehavior == 'QUEUE' || OverflowBehavior == 'ON_DEMAND' : "OverflowBehavior must be either 'QUEUE' or 'ON_DEMAND'",
      Properties+::: { OverflowBehavior: OverflowBehavior },
    },
    '#withFleetServiceRole': d.fn('`withFleetServiceRole` FleetServiceRole ', [d.arg('FleetServiceRole', d.T.string)]),
    withFleetServiceRole(FleetServiceRole): {
      assert std.isString(FleetServiceRole) : 'FleetServiceRole must be a string',
      Properties+::: { FleetServiceRole: FleetServiceRole },
    },
    '#withFleetVpcConfig': d.fn('`withFleetVpcConfig` FleetVpcConfig ', [d.arg('FleetVpcConfig', d.T.object)]),
    withFleetVpcConfig(FleetVpcConfig): {
      assert std.isObject(FleetVpcConfig) : 'FleetVpcConfig must be a object',
      Properties+::: { FleetVpcConfig: FleetVpcConfig },
    },
    '#withFleetProxyConfiguration': d.fn('`withFleetProxyConfiguration` FleetProxyConfiguration ', [d.arg('FleetProxyConfiguration', d.T.object)]),
    withFleetProxyConfiguration(FleetProxyConfiguration): {
      assert std.isObject(FleetProxyConfiguration) : 'FleetProxyConfiguration must be a object',
      Properties+::: { FleetProxyConfiguration: FleetProxyConfiguration },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withImageId': d.fn('`withImageId` ImageId ', [d.arg('ImageId', d.T.string)]),
    withImageId(ImageId): {
      assert std.isString(ImageId) : 'ImageId must be a string',
      Properties+::: { ImageId: ImageId },
    },
    '#withScalingConfiguration': d.fn('`withScalingConfiguration` ScalingConfiguration ', [d.arg('ScalingConfiguration', d.T.object)]),
    withScalingConfiguration(ScalingConfiguration): {
      assert std.isObject(ScalingConfiguration) : 'ScalingConfiguration must be a object',
      Properties+::: { ScalingConfiguration: ScalingConfiguration },
    },
    '#withComputeConfiguration': d.fn('`withComputeConfiguration` ComputeConfiguration ', [d.arg('ComputeConfiguration', d.T.object)]),
    withComputeConfiguration(ComputeConfiguration): {
      assert std.isObject(ComputeConfiguration) : 'ComputeConfiguration must be a object',
      Properties+::: { ComputeConfiguration: ComputeConfiguration },
    },
  },
  Project: {
    '#': d.pkg(
      name='Project',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/CodeBuild.libsonnet',
      help='Resource Type definition for AWS::CodeBuild::Project',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::CodeBuild::Project Resource
        * Artifacts 
        * ServiceRole 
        * Environment 
        * Source 
      |||,
      args=[
        d.arg('Artifacts', 'd.T.object'),
        d.arg('ServiceRole', 'd.T.string'),
        d.arg('Environment', 'd.T.object'),
        d.arg('Source', 'd.T.object'),
      ]
    ),
    new(
      Artifacts,
      ServiceRole,
      Environment,
      Source,
    ): {
      local base = self,
      Properties: {
        assert std.isObject(Artifacts) : 'Artifacts must be a object',
        Artifacts: Artifacts,
        assert std.isString(ServiceRole) : 'ServiceRole must be a string',
        ServiceRole: ServiceRole,
        assert std.isObject(Environment) : 'Environment must be a object',
        Environment: Environment,
        assert std.isObject(Source) : 'Source must be a object',
        Source: Source,
      },
      DependsOn:: [],
      Type: 'AWS::CodeBuild::Project',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withResourceAccessRole': d.fn('`withResourceAccessRole` ResourceAccessRole ', [d.arg('ResourceAccessRole', d.T.string)]),
    withResourceAccessRole(ResourceAccessRole): {
      assert std.isString(ResourceAccessRole) : 'ResourceAccessRole must be a string',
      Properties+::: { ResourceAccessRole: ResourceAccessRole },
    },
    '#withVpcConfig': d.fn('`withVpcConfig` VpcConfig ', [d.arg('VpcConfig', d.T.object)]),
    withVpcConfig(VpcConfig): {
      assert std.isObject(VpcConfig) : 'VpcConfig must be a object',
      Properties+::: { VpcConfig: VpcConfig },
    },
    '#withSecondarySources': d.fn('`withSecondarySources` SecondarySources ', [d.arg('SecondarySources', d.T.array)]),
    withSecondarySources(SecondarySources): {
      assert std.isArray(SecondarySources) : 'SecondarySources must be a array',
      Properties+::: { SecondarySources: SecondarySources },
    },
    '#withEncryptionKey': d.fn('`withEncryptionKey` EncryptionKey ', [d.arg('EncryptionKey', d.T.string)]),
    withEncryptionKey(EncryptionKey): {
      assert std.isString(EncryptionKey) : 'EncryptionKey must be a string',
      Properties+::: { EncryptionKey: EncryptionKey },
    },
    '#withSecondaryArtifacts': d.fn('`withSecondaryArtifacts` SecondaryArtifacts ', [d.arg('SecondaryArtifacts', d.T.array)]),
    withSecondaryArtifacts(SecondaryArtifacts): {
      assert std.isArray(SecondaryArtifacts) : 'SecondaryArtifacts must be a array',
      Properties+::: { SecondaryArtifacts: SecondaryArtifacts },
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
    '#withLogsConfig': d.fn('`withLogsConfig` LogsConfig ', [d.arg('LogsConfig', d.T.object)]),
    withLogsConfig(LogsConfig): {
      assert std.isObject(LogsConfig) : 'LogsConfig must be a object',
      Properties+::: { LogsConfig: LogsConfig },
    },
    '#withQueuedTimeoutInMinutes': d.fn('`withQueuedTimeoutInMinutes` QueuedTimeoutInMinutes ', [d.arg('QueuedTimeoutInMinutes', d.T.integer)]),
    withQueuedTimeoutInMinutes(QueuedTimeoutInMinutes): {
      assert std.isNumber(QueuedTimeoutInMinutes) : 'QueuedTimeoutInMinutes must be a integer',
      Properties+::: { QueuedTimeoutInMinutes: QueuedTimeoutInMinutes },
    },
    '#withSecondarySourceVersions': d.fn('`withSecondarySourceVersions` SecondarySourceVersions ', [d.arg('SecondarySourceVersions', d.T.array)]),
    withSecondarySourceVersions(SecondarySourceVersions): {
      assert std.isArray(SecondarySourceVersions) : 'SecondarySourceVersions must be a array',
      Properties+::: { SecondarySourceVersions: SecondarySourceVersions },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withAutoRetryLimit': d.fn('`withAutoRetryLimit` AutoRetryLimit ', [d.arg('AutoRetryLimit', d.T.integer)]),
    withAutoRetryLimit(AutoRetryLimit): {
      assert std.isNumber(AutoRetryLimit) : 'AutoRetryLimit must be a integer',
      Properties+::: { AutoRetryLimit: AutoRetryLimit },
    },
    '#withSourceVersion': d.fn('`withSourceVersion` SourceVersion ', [d.arg('SourceVersion', d.T.string)]),
    withSourceVersion(SourceVersion): {
      assert std.isString(SourceVersion) : 'SourceVersion must be a string',
      Properties+::: { SourceVersion: SourceVersion },
    },
    '#withTriggers': d.fn('`withTriggers` Triggers ', [d.arg('Triggers', d.T.object)]),
    withTriggers(Triggers): {
      assert std.isObject(Triggers) : 'Triggers must be a object',
      Properties+::: { Triggers: Triggers },
    },
    '#withBadgeEnabled': d.fn('`withBadgeEnabled` BadgeEnabled ', [d.arg('BadgeEnabled', d.T.boolean)]),
    withBadgeEnabled(BadgeEnabled): {
      assert std.isBoolean(BadgeEnabled) : 'BadgeEnabled must be a boolean',
      Properties+::: { BadgeEnabled: BadgeEnabled },
    },
    '#withFileSystemLocations': d.fn('`withFileSystemLocations` FileSystemLocations ', [d.arg('FileSystemLocations', d.T.array)]),
    withFileSystemLocations(FileSystemLocations): {
      assert std.isArray(FileSystemLocations) : 'FileSystemLocations must be a array',
      Properties+::: { FileSystemLocations: FileSystemLocations },
    },
    '#withConcurrentBuildLimit': d.fn('`withConcurrentBuildLimit` ConcurrentBuildLimit ', [d.arg('ConcurrentBuildLimit', d.T.integer)]),
    withConcurrentBuildLimit(ConcurrentBuildLimit): {
      assert std.isNumber(ConcurrentBuildLimit) : 'ConcurrentBuildLimit must be a integer',
      Properties+::: { ConcurrentBuildLimit: ConcurrentBuildLimit },
    },
    '#withVisibility': d.fn('`withVisibility` Visibility ', [d.arg('Visibility', d.T.string)]),
    withVisibility(Visibility): {
      assert std.isString(Visibility) : 'Visibility must be a string',
      Properties+::: { Visibility: Visibility },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withBuildBatchConfig': d.fn('`withBuildBatchConfig` BuildBatchConfig ', [d.arg('BuildBatchConfig', d.T.object)]),
    withBuildBatchConfig(BuildBatchConfig): {
      assert std.isObject(BuildBatchConfig) : 'BuildBatchConfig must be a object',
      Properties+::: { BuildBatchConfig: BuildBatchConfig },
    },
    '#withTimeoutInMinutes': d.fn('`withTimeoutInMinutes` TimeoutInMinutes ', [d.arg('TimeoutInMinutes', d.T.integer)]),
    withTimeoutInMinutes(TimeoutInMinutes): {
      assert std.isNumber(TimeoutInMinutes) : 'TimeoutInMinutes must be a integer',
      Properties+::: { TimeoutInMinutes: TimeoutInMinutes },
    },
    '#withCache': d.fn('`withCache` Cache ', [d.arg('Cache', d.T.object)]),
    withCache(Cache): {
      assert std.isObject(Cache) : 'Cache must be a object',
      Properties+::: { Cache: Cache },
    },
  },
  ReportGroup: {
    '#': d.pkg(
      name='ReportGroup',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/CodeBuild.libsonnet',
      help='Resource Type definition for AWS::CodeBuild::ReportGroup',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::CodeBuild::ReportGroup Resource
        * Type 
        * ExportConfig 
      |||,
      args=[
        d.arg('Type', 'd.T.string'),
        d.arg('ExportConfig', 'd.T.object'),
      ]
    ),
    new(
      Type,
      ExportConfig,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Type) : 'Type must be a string',
        Type: Type,
        assert std.isObject(ExportConfig) : 'ExportConfig must be a object',
        ExportConfig: ExportConfig,
      },
      DependsOn:: [],
      Type: 'AWS::CodeBuild::ReportGroup',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withDeleteReports': d.fn('`withDeleteReports` DeleteReports ', [d.arg('DeleteReports', d.T.boolean)]),
    withDeleteReports(DeleteReports): {
      assert std.isBoolean(DeleteReports) : 'DeleteReports must be a boolean',
      Properties+::: { DeleteReports: DeleteReports },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
  },
  SourceCredential: {
    '#': d.pkg(
      name='SourceCredential',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/CodeBuild.libsonnet',
      help='Resource Type definition for AWS::CodeBuild::SourceCredential',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::CodeBuild::SourceCredential Resource
        * ServerType 
        * Token 
        * AuthType 
      |||,
      args=[
        d.arg('ServerType', 'd.T.string'),
        d.arg('Token', 'd.T.string'),
        d.arg('AuthType', 'd.T.string'),
      ]
    ),
    new(
      ServerType,
      Token,
      AuthType,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ServerType) : 'ServerType must be a string',
        ServerType: ServerType,
        assert std.isString(Token) : 'Token must be a string',
        Token: Token,
        assert std.isString(AuthType) : 'AuthType must be a string',
        AuthType: AuthType,
      },
      DependsOn:: [],
      Type: 'AWS::CodeBuild::SourceCredential',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withUsername': d.fn('`withUsername` Username ', [d.arg('Username', d.T.string)]),
    withUsername(Username): {
      assert std.isString(Username) : 'Username must be a string',
      Properties+::: { Username: Username },
    },
  },
}
