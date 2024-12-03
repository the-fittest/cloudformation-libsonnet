local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  Alias: {
    '#': d.pkg(
      name='Alias',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/GameLift.libsonnet',
      help='The AWS::GameLift::Alias resource creates an alias for an Amazon GameLift (GameLift) fleet destination.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::GameLift::Alias Resource
        * Name A descriptive label that is associated with an alias. Alias names do not need to be unique.
        * RoutingStrategy A routing configuration that specifies where traffic is directed for this alias, such as to a fleet or to a message.
      |||,
      args=[
        d.arg('Name', 'd.T.string'),
        d.arg('RoutingStrategy', 'd.T.object'),
      ]
    ),
    new(
      Name,
      RoutingStrategy,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isObject(RoutingStrategy) : 'RoutingStrategy must be a object',
        RoutingStrategy: RoutingStrategy,
      },
      DependsOn:: [],
      Type: 'AWS::GameLift::Alias',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withAliasId': d.fn('`withAliasId` AliasId ', [d.arg('AliasId', d.T.string)]),
    withAliasId(AliasId): {
      assert std.isString(AliasId) : 'AliasId must be a string',
      Properties+::: { AliasId: AliasId },
    },
  },
  Build: {
    '#': d.pkg(
      name='Build',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/GameLift.libsonnet',
      help='Resource Type definition for AWS::GameLift::Build',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::GameLift::Build Resource
      |||,
      args=[
      ]
    ),
    new(
    ): {
      local base = self,
      Properties: {
      },
      DependsOn:: [],
      Type: 'AWS::GameLift::Build',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withBuildId': d.fn('`withBuildId` BuildId ', [d.arg('BuildId', d.T.string)]),
    withBuildId(BuildId): {
      assert std.isString(BuildId) : 'BuildId must be a string',
      Properties+::: { BuildId: BuildId },
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
    '#withOperatingSystem': d.fn('`withOperatingSystem` OperatingSystem ', [d.arg('OperatingSystem', d.T.string)]),
    withOperatingSystem(OperatingSystem): {
      assert std.isString(OperatingSystem) : 'OperatingSystem must be a string',
      assert OperatingSystem == 'AMAZON_LINUX' || OperatingSystem == 'AMAZON_LINUX_2' || OperatingSystem == 'AMAZON_LINUX_2023' || OperatingSystem == 'WINDOWS_2012' || OperatingSystem == 'WINDOWS_2016' : "OperatingSystem must be either 'AMAZON_LINUX' or 'AMAZON_LINUX_2' or 'AMAZON_LINUX_2023' or 'WINDOWS_2012' or 'WINDOWS_2016'",
      Properties+::: { OperatingSystem: OperatingSystem },
    },
    '#withStorageLocation': d.fn('`withStorageLocation` StorageLocation ', [d.arg('StorageLocation', d.T.object)]),
    withStorageLocation(StorageLocation): {
      assert std.isObject(StorageLocation) : 'StorageLocation must be a object',
      Properties+::: { StorageLocation: StorageLocation },
    },
    '#withVersion': d.fn('`withVersion` Version ', [d.arg('Version', d.T.string)]),
    withVersion(Version): {
      assert std.isString(Version) : 'Version must be a string',
      Properties+::: { Version: Version },
    },
    '#withServerSdkVersion': d.fn('`withServerSdkVersion` ServerSdkVersion ', [d.arg('ServerSdkVersion', d.T.string)]),
    withServerSdkVersion(ServerSdkVersion): {
      assert std.isString(ServerSdkVersion) : 'ServerSdkVersion must be a string',
      Properties+::: { ServerSdkVersion: ServerSdkVersion },
    },
  },
  ContainerFleet: {
    '#': d.pkg(
      name='ContainerFleet',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/GameLift.libsonnet',
      help='The AWS::GameLift::ContainerFleet resource creates an Amazon GameLift (GameLift) container fleet to host game servers.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::GameLift::ContainerFleet Resource
        * FleetRoleArn A unique identifier for an AWS IAM role that manages access to your AWS services. Create a role or look up a roles ARN from the IAM dashboard in the AWS Management Console.
      |||,
      args=[
        d.arg('FleetRoleArn', 'd.T.string'),
      ]
    ),
    new(
      FleetRoleArn,
    ): {
      local base = self,
      Properties: {
        assert std.isString(FleetRoleArn) : 'FleetRoleArn must be a string',
        FleetRoleArn: FleetRoleArn,
      },
      DependsOn:: [],
      Type: 'AWS::GameLift::ContainerFleet',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withFleetId': d.fn('`withFleetId` FleetId ', [d.arg('FleetId', d.T.string)]),
    withFleetId(FleetId): {
      assert std.isString(FleetId) : 'FleetId must be a string',
      Properties+::: { FleetId: FleetId },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withGameServerContainerGroupDefinitionName': d.fn('`withGameServerContainerGroupDefinitionName` GameServerContainerGroupDefinitionName ', [d.arg('GameServerContainerGroupDefinitionName', d.T.string)]),
    withGameServerContainerGroupDefinitionName(GameServerContainerGroupDefinitionName): {
      assert std.isString(GameServerContainerGroupDefinitionName) : 'GameServerContainerGroupDefinitionName must be a string',
      Properties+::: { GameServerContainerGroupDefinitionName: GameServerContainerGroupDefinitionName },
    },
    '#withGameServerContainerGroupDefinitionArn': d.fn('`withGameServerContainerGroupDefinitionArn` GameServerContainerGroupDefinitionArn ', [d.arg('GameServerContainerGroupDefinitionArn', d.T.string)]),
    withGameServerContainerGroupDefinitionArn(GameServerContainerGroupDefinitionArn): {
      assert std.isString(GameServerContainerGroupDefinitionArn) : 'GameServerContainerGroupDefinitionArn must be a string',
      Properties+::: { GameServerContainerGroupDefinitionArn: GameServerContainerGroupDefinitionArn },
    },
    '#withPerInstanceContainerGroupDefinitionName': d.fn('`withPerInstanceContainerGroupDefinitionName` PerInstanceContainerGroupDefinitionName ', [d.arg('PerInstanceContainerGroupDefinitionName', d.T.string)]),
    withPerInstanceContainerGroupDefinitionName(PerInstanceContainerGroupDefinitionName): {
      assert std.isString(PerInstanceContainerGroupDefinitionName) : 'PerInstanceContainerGroupDefinitionName must be a string',
      Properties+::: { PerInstanceContainerGroupDefinitionName: PerInstanceContainerGroupDefinitionName },
    },
    '#withPerInstanceContainerGroupDefinitionArn': d.fn('`withPerInstanceContainerGroupDefinitionArn` PerInstanceContainerGroupDefinitionArn ', [d.arg('PerInstanceContainerGroupDefinitionArn', d.T.string)]),
    withPerInstanceContainerGroupDefinitionArn(PerInstanceContainerGroupDefinitionArn): {
      assert std.isString(PerInstanceContainerGroupDefinitionArn) : 'PerInstanceContainerGroupDefinitionArn must be a string',
      Properties+::: { PerInstanceContainerGroupDefinitionArn: PerInstanceContainerGroupDefinitionArn },
    },
    '#withInstanceConnectionPortRange': d.fn('`withInstanceConnectionPortRange` InstanceConnectionPortRange ', [d.arg('InstanceConnectionPortRange', d.T.object)]),
    withInstanceConnectionPortRange(InstanceConnectionPortRange): {
      assert std.isObject(InstanceConnectionPortRange) : 'InstanceConnectionPortRange must be a object',
      Properties+::: { InstanceConnectionPortRange: InstanceConnectionPortRange },
    },
    '#withInstanceInboundPermissions': d.fn('`withInstanceInboundPermissions` InstanceInboundPermissions ', [d.arg('InstanceInboundPermissions', d.T.array)]),
    withInstanceInboundPermissions(InstanceInboundPermissions): {
      assert std.isArray(InstanceInboundPermissions) : 'InstanceInboundPermissions must be a array',
      Properties+::: { InstanceInboundPermissions: InstanceInboundPermissions },
    },
    '#withGameServerContainerGroupsPerInstance': d.fn('`withGameServerContainerGroupsPerInstance` GameServerContainerGroupsPerInstance ', [d.arg('GameServerContainerGroupsPerInstance', d.T.integer)]),
    withGameServerContainerGroupsPerInstance(GameServerContainerGroupsPerInstance): {
      assert std.isNumber(GameServerContainerGroupsPerInstance) : 'GameServerContainerGroupsPerInstance must be a integer',
      Properties+::: { GameServerContainerGroupsPerInstance: GameServerContainerGroupsPerInstance },
    },
    '#withMaximumGameServerContainerGroupsPerInstance': d.fn('`withMaximumGameServerContainerGroupsPerInstance` MaximumGameServerContainerGroupsPerInstance ', [d.arg('MaximumGameServerContainerGroupsPerInstance', d.T.integer)]),
    withMaximumGameServerContainerGroupsPerInstance(MaximumGameServerContainerGroupsPerInstance): {
      assert std.isNumber(MaximumGameServerContainerGroupsPerInstance) : 'MaximumGameServerContainerGroupsPerInstance must be a integer',
      Properties+::: { MaximumGameServerContainerGroupsPerInstance: MaximumGameServerContainerGroupsPerInstance },
    },
    '#withCreationTime': d.fn('`withCreationTime` CreationTime ', [d.arg('CreationTime', d.T.string)]),
    withCreationTime(CreationTime): {
      assert std.isString(CreationTime) : 'CreationTime must be a string',
      Properties+::: { CreationTime: CreationTime },
    },
    '#withStatus': d.fn('`withStatus` Status ', [d.arg('Status', d.T.string)]),
    withStatus(Status): {
      assert std.isString(Status) : 'Status must be a string',
      assert Status == 'PENDING' || Status == 'CREATING' || Status == 'CREATED' || Status == 'ACTIVATING' || Status == 'ACTIVE' || Status == 'UPDATING' || Status == 'DELETING' : "Status must be either 'PENDING' or 'CREATING' or 'CREATED' or 'ACTIVATING' or 'ACTIVE' or 'UPDATING' or 'DELETING'",
      Properties+::: { Status: Status },
    },
    '#withDeploymentDetails': d.fn('`withDeploymentDetails` DeploymentDetails ', [d.arg('DeploymentDetails', d.T.object)]),
    withDeploymentDetails(DeploymentDetails): {
      assert std.isObject(DeploymentDetails) : 'DeploymentDetails must be a object',
      Properties+::: { DeploymentDetails: DeploymentDetails },
    },
    '#withDeploymentConfiguration': d.fn('`withDeploymentConfiguration` DeploymentConfiguration ', [d.arg('DeploymentConfiguration', d.T.object)]),
    withDeploymentConfiguration(DeploymentConfiguration): {
      assert std.isObject(DeploymentConfiguration) : 'DeploymentConfiguration must be a object',
      Properties+::: { DeploymentConfiguration: DeploymentConfiguration },
    },
    '#withInstanceType': d.fn('`withInstanceType` InstanceType ', [d.arg('InstanceType', d.T.string)]),
    withInstanceType(InstanceType): {
      assert std.isString(InstanceType) : 'InstanceType must be a string',
      Properties+::: { InstanceType: InstanceType },
    },
    '#withBillingType': d.fn('`withBillingType` BillingType ', [d.arg('BillingType', d.T.string)]),
    withBillingType(BillingType): {
      assert std.isString(BillingType) : 'BillingType must be a string',
      assert BillingType == 'ON_DEMAND' || BillingType == 'SPOT' : "BillingType must be either 'ON_DEMAND' or 'SPOT'",
      Properties+::: { BillingType: BillingType },
    },
    '#withLocations': d.fn('`withLocations` Locations ', [d.arg('Locations', d.T.array)]),
    withLocations(Locations): {
      assert std.isArray(Locations) : 'Locations must be a array',
      Properties+::: { Locations: Locations },
    },
    '#withScalingPolicies': d.fn('`withScalingPolicies` ScalingPolicies ', [d.arg('ScalingPolicies', d.T.array)]),
    withScalingPolicies(ScalingPolicies): {
      assert std.isArray(ScalingPolicies) : 'ScalingPolicies must be a array',
      Properties+::: { ScalingPolicies: ScalingPolicies },
    },
    '#withMetricGroups': d.fn('`withMetricGroups` MetricGroups ', [d.arg('MetricGroups', d.T.array)]),
    withMetricGroups(MetricGroups): {
      assert std.isArray(MetricGroups) : 'MetricGroups must be a array',
      Properties+::: { MetricGroups: MetricGroups },
    },
    '#withNewGameSessionProtectionPolicy': d.fn('`withNewGameSessionProtectionPolicy` NewGameSessionProtectionPolicy ', [d.arg('NewGameSessionProtectionPolicy', d.T.string)]),
    withNewGameSessionProtectionPolicy(NewGameSessionProtectionPolicy): {
      assert std.isString(NewGameSessionProtectionPolicy) : 'NewGameSessionProtectionPolicy must be a string',
      assert NewGameSessionProtectionPolicy == 'FullProtection' || NewGameSessionProtectionPolicy == 'NoProtection' : "NewGameSessionProtectionPolicy must be either 'FullProtection' or 'NoProtection'",
      Properties+::: { NewGameSessionProtectionPolicy: NewGameSessionProtectionPolicy },
    },
    '#withGameSessionCreationLimitPolicy': d.fn('`withGameSessionCreationLimitPolicy` GameSessionCreationLimitPolicy ', [d.arg('GameSessionCreationLimitPolicy', d.T.object)]),
    withGameSessionCreationLimitPolicy(GameSessionCreationLimitPolicy): {
      assert std.isObject(GameSessionCreationLimitPolicy) : 'GameSessionCreationLimitPolicy must be a object',
      Properties+::: { GameSessionCreationLimitPolicy: GameSessionCreationLimitPolicy },
    },
    '#withLogConfiguration': d.fn('`withLogConfiguration` LogConfiguration ', [d.arg('LogConfiguration', d.T.object)]),
    withLogConfiguration(LogConfiguration): {
      assert std.isObject(LogConfiguration) : 'LogConfiguration must be a object',
      Properties+::: { LogConfiguration: LogConfiguration },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withFleetArn': d.fn('`withFleetArn` FleetArn ', [d.arg('FleetArn', d.T.string)]),
    withFleetArn(FleetArn): {
      assert std.isString(FleetArn) : 'FleetArn must be a string',
      Properties+::: { FleetArn: FleetArn },
    },
  },
  ContainerGroupDefinition: {
    '#': d.pkg(
      name='ContainerGroupDefinition',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/GameLift.libsonnet',
      help='The AWS::GameLift::ContainerGroupDefinition resource creates an Amazon GameLift container group definition.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::GameLift::ContainerGroupDefinition Resource
        * Name A descriptive label for the container group definition.
        * OperatingSystem The operating system of the container group
        * TotalMemoryLimitMebibytes The total memory limit of container groups following this definition in MiB
        * TotalVcpuLimit The total amount of virtual CPUs on the container group definition
      |||,
      args=[
        d.arg('Name', 'd.T.string'),
        d.arg('OperatingSystem', 'd.T.string'),
        d.arg('TotalMemoryLimitMebibytes', 'd.T.integer'),
        d.arg('TotalVcpuLimit', 'd.T.integer'),
      ]
    ),
    new(
      Name,
      OperatingSystem,
      TotalMemoryLimitMebibytes,
      TotalVcpuLimit,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isString(OperatingSystem) : 'OperatingSystem must be a string',
        assert OperatingSystem == 'AMAZON_LINUX_2023' : "OperatingSystem must be either 'AMAZON_LINUX_2023'",
        OperatingSystem: OperatingSystem,
        assert std.isNumber(TotalMemoryLimitMebibytes) : 'TotalMemoryLimitMebibytes must be a integer',
        TotalMemoryLimitMebibytes: TotalMemoryLimitMebibytes,
        // Type: number
        TotalVcpuLimit: TotalVcpuLimit,
      },
      DependsOn:: [],
      Type: 'AWS::GameLift::ContainerGroupDefinition',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withContainerGroupDefinitionArn': d.fn('`withContainerGroupDefinitionArn` ContainerGroupDefinitionArn ', [d.arg('ContainerGroupDefinitionArn', d.T.string)]),
    withContainerGroupDefinitionArn(ContainerGroupDefinitionArn): {
      assert std.isString(ContainerGroupDefinitionArn) : 'ContainerGroupDefinitionArn must be a string',
      Properties+::: { ContainerGroupDefinitionArn: ContainerGroupDefinitionArn },
    },
    '#withCreationTime': d.fn('`withCreationTime` CreationTime ', [d.arg('CreationTime', d.T.string)]),
    withCreationTime(CreationTime): {
      assert std.isString(CreationTime) : 'CreationTime must be a string',
      Properties+::: { CreationTime: CreationTime },
    },
    '#withContainerGroupType': d.fn('`withContainerGroupType` ContainerGroupType ', [d.arg('ContainerGroupType', d.T.string)]),
    withContainerGroupType(ContainerGroupType): {
      assert std.isString(ContainerGroupType) : 'ContainerGroupType must be a string',
      assert ContainerGroupType == 'GAME_SERVER' || ContainerGroupType == 'PER_INSTANCE' : "ContainerGroupType must be either 'GAME_SERVER' or 'PER_INSTANCE'",
      Properties+::: { ContainerGroupType: ContainerGroupType },
    },
    '#withGameServerContainerDefinition': d.fn('`withGameServerContainerDefinition` GameServerContainerDefinition ', [d.arg('GameServerContainerDefinition', d.T.object)]),
    withGameServerContainerDefinition(GameServerContainerDefinition): {
      assert std.isObject(GameServerContainerDefinition) : 'GameServerContainerDefinition must be a object',
      Properties+::: { GameServerContainerDefinition: GameServerContainerDefinition },
    },
    '#withSupportContainerDefinitions': d.fn('`withSupportContainerDefinitions` SupportContainerDefinitions ', [d.arg('SupportContainerDefinitions', d.T.array)]),
    withSupportContainerDefinitions(SupportContainerDefinitions): {
      assert std.isArray(SupportContainerDefinitions) : 'SupportContainerDefinitions must be a array',
      Properties+::: { SupportContainerDefinitions: SupportContainerDefinitions },
    },
    '#withVersionNumber': d.fn('`withVersionNumber` VersionNumber ', [d.arg('VersionNumber', d.T.integer)]),
    withVersionNumber(VersionNumber): {
      assert std.isNumber(VersionNumber) : 'VersionNumber must be a integer',
      Properties+::: { VersionNumber: VersionNumber },
    },
    '#withSourceVersionNumber': d.fn('`withSourceVersionNumber` SourceVersionNumber ', [d.arg('SourceVersionNumber', d.T.integer)]),
    withSourceVersionNumber(SourceVersionNumber): {
      assert std.isNumber(SourceVersionNumber) : 'SourceVersionNumber must be a integer',
      Properties+::: { SourceVersionNumber: SourceVersionNumber },
    },
    '#withVersionDescription': d.fn('`withVersionDescription` VersionDescription ', [d.arg('VersionDescription', d.T.string)]),
    withVersionDescription(VersionDescription): {
      assert std.isString(VersionDescription) : 'VersionDescription must be a string',
      Properties+::: { VersionDescription: VersionDescription },
    },
    '#withStatus': d.fn('`withStatus` Status ', [d.arg('Status', d.T.string)]),
    withStatus(Status): {
      assert std.isString(Status) : 'Status must be a string',
      assert Status == 'READY' || Status == 'COPYING' || Status == 'FAILED' : "Status must be either 'READY' or 'COPYING' or 'FAILED'",
      Properties+::: { Status: Status },
    },
    '#withStatusReason': d.fn('`withStatusReason` StatusReason ', [d.arg('StatusReason', d.T.string)]),
    withStatusReason(StatusReason): {
      assert std.isString(StatusReason) : 'StatusReason must be a string',
      Properties+::: { StatusReason: StatusReason },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  Fleet: {
    '#': d.pkg(
      name='Fleet',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/GameLift.libsonnet',
      help='The AWS::GameLift::Fleet resource creates an Amazon GameLift (GameLift) fleet to host game servers. A fleet is a set of EC2 or Anywhere instances, each of which can host multiple game sessions.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::GameLift::Fleet Resource
        * Name A descriptive label that is associated with a fleet. Fleet names do not need to be unique.
      |||,
      args=[
        d.arg('Name', 'd.T.string'),
      ]
    ),
    new(
      Name,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
      },
      DependsOn:: [],
      Type: 'AWS::GameLift::Fleet',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withScalingPolicies': d.fn('`withScalingPolicies` ScalingPolicies ', [d.arg('ScalingPolicies', d.T.array)]),
    withScalingPolicies(ScalingPolicies): {
      assert std.isArray(ScalingPolicies) : 'ScalingPolicies must be a array',
      Properties+::: { ScalingPolicies: ScalingPolicies },
    },
    '#withAnywhereConfiguration': d.fn('`withAnywhereConfiguration` AnywhereConfiguration ', [d.arg('AnywhereConfiguration')]),
    withAnywhereConfiguration(AnywhereConfiguration): {
      // Type: undefined
      Properties+::: { AnywhereConfiguration: AnywhereConfiguration },
    },
    '#withApplyCapacity': d.fn('`withApplyCapacity` ApplyCapacity ', [d.arg('ApplyCapacity', d.T.string)]),
    withApplyCapacity(ApplyCapacity): {
      assert std.isString(ApplyCapacity) : 'ApplyCapacity must be a string',
      assert ApplyCapacity == 'ON_UPDATE' || ApplyCapacity == 'ON_CREATE_AND_UPDATE' : "ApplyCapacity must be either 'ON_UPDATE' or 'ON_CREATE_AND_UPDATE'",
      Properties+::: { ApplyCapacity: ApplyCapacity },
    },
    '#withCertificateConfiguration': d.fn('`withCertificateConfiguration` CertificateConfiguration ', [d.arg('CertificateConfiguration', d.T.object)]),
    withCertificateConfiguration(CertificateConfiguration): {
      assert std.isObject(CertificateConfiguration) : 'CertificateConfiguration must be a object',
      Properties+::: { CertificateConfiguration: CertificateConfiguration },
    },
    '#withComputeType': d.fn('`withComputeType` ComputeType ', [d.arg('ComputeType', d.T.string)]),
    withComputeType(ComputeType): {
      assert std.isString(ComputeType) : 'ComputeType must be a string',
      assert ComputeType == 'EC2' || ComputeType == 'ANYWHERE' : "ComputeType must be either 'EC2' or 'ANYWHERE'",
      Properties+::: { ComputeType: ComputeType },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withDesiredEC2Instances': d.fn('`withDesiredEC2Instances` DesiredEC2Instances ', [d.arg('DesiredEC2Instances', d.T.integer)]),
    withDesiredEC2Instances(DesiredEC2Instances): {
      assert std.isNumber(DesiredEC2Instances) : 'DesiredEC2Instances must be a integer',
      Properties+::: { DesiredEC2Instances: DesiredEC2Instances },
    },
    '#withEC2InboundPermissions': d.fn('`withEC2InboundPermissions` EC2InboundPermissions ', [d.arg('EC2InboundPermissions', d.T.array)]),
    withEC2InboundPermissions(EC2InboundPermissions): {
      assert std.isArray(EC2InboundPermissions) : 'EC2InboundPermissions must be a array',
      Properties+::: { EC2InboundPermissions: EC2InboundPermissions },
    },
    '#withEC2InstanceType': d.fn('`withEC2InstanceType` EC2InstanceType ', [d.arg('EC2InstanceType', d.T.string)]),
    withEC2InstanceType(EC2InstanceType): {
      assert std.isString(EC2InstanceType) : 'EC2InstanceType must be a string',
      Properties+::: { EC2InstanceType: EC2InstanceType },
    },
    '#withFleetType': d.fn('`withFleetType` FleetType ', [d.arg('FleetType', d.T.string)]),
    withFleetType(FleetType): {
      assert std.isString(FleetType) : 'FleetType must be a string',
      assert FleetType == 'ON_DEMAND' || FleetType == 'SPOT' : "FleetType must be either 'ON_DEMAND' or 'SPOT'",
      Properties+::: { FleetType: FleetType },
    },
    '#withInstanceRoleARN': d.fn('`withInstanceRoleARN` InstanceRoleARN ', [d.arg('InstanceRoleARN', d.T.string)]),
    withInstanceRoleARN(InstanceRoleARN): {
      assert std.isString(InstanceRoleARN) : 'InstanceRoleARN must be a string',
      Properties+::: { InstanceRoleARN: InstanceRoleARN },
    },
    '#withInstanceRoleCredentialsProvider': d.fn('`withInstanceRoleCredentialsProvider` InstanceRoleCredentialsProvider ', [d.arg('InstanceRoleCredentialsProvider', d.T.string)]),
    withInstanceRoleCredentialsProvider(InstanceRoleCredentialsProvider): {
      assert std.isString(InstanceRoleCredentialsProvider) : 'InstanceRoleCredentialsProvider must be a string',
      assert InstanceRoleCredentialsProvider == 'SHARED_CREDENTIAL_FILE' : "InstanceRoleCredentialsProvider must be either 'SHARED_CREDENTIAL_FILE'",
      Properties+::: { InstanceRoleCredentialsProvider: InstanceRoleCredentialsProvider },
    },
    '#withLocations': d.fn('`withLocations` Locations ', [d.arg('Locations', d.T.array)]),
    withLocations(Locations): {
      assert std.isArray(Locations) : 'Locations must be a array',
      Properties+::: { Locations: Locations },
    },
    '#withLogPaths': d.fn('`withLogPaths` LogPaths ', [d.arg('LogPaths', d.T.array)]),
    withLogPaths(LogPaths): {
      assert std.isArray(LogPaths) : 'LogPaths must be a array',
      Properties+::: { LogPaths: LogPaths },
    },
    '#withMaxSize': d.fn('`withMaxSize` MaxSize ', [d.arg('MaxSize', d.T.integer)]),
    withMaxSize(MaxSize): {
      assert std.isNumber(MaxSize) : 'MaxSize must be a integer',
      Properties+::: { MaxSize: MaxSize },
    },
    '#withMetricGroups': d.fn('`withMetricGroups` MetricGroups ', [d.arg('MetricGroups', d.T.array)]),
    withMetricGroups(MetricGroups): {
      assert std.isArray(MetricGroups) : 'MetricGroups must be a array',
      Properties+::: { MetricGroups: MetricGroups },
    },
    '#withMinSize': d.fn('`withMinSize` MinSize ', [d.arg('MinSize', d.T.integer)]),
    withMinSize(MinSize): {
      assert std.isNumber(MinSize) : 'MinSize must be a integer',
      Properties+::: { MinSize: MinSize },
    },
    '#withNewGameSessionProtectionPolicy': d.fn('`withNewGameSessionProtectionPolicy` NewGameSessionProtectionPolicy ', [d.arg('NewGameSessionProtectionPolicy', d.T.string)]),
    withNewGameSessionProtectionPolicy(NewGameSessionProtectionPolicy): {
      assert std.isString(NewGameSessionProtectionPolicy) : 'NewGameSessionProtectionPolicy must be a string',
      assert NewGameSessionProtectionPolicy == 'FullProtection' || NewGameSessionProtectionPolicy == 'NoProtection' : "NewGameSessionProtectionPolicy must be either 'FullProtection' or 'NoProtection'",
      Properties+::: { NewGameSessionProtectionPolicy: NewGameSessionProtectionPolicy },
    },
    '#withPeerVpcAwsAccountId': d.fn('`withPeerVpcAwsAccountId` PeerVpcAwsAccountId ', [d.arg('PeerVpcAwsAccountId', d.T.string)]),
    withPeerVpcAwsAccountId(PeerVpcAwsAccountId): {
      assert std.isString(PeerVpcAwsAccountId) : 'PeerVpcAwsAccountId must be a string',
      Properties+::: { PeerVpcAwsAccountId: PeerVpcAwsAccountId },
    },
    '#withPeerVpcId': d.fn('`withPeerVpcId` PeerVpcId ', [d.arg('PeerVpcId', d.T.string)]),
    withPeerVpcId(PeerVpcId): {
      assert std.isString(PeerVpcId) : 'PeerVpcId must be a string',
      Properties+::: { PeerVpcId: PeerVpcId },
    },
    '#withResourceCreationLimitPolicy': d.fn('`withResourceCreationLimitPolicy` ResourceCreationLimitPolicy ', [d.arg('ResourceCreationLimitPolicy', d.T.object)]),
    withResourceCreationLimitPolicy(ResourceCreationLimitPolicy): {
      assert std.isObject(ResourceCreationLimitPolicy) : 'ResourceCreationLimitPolicy must be a object',
      Properties+::: { ResourceCreationLimitPolicy: ResourceCreationLimitPolicy },
    },
    '#withFleetId': d.fn('`withFleetId` FleetId ', [d.arg('FleetId', d.T.string)]),
    withFleetId(FleetId): {
      assert std.isString(FleetId) : 'FleetId must be a string',
      Properties+::: { FleetId: FleetId },
    },
    '#withBuildId': d.fn('`withBuildId` BuildId ', [d.arg('BuildId', d.T.string)]),
    withBuildId(BuildId): {
      assert std.isString(BuildId) : 'BuildId must be a string',
      Properties+::: { BuildId: BuildId },
    },
    '#withScriptId': d.fn('`withScriptId` ScriptId ', [d.arg('ScriptId', d.T.string)]),
    withScriptId(ScriptId): {
      assert std.isString(ScriptId) : 'ScriptId must be a string',
      Properties+::: { ScriptId: ScriptId },
    },
    '#withRuntimeConfiguration': d.fn('`withRuntimeConfiguration` RuntimeConfiguration ', [d.arg('RuntimeConfiguration', d.T.object)]),
    withRuntimeConfiguration(RuntimeConfiguration): {
      assert std.isObject(RuntimeConfiguration) : 'RuntimeConfiguration must be a object',
      Properties+::: { RuntimeConfiguration: RuntimeConfiguration },
    },
    '#withServerLaunchParameters': d.fn('`withServerLaunchParameters` ServerLaunchParameters ', [d.arg('ServerLaunchParameters', d.T.string)]),
    withServerLaunchParameters(ServerLaunchParameters): {
      assert std.isString(ServerLaunchParameters) : 'ServerLaunchParameters must be a string',
      Properties+::: { ServerLaunchParameters: ServerLaunchParameters },
    },
    '#withServerLaunchPath': d.fn('`withServerLaunchPath` ServerLaunchPath ', [d.arg('ServerLaunchPath', d.T.string)]),
    withServerLaunchPath(ServerLaunchPath): {
      assert std.isString(ServerLaunchPath) : 'ServerLaunchPath must be a string',
      Properties+::: { ServerLaunchPath: ServerLaunchPath },
    },
  },
  GameServerGroup: {
    '#': d.pkg(
      name='GameServerGroup',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/GameLift.libsonnet',
      help='The AWS::GameLift::GameServerGroup resource creates an Amazon GameLift (GameLift) GameServerGroup.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::GameLift::GameServerGroup Resource
        * GameServerGroupName An identifier for the new game server group.
        * InstanceDefinitions A set of EC2 instance types to use when creating instances in the group.
        * RoleArn The Amazon Resource Name (ARN) for an IAM role that allows Amazon GameLift to access your EC2 Auto Scaling groups.
      |||,
      args=[
        d.arg('GameServerGroupName', 'd.T.string'),
        d.arg('InstanceDefinitions', 'd.T.array'),
        d.arg('RoleArn', 'd.T.string'),
      ]
    ),
    new(
      GameServerGroupName,
      InstanceDefinitions,
      RoleArn,
    ): {
      local base = self,
      Properties: {
        assert std.isString(GameServerGroupName) : 'GameServerGroupName must be a string',
        GameServerGroupName: GameServerGroupName,
        assert std.isArray(InstanceDefinitions) : 'InstanceDefinitions must be a array',
        InstanceDefinitions: InstanceDefinitions,
        assert std.isString(RoleArn) : 'RoleArn must be a string',
        RoleArn: RoleArn,
      },
      DependsOn:: [],
      Type: 'AWS::GameLift::GameServerGroup',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withAutoScalingGroupArn': d.fn('`withAutoScalingGroupArn` AutoScalingGroupArn ', [d.arg('AutoScalingGroupArn', d.T.string)]),
    withAutoScalingGroupArn(AutoScalingGroupArn): {
      assert std.isString(AutoScalingGroupArn) : 'AutoScalingGroupArn must be a string',
      Properties+::: { AutoScalingGroupArn: AutoScalingGroupArn },
    },
    '#withAutoScalingPolicy': d.fn('`withAutoScalingPolicy` AutoScalingPolicy ', [d.arg('AutoScalingPolicy', d.T.object)]),
    withAutoScalingPolicy(AutoScalingPolicy): {
      assert std.isObject(AutoScalingPolicy) : 'AutoScalingPolicy must be a object',
      Properties+::: { AutoScalingPolicy: AutoScalingPolicy },
    },
    '#withBalancingStrategy': d.fn('`withBalancingStrategy` BalancingStrategy ', [d.arg('BalancingStrategy', d.T.string)]),
    withBalancingStrategy(BalancingStrategy): {
      assert std.isString(BalancingStrategy) : 'BalancingStrategy must be a string',
      Properties+::: { BalancingStrategy: BalancingStrategy },
    },
    '#withDeleteOption': d.fn('`withDeleteOption` DeleteOption ', [d.arg('DeleteOption', d.T.string)]),
    withDeleteOption(DeleteOption): {
      assert std.isString(DeleteOption) : 'DeleteOption must be a string',
      Properties+::: { DeleteOption: DeleteOption },
    },
    '#withGameServerGroupArn': d.fn('`withGameServerGroupArn` GameServerGroupArn ', [d.arg('GameServerGroupArn', d.T.string)]),
    withGameServerGroupArn(GameServerGroupArn): {
      assert std.isString(GameServerGroupArn) : 'GameServerGroupArn must be a string',
      Properties+::: { GameServerGroupArn: GameServerGroupArn },
    },
    '#withGameServerProtectionPolicy': d.fn('`withGameServerProtectionPolicy` GameServerProtectionPolicy ', [d.arg('GameServerProtectionPolicy', d.T.string)]),
    withGameServerProtectionPolicy(GameServerProtectionPolicy): {
      assert std.isString(GameServerProtectionPolicy) : 'GameServerProtectionPolicy must be a string',
      Properties+::: { GameServerProtectionPolicy: GameServerProtectionPolicy },
    },
    '#withLaunchTemplate': d.fn('`withLaunchTemplate` LaunchTemplate ', [d.arg('LaunchTemplate', d.T.object)]),
    withLaunchTemplate(LaunchTemplate): {
      assert std.isObject(LaunchTemplate) : 'LaunchTemplate must be a object',
      Properties+::: { LaunchTemplate: LaunchTemplate },
    },
    '#withMaxSize': d.fn('`withMaxSize` MaxSize ', [d.arg('MaxSize', d.T.integer)]),
    withMaxSize(MaxSize): {
      // Type: number
      Properties+::: { MaxSize: MaxSize },
    },
    '#withMinSize': d.fn('`withMinSize` MinSize ', [d.arg('MinSize', d.T.integer)]),
    withMinSize(MinSize): {
      // Type: number
      Properties+::: { MinSize: MinSize },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withVpcSubnets': d.fn('`withVpcSubnets` VpcSubnets ', [d.arg('VpcSubnets', d.T.array)]),
    withVpcSubnets(VpcSubnets): {
      assert std.isArray(VpcSubnets) : 'VpcSubnets must be a array',
      Properties+::: { VpcSubnets: VpcSubnets },
    },
  },
  GameSessionQueue: {
    '#': d.pkg(
      name='GameSessionQueue',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/GameLift.libsonnet',
      help='The AWS::GameLift::GameSessionQueue resource creates an Amazon GameLift (GameLift) game session queue.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::GameLift::GameSessionQueue Resource
        * Name A descriptive label that is associated with game session queue. Queue names must be unique within each Region.
      |||,
      args=[
        d.arg('Name', 'd.T.string'),
      ]
    ),
    new(
      Name,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
      },
      DependsOn:: [],
      Type: 'AWS::GameLift::GameSessionQueue',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withTimeoutInSeconds': d.fn('`withTimeoutInSeconds` TimeoutInSeconds ', [d.arg('TimeoutInSeconds', d.T.integer)]),
    withTimeoutInSeconds(TimeoutInSeconds): {
      assert std.isNumber(TimeoutInSeconds) : 'TimeoutInSeconds must be a integer',
      Properties+::: { TimeoutInSeconds: TimeoutInSeconds },
    },
    '#withDestinations': d.fn('`withDestinations` Destinations ', [d.arg('Destinations', d.T.array)]),
    withDestinations(Destinations): {
      assert std.isArray(Destinations) : 'Destinations must be a array',
      Properties+::: { Destinations: Destinations },
    },
    '#withPlayerLatencyPolicies': d.fn('`withPlayerLatencyPolicies` PlayerLatencyPolicies ', [d.arg('PlayerLatencyPolicies', d.T.array)]),
    withPlayerLatencyPolicies(PlayerLatencyPolicies): {
      assert std.isArray(PlayerLatencyPolicies) : 'PlayerLatencyPolicies must be a array',
      Properties+::: { PlayerLatencyPolicies: PlayerLatencyPolicies },
    },
    '#withCustomEventData': d.fn('`withCustomEventData` CustomEventData ', [d.arg('CustomEventData', d.T.string)]),
    withCustomEventData(CustomEventData): {
      assert std.isString(CustomEventData) : 'CustomEventData must be a string',
      Properties+::: { CustomEventData: CustomEventData },
    },
    '#withNotificationTarget': d.fn('`withNotificationTarget` NotificationTarget ', [d.arg('NotificationTarget', d.T.string)]),
    withNotificationTarget(NotificationTarget): {
      assert std.isString(NotificationTarget) : 'NotificationTarget must be a string',
      Properties+::: { NotificationTarget: NotificationTarget },
    },
    '#withFilterConfiguration': d.fn('`withFilterConfiguration` FilterConfiguration ', [d.arg('FilterConfiguration', d.T.object)]),
    withFilterConfiguration(FilterConfiguration): {
      assert std.isObject(FilterConfiguration) : 'FilterConfiguration must be a object',
      Properties+::: { FilterConfiguration: FilterConfiguration },
    },
    '#withPriorityConfiguration': d.fn('`withPriorityConfiguration` PriorityConfiguration ', [d.arg('PriorityConfiguration', d.T.object)]),
    withPriorityConfiguration(PriorityConfiguration): {
      assert std.isObject(PriorityConfiguration) : 'PriorityConfiguration must be a object',
      Properties+::: { PriorityConfiguration: PriorityConfiguration },
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
  Location: {
    '#': d.pkg(
      name='Location',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/GameLift.libsonnet',
      help='The AWS::GameLift::Location resource creates an Amazon GameLift (GameLift) custom location.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::GameLift::Location Resource
        * LocationName 
      |||,
      args=[
        d.arg('LocationName', 'd.T.string'),
      ]
    ),
    new(
      LocationName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(LocationName) : 'LocationName must be a string',
        LocationName: LocationName,
      },
      DependsOn:: [],
      Type: 'AWS::GameLift::Location',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withLocationArn': d.fn('`withLocationArn` LocationArn ', [d.arg('LocationArn', d.T.string)]),
    withLocationArn(LocationArn): {
      assert std.isString(LocationArn) : 'LocationArn must be a string',
      Properties+::: { LocationArn: LocationArn },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  MatchmakingConfiguration: {
    '#': d.pkg(
      name='MatchmakingConfiguration',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/GameLift.libsonnet',
      help='The AWS::GameLift::MatchmakingConfiguration resource creates an Amazon GameLift (GameLift) matchmaking configuration.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::GameLift::MatchmakingConfiguration Resource
        * AcceptanceRequired A flag that indicates whether a match that was created with this configuration must be accepted by the matched players
        * Name A unique identifier for the matchmaking configuration.
        * RequestTimeoutSeconds The maximum duration, in seconds, that a matchmaking ticket can remain in process before timing out.
        * RuleSetName A unique identifier for the matchmaking rule set to use with this configuration.
      |||,
      args=[
        d.arg('AcceptanceRequired', 'd.T.boolean'),
        d.arg('Name', 'd.T.string'),
        d.arg('RequestTimeoutSeconds', 'd.T.integer'),
        d.arg('RuleSetName', 'd.T.string'),
      ]
    ),
    new(
      AcceptanceRequired,
      Name,
      RequestTimeoutSeconds,
      RuleSetName,
    ): {
      local base = self,
      Properties: {
        assert std.isBoolean(AcceptanceRequired) : 'AcceptanceRequired must be a boolean',
        AcceptanceRequired: AcceptanceRequired,
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isNumber(RequestTimeoutSeconds) : 'RequestTimeoutSeconds must be a integer',
        RequestTimeoutSeconds: RequestTimeoutSeconds,
        assert std.isString(RuleSetName) : 'RuleSetName must be a string',
        RuleSetName: RuleSetName,
      },
      DependsOn:: [],
      Type: 'AWS::GameLift::MatchmakingConfiguration',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withAcceptanceTimeoutSeconds': d.fn('`withAcceptanceTimeoutSeconds` AcceptanceTimeoutSeconds ', [d.arg('AcceptanceTimeoutSeconds', d.T.integer)]),
    withAcceptanceTimeoutSeconds(AcceptanceTimeoutSeconds): {
      assert std.isNumber(AcceptanceTimeoutSeconds) : 'AcceptanceTimeoutSeconds must be a integer',
      Properties+::: { AcceptanceTimeoutSeconds: AcceptanceTimeoutSeconds },
    },
    '#withAdditionalPlayerCount': d.fn('`withAdditionalPlayerCount` AdditionalPlayerCount ', [d.arg('AdditionalPlayerCount', d.T.integer)]),
    withAdditionalPlayerCount(AdditionalPlayerCount): {
      assert std.isNumber(AdditionalPlayerCount) : 'AdditionalPlayerCount must be a integer',
      Properties+::: { AdditionalPlayerCount: AdditionalPlayerCount },
    },
    '#withBackfillMode': d.fn('`withBackfillMode` BackfillMode ', [d.arg('BackfillMode', d.T.string)]),
    withBackfillMode(BackfillMode): {
      assert std.isString(BackfillMode) : 'BackfillMode must be a string',
      assert BackfillMode == 'AUTOMATIC' || BackfillMode == 'MANUAL' : "BackfillMode must be either 'AUTOMATIC' or 'MANUAL'",
      Properties+::: { BackfillMode: BackfillMode },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withCreationTime': d.fn('`withCreationTime` CreationTime ', [d.arg('CreationTime', d.T.string)]),
    withCreationTime(CreationTime): {
      assert std.isString(CreationTime) : 'CreationTime must be a string',
      Properties+::: { CreationTime: CreationTime },
    },
    '#withCustomEventData': d.fn('`withCustomEventData` CustomEventData ', [d.arg('CustomEventData', d.T.string)]),
    withCustomEventData(CustomEventData): {
      assert std.isString(CustomEventData) : 'CustomEventData must be a string',
      Properties+::: { CustomEventData: CustomEventData },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withFlexMatchMode': d.fn('`withFlexMatchMode` FlexMatchMode ', [d.arg('FlexMatchMode', d.T.string)]),
    withFlexMatchMode(FlexMatchMode): {
      assert std.isString(FlexMatchMode) : 'FlexMatchMode must be a string',
      assert FlexMatchMode == 'STANDALONE' || FlexMatchMode == 'WITH_QUEUE' : "FlexMatchMode must be either 'STANDALONE' or 'WITH_QUEUE'",
      Properties+::: { FlexMatchMode: FlexMatchMode },
    },
    '#withGameProperties': d.fn('`withGameProperties` GameProperties ', [d.arg('GameProperties', d.T.array)]),
    withGameProperties(GameProperties): {
      assert std.isArray(GameProperties) : 'GameProperties must be a array',
      Properties+::: { GameProperties: GameProperties },
    },
    '#withGameSessionData': d.fn('`withGameSessionData` GameSessionData ', [d.arg('GameSessionData', d.T.string)]),
    withGameSessionData(GameSessionData): {
      assert std.isString(GameSessionData) : 'GameSessionData must be a string',
      Properties+::: { GameSessionData: GameSessionData },
    },
    '#withGameSessionQueueArns': d.fn('`withGameSessionQueueArns` GameSessionQueueArns ', [d.arg('GameSessionQueueArns', d.T.array)]),
    withGameSessionQueueArns(GameSessionQueueArns): {
      assert std.isArray(GameSessionQueueArns) : 'GameSessionQueueArns must be a array',
      Properties+::: { GameSessionQueueArns: GameSessionQueueArns },
    },
    '#withNotificationTarget': d.fn('`withNotificationTarget` NotificationTarget ', [d.arg('NotificationTarget', d.T.string)]),
    withNotificationTarget(NotificationTarget): {
      assert std.isString(NotificationTarget) : 'NotificationTarget must be a string',
      Properties+::: { NotificationTarget: NotificationTarget },
    },
    '#withRuleSetArn': d.fn('`withRuleSetArn` RuleSetArn ', [d.arg('RuleSetArn', d.T.string)]),
    withRuleSetArn(RuleSetArn): {
      assert std.isString(RuleSetArn) : 'RuleSetArn must be a string',
      Properties+::: { RuleSetArn: RuleSetArn },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  MatchmakingRuleSet: {
    '#': d.pkg(
      name='MatchmakingRuleSet',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/GameLift.libsonnet',
      help='The AWS::GameLift::MatchmakingRuleSet resource creates an Amazon GameLift (GameLift) matchmaking rule set.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::GameLift::MatchmakingRuleSet Resource
        * Name A unique identifier for the matchmaking rule set.
        * RuleSetBody A collection of matchmaking rules, formatted as a JSON string.
      |||,
      args=[
        d.arg('Name', 'd.T.string'),
        d.arg('RuleSetBody', 'd.T.string'),
      ]
    ),
    new(
      Name,
      RuleSetBody,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isString(RuleSetBody) : 'RuleSetBody must be a string',
        RuleSetBody: RuleSetBody,
      },
      DependsOn:: [],
      Type: 'AWS::GameLift::MatchmakingRuleSet',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withCreationTime': d.fn('`withCreationTime` CreationTime ', [d.arg('CreationTime', d.T.string)]),
    withCreationTime(CreationTime): {
      assert std.isString(CreationTime) : 'CreationTime must be a string',
      Properties+::: { CreationTime: CreationTime },
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
  Script: {
    '#': d.pkg(
      name='Script',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/GameLift.libsonnet',
      help='The AWS::GameLift::Script resource creates a new script record for your Realtime Servers script. Realtime scripts are JavaScript that provide configuration settings and optional custom game logic for your game. The script is deployed when you create a Realtime Servers fleet to host your game sessions. Script logic is executed during an active game session.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::GameLift::Script Resource
        * StorageLocation The location of the Amazon S3 bucket where a zipped file containing your Realtime scripts is stored. The storage location must specify the Amazon S3 bucket name, the zip file name (the &#34;key&#34;), and a role ARN that allows Amazon GameLift to access the Amazon S3 storage location. The S3 bucket must be in the same Region where you want to create a new script. By default, Amazon GameLift uploads the latest version of the zip file; if you have S3 object versioning turned on, you can use the ObjectVersion parameter to specify an earlier version.
      |||,
      args=[
        d.arg('StorageLocation', 'd.T.object'),
      ]
    ),
    new(
      StorageLocation,
    ): {
      local base = self,
      Properties: {
        assert std.isObject(StorageLocation) : 'StorageLocation must be a object',
        StorageLocation: StorageLocation,
      },
      DependsOn:: [],
      Type: 'AWS::GameLift::Script',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
    '#withVersion': d.fn('`withVersion` Version ', [d.arg('Version', d.T.string)]),
    withVersion(Version): {
      assert std.isString(Version) : 'Version must be a string',
      Properties+::: { Version: Version },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withCreationTime': d.fn('`withCreationTime` CreationTime ', [d.arg('CreationTime', d.T.string)]),
    withCreationTime(CreationTime): {
      assert std.isString(CreationTime) : 'CreationTime must be a string',
      Properties+::: { CreationTime: CreationTime },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withSizeOnDisk': d.fn('`withSizeOnDisk` SizeOnDisk ', [d.arg('SizeOnDisk', d.T.integer)]),
    withSizeOnDisk(SizeOnDisk): {
      assert std.isNumber(SizeOnDisk) : 'SizeOnDisk must be a integer',
      Properties+::: { SizeOnDisk: SizeOnDisk },
    },
  },
}
