local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  App: {
    '#': d.pkg(
      name='App',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/OpsWorks.libsonnet',
      help='Resource Type definition for AWS::OpsWorks::App',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::OpsWorks::App Resource
        * Type 
        * Name 
        * StackId 
      |||,
      args=[
        d.arg('Type', 'd.T.string'),
        d.arg('Name', 'd.T.string'),
        d.arg('StackId', 'd.T.string'),
      ]
    ),
    new(
      Type,
      Name,
      StackId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Type) : 'Type must be a string',
        Type: Type,
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isString(StackId) : 'StackId must be a string',
        StackId: StackId,
      },
      DependsOn:: [],
      Type: 'AWS::OpsWorks::App',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withAppSource': d.fn('`withAppSource` AppSource ', [d.arg('AppSource', d.T.object)]),
    withAppSource(AppSource): {
      assert std.isObject(AppSource) : 'AppSource must be a object',
      Properties+::: { AppSource: AppSource },
    },
    '#withAttributes': d.fn('`withAttributes` Attributes ', [d.arg('Attributes', d.T.object)]),
    withAttributes(Attributes): {
      assert std.isObject(Attributes) : 'Attributes must be a object',
      Properties+::: { Attributes: Attributes },
    },
    '#withDataSources': d.fn('`withDataSources` DataSources ', [d.arg('DataSources', d.T.array)]),
    withDataSources(DataSources): {
      assert std.isArray(DataSources) : 'DataSources must be a array',
      Properties+::: { DataSources: DataSources },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withDomains': d.fn('`withDomains` Domains ', [d.arg('Domains', d.T.array)]),
    withDomains(Domains): {
      assert std.isArray(Domains) : 'Domains must be a array',
      Properties+::: { Domains: Domains },
    },
    '#withEnableSsl': d.fn('`withEnableSsl` EnableSsl ', [d.arg('EnableSsl', d.T.boolean)]),
    withEnableSsl(EnableSsl): {
      assert std.isBoolean(EnableSsl) : 'EnableSsl must be a boolean',
      Properties+::: { EnableSsl: EnableSsl },
    },
    '#withEnvironment': d.fn('`withEnvironment` Environment ', [d.arg('Environment', d.T.array)]),
    withEnvironment(Environment): {
      assert std.isArray(Environment) : 'Environment must be a array',
      Properties+::: { Environment: Environment },
    },
    '#withShortname': d.fn('`withShortname` Shortname ', [d.arg('Shortname', d.T.string)]),
    withShortname(Shortname): {
      assert std.isString(Shortname) : 'Shortname must be a string',
      Properties+::: { Shortname: Shortname },
    },
    '#withSslConfiguration': d.fn('`withSslConfiguration` SslConfiguration ', [d.arg('SslConfiguration', d.T.object)]),
    withSslConfiguration(SslConfiguration): {
      assert std.isObject(SslConfiguration) : 'SslConfiguration must be a object',
      Properties+::: { SslConfiguration: SslConfiguration },
    },
  },
  ElasticLoadBalancerAttachment: {
    '#': d.pkg(
      name='ElasticLoadBalancerAttachment',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/OpsWorks.libsonnet',
      help='Resource Type definition for AWS::OpsWorks::ElasticLoadBalancerAttachment',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::OpsWorks::ElasticLoadBalancerAttachment Resource
        * LayerId 
        * ElasticLoadBalancerName 
      |||,
      args=[
        d.arg('LayerId', 'd.T.string'),
        d.arg('ElasticLoadBalancerName', 'd.T.string'),
      ]
    ),
    new(
      LayerId,
      ElasticLoadBalancerName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(LayerId) : 'LayerId must be a string',
        LayerId: LayerId,
        assert std.isString(ElasticLoadBalancerName) : 'ElasticLoadBalancerName must be a string',
        ElasticLoadBalancerName: ElasticLoadBalancerName,
      },
      DependsOn:: [],
      Type: 'AWS::OpsWorks::ElasticLoadBalancerAttachment',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
  },
  Instance: {
    '#': d.pkg(
      name='Instance',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/OpsWorks.libsonnet',
      help='Resource Type definition for AWS::OpsWorks::Instance',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::OpsWorks::Instance Resource
        * LayerIds 
        * InstanceType 
        * StackId 
      |||,
      args=[
        d.arg('LayerIds', 'd.T.array'),
        d.arg('InstanceType', 'd.T.string'),
        d.arg('StackId', 'd.T.string'),
      ]
    ),
    new(
      LayerIds,
      InstanceType,
      StackId,
    ): {
      local base = self,
      Properties: {
        assert std.isArray(LayerIds) : 'LayerIds must be a array',
        LayerIds: LayerIds,
        assert std.isString(InstanceType) : 'InstanceType must be a string',
        InstanceType: InstanceType,
        assert std.isString(StackId) : 'StackId must be a string',
        StackId: StackId,
      },
      DependsOn:: [],
      Type: 'AWS::OpsWorks::Instance',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withAvailabilityZone': d.fn('`withAvailabilityZone` AvailabilityZone ', [d.arg('AvailabilityZone', d.T.string)]),
    withAvailabilityZone(AvailabilityZone): {
      assert std.isString(AvailabilityZone) : 'AvailabilityZone must be a string',
      Properties+::: { AvailabilityZone: AvailabilityZone },
    },
    '#withPrivateDnsName': d.fn('`withPrivateDnsName` PrivateDnsName ', [d.arg('PrivateDnsName', d.T.string)]),
    withPrivateDnsName(PrivateDnsName): {
      assert std.isString(PrivateDnsName) : 'PrivateDnsName must be a string',
      Properties+::: { PrivateDnsName: PrivateDnsName },
    },
    '#withPrivateIp': d.fn('`withPrivateIp` PrivateIp ', [d.arg('PrivateIp', d.T.string)]),
    withPrivateIp(PrivateIp): {
      assert std.isString(PrivateIp) : 'PrivateIp must be a string',
      Properties+::: { PrivateIp: PrivateIp },
    },
    '#withPublicDnsName': d.fn('`withPublicDnsName` PublicDnsName ', [d.arg('PublicDnsName', d.T.string)]),
    withPublicDnsName(PublicDnsName): {
      assert std.isString(PublicDnsName) : 'PublicDnsName must be a string',
      Properties+::: { PublicDnsName: PublicDnsName },
    },
    '#withPublicIp': d.fn('`withPublicIp` PublicIp ', [d.arg('PublicIp', d.T.string)]),
    withPublicIp(PublicIp): {
      assert std.isString(PublicIp) : 'PublicIp must be a string',
      Properties+::: { PublicIp: PublicIp },
    },
    '#withAgentVersion': d.fn('`withAgentVersion` AgentVersion ', [d.arg('AgentVersion', d.T.string)]),
    withAgentVersion(AgentVersion): {
      assert std.isString(AgentVersion) : 'AgentVersion must be a string',
      Properties+::: { AgentVersion: AgentVersion },
    },
    '#withAmiId': d.fn('`withAmiId` AmiId ', [d.arg('AmiId', d.T.string)]),
    withAmiId(AmiId): {
      assert std.isString(AmiId) : 'AmiId must be a string',
      Properties+::: { AmiId: AmiId },
    },
    '#withArchitecture': d.fn('`withArchitecture` Architecture ', [d.arg('Architecture', d.T.string)]),
    withArchitecture(Architecture): {
      assert std.isString(Architecture) : 'Architecture must be a string',
      Properties+::: { Architecture: Architecture },
    },
    '#withAutoScalingType': d.fn('`withAutoScalingType` AutoScalingType ', [d.arg('AutoScalingType', d.T.string)]),
    withAutoScalingType(AutoScalingType): {
      assert std.isString(AutoScalingType) : 'AutoScalingType must be a string',
      Properties+::: { AutoScalingType: AutoScalingType },
    },
    '#withBlockDeviceMappings': d.fn('`withBlockDeviceMappings` BlockDeviceMappings ', [d.arg('BlockDeviceMappings', d.T.array)]),
    withBlockDeviceMappings(BlockDeviceMappings): {
      assert std.isArray(BlockDeviceMappings) : 'BlockDeviceMappings must be a array',
      Properties+::: { BlockDeviceMappings: BlockDeviceMappings },
    },
    '#withEbsOptimized': d.fn('`withEbsOptimized` EbsOptimized ', [d.arg('EbsOptimized', d.T.boolean)]),
    withEbsOptimized(EbsOptimized): {
      assert std.isBoolean(EbsOptimized) : 'EbsOptimized must be a boolean',
      Properties+::: { EbsOptimized: EbsOptimized },
    },
    '#withElasticIps': d.fn('`withElasticIps` ElasticIps ', [d.arg('ElasticIps', d.T.array)]),
    withElasticIps(ElasticIps): {
      assert std.isArray(ElasticIps) : 'ElasticIps must be a array',
      Properties+::: { ElasticIps: ElasticIps },
    },
    '#withHostname': d.fn('`withHostname` Hostname ', [d.arg('Hostname', d.T.string)]),
    withHostname(Hostname): {
      assert std.isString(Hostname) : 'Hostname must be a string',
      Properties+::: { Hostname: Hostname },
    },
    '#withInstallUpdatesOnBoot': d.fn('`withInstallUpdatesOnBoot` InstallUpdatesOnBoot ', [d.arg('InstallUpdatesOnBoot', d.T.boolean)]),
    withInstallUpdatesOnBoot(InstallUpdatesOnBoot): {
      assert std.isBoolean(InstallUpdatesOnBoot) : 'InstallUpdatesOnBoot must be a boolean',
      Properties+::: { InstallUpdatesOnBoot: InstallUpdatesOnBoot },
    },
    '#withOs': d.fn('`withOs` Os ', [d.arg('Os', d.T.string)]),
    withOs(Os): {
      assert std.isString(Os) : 'Os must be a string',
      Properties+::: { Os: Os },
    },
    '#withRootDeviceType': d.fn('`withRootDeviceType` RootDeviceType ', [d.arg('RootDeviceType', d.T.string)]),
    withRootDeviceType(RootDeviceType): {
      assert std.isString(RootDeviceType) : 'RootDeviceType must be a string',
      Properties+::: { RootDeviceType: RootDeviceType },
    },
    '#withSshKeyName': d.fn('`withSshKeyName` SshKeyName ', [d.arg('SshKeyName', d.T.string)]),
    withSshKeyName(SshKeyName): {
      assert std.isString(SshKeyName) : 'SshKeyName must be a string',
      Properties+::: { SshKeyName: SshKeyName },
    },
    '#withSubnetId': d.fn('`withSubnetId` SubnetId ', [d.arg('SubnetId', d.T.string)]),
    withSubnetId(SubnetId): {
      assert std.isString(SubnetId) : 'SubnetId must be a string',
      Properties+::: { SubnetId: SubnetId },
    },
    '#withTenancy': d.fn('`withTenancy` Tenancy ', [d.arg('Tenancy', d.T.string)]),
    withTenancy(Tenancy): {
      assert std.isString(Tenancy) : 'Tenancy must be a string',
      Properties+::: { Tenancy: Tenancy },
    },
    '#withTimeBasedAutoScaling': d.fn('`withTimeBasedAutoScaling` TimeBasedAutoScaling ', [d.arg('TimeBasedAutoScaling', d.T.object)]),
    withTimeBasedAutoScaling(TimeBasedAutoScaling): {
      assert std.isObject(TimeBasedAutoScaling) : 'TimeBasedAutoScaling must be a object',
      Properties+::: { TimeBasedAutoScaling: TimeBasedAutoScaling },
    },
    '#withVirtualizationType': d.fn('`withVirtualizationType` VirtualizationType ', [d.arg('VirtualizationType', d.T.string)]),
    withVirtualizationType(VirtualizationType): {
      assert std.isString(VirtualizationType) : 'VirtualizationType must be a string',
      Properties+::: { VirtualizationType: VirtualizationType },
    },
    '#withVolumes': d.fn('`withVolumes` Volumes ', [d.arg('Volumes', d.T.array)]),
    withVolumes(Volumes): {
      assert std.isArray(Volumes) : 'Volumes must be a array',
      Properties+::: { Volumes: Volumes },
    },
  },
  Layer: {
    '#': d.pkg(
      name='Layer',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/OpsWorks.libsonnet',
      help='Resource Type definition for AWS::OpsWorks::Layer',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::OpsWorks::Layer Resource
        * EnableAutoHealing 
        * Name 
        * Type 
        * AutoAssignElasticIps 
        * Shortname 
        * AutoAssignPublicIps 
        * StackId 
      |||,
      args=[
        d.arg('EnableAutoHealing', 'd.T.boolean'),
        d.arg('Name', 'd.T.string'),
        d.arg('Type', 'd.T.string'),
        d.arg('AutoAssignElasticIps', 'd.T.boolean'),
        d.arg('Shortname', 'd.T.string'),
        d.arg('AutoAssignPublicIps', 'd.T.boolean'),
        d.arg('StackId', 'd.T.string'),
      ]
    ),
    new(
      EnableAutoHealing,
      Name,
      Type,
      AutoAssignElasticIps,
      Shortname,
      AutoAssignPublicIps,
      StackId,
    ): {
      local base = self,
      Properties: {
        assert std.isBoolean(EnableAutoHealing) : 'EnableAutoHealing must be a boolean',
        EnableAutoHealing: EnableAutoHealing,
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isString(Type) : 'Type must be a string',
        Type: Type,
        assert std.isBoolean(AutoAssignElasticIps) : 'AutoAssignElasticIps must be a boolean',
        AutoAssignElasticIps: AutoAssignElasticIps,
        assert std.isString(Shortname) : 'Shortname must be a string',
        Shortname: Shortname,
        assert std.isBoolean(AutoAssignPublicIps) : 'AutoAssignPublicIps must be a boolean',
        AutoAssignPublicIps: AutoAssignPublicIps,
        assert std.isString(StackId) : 'StackId must be a string',
        StackId: StackId,
      },
      DependsOn:: [],
      Type: 'AWS::OpsWorks::Layer',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withAttributes': d.fn('`withAttributes` Attributes ', [d.arg('Attributes', d.T.object)]),
    withAttributes(Attributes): {
      assert std.isObject(Attributes) : 'Attributes must be a object',
      Properties+::: { Attributes: Attributes },
    },
    '#withCustomInstanceProfileArn': d.fn('`withCustomInstanceProfileArn` CustomInstanceProfileArn ', [d.arg('CustomInstanceProfileArn', d.T.string)]),
    withCustomInstanceProfileArn(CustomInstanceProfileArn): {
      assert std.isString(CustomInstanceProfileArn) : 'CustomInstanceProfileArn must be a string',
      Properties+::: { CustomInstanceProfileArn: CustomInstanceProfileArn },
    },
    '#withCustomJson': d.fn('`withCustomJson` CustomJson ', [d.arg('CustomJson', d.T.object)]),
    withCustomJson(CustomJson): {
      assert std.isObject(CustomJson) : 'CustomJson must be a object',
      Properties+::: { CustomJson: CustomJson },
    },
    '#withCustomRecipes': d.fn('`withCustomRecipes` CustomRecipes ', [d.arg('CustomRecipes', d.T.object)]),
    withCustomRecipes(CustomRecipes): {
      assert std.isObject(CustomRecipes) : 'CustomRecipes must be a object',
      Properties+::: { CustomRecipes: CustomRecipes },
    },
    '#withCustomSecurityGroupIds': d.fn('`withCustomSecurityGroupIds` CustomSecurityGroupIds ', [d.arg('CustomSecurityGroupIds', d.T.array)]),
    withCustomSecurityGroupIds(CustomSecurityGroupIds): {
      assert std.isArray(CustomSecurityGroupIds) : 'CustomSecurityGroupIds must be a array',
      Properties+::: { CustomSecurityGroupIds: CustomSecurityGroupIds },
    },
    '#withInstallUpdatesOnBoot': d.fn('`withInstallUpdatesOnBoot` InstallUpdatesOnBoot ', [d.arg('InstallUpdatesOnBoot', d.T.boolean)]),
    withInstallUpdatesOnBoot(InstallUpdatesOnBoot): {
      assert std.isBoolean(InstallUpdatesOnBoot) : 'InstallUpdatesOnBoot must be a boolean',
      Properties+::: { InstallUpdatesOnBoot: InstallUpdatesOnBoot },
    },
    '#withLifecycleEventConfiguration': d.fn('`withLifecycleEventConfiguration` LifecycleEventConfiguration ', [d.arg('LifecycleEventConfiguration', d.T.object)]),
    withLifecycleEventConfiguration(LifecycleEventConfiguration): {
      assert std.isObject(LifecycleEventConfiguration) : 'LifecycleEventConfiguration must be a object',
      Properties+::: { LifecycleEventConfiguration: LifecycleEventConfiguration },
    },
    '#withLoadBasedAutoScaling': d.fn('`withLoadBasedAutoScaling` LoadBasedAutoScaling ', [d.arg('LoadBasedAutoScaling', d.T.object)]),
    withLoadBasedAutoScaling(LoadBasedAutoScaling): {
      assert std.isObject(LoadBasedAutoScaling) : 'LoadBasedAutoScaling must be a object',
      Properties+::: { LoadBasedAutoScaling: LoadBasedAutoScaling },
    },
    '#withPackages': d.fn('`withPackages` Packages ', [d.arg('Packages', d.T.array)]),
    withPackages(Packages): {
      assert std.isArray(Packages) : 'Packages must be a array',
      Properties+::: { Packages: Packages },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withUseEbsOptimizedInstances': d.fn('`withUseEbsOptimizedInstances` UseEbsOptimizedInstances ', [d.arg('UseEbsOptimizedInstances', d.T.boolean)]),
    withUseEbsOptimizedInstances(UseEbsOptimizedInstances): {
      assert std.isBoolean(UseEbsOptimizedInstances) : 'UseEbsOptimizedInstances must be a boolean',
      Properties+::: { UseEbsOptimizedInstances: UseEbsOptimizedInstances },
    },
    '#withVolumeConfigurations': d.fn('`withVolumeConfigurations` VolumeConfigurations ', [d.arg('VolumeConfigurations', d.T.array)]),
    withVolumeConfigurations(VolumeConfigurations): {
      assert std.isArray(VolumeConfigurations) : 'VolumeConfigurations must be a array',
      Properties+::: { VolumeConfigurations: VolumeConfigurations },
    },
  },
  Stack: {
    '#': d.pkg(
      name='Stack',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/OpsWorks.libsonnet',
      help='Resource Type definition for AWS::OpsWorks::Stack',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::OpsWorks::Stack Resource
        * DefaultInstanceProfileArn 
        * ServiceRoleArn 
        * Name 
      |||,
      args=[
        d.arg('DefaultInstanceProfileArn', 'd.T.string'),
        d.arg('ServiceRoleArn', 'd.T.string'),
        d.arg('Name', 'd.T.string'),
      ]
    ),
    new(
      DefaultInstanceProfileArn,
      ServiceRoleArn,
      Name,
    ): {
      local base = self,
      Properties: {
        assert std.isString(DefaultInstanceProfileArn) : 'DefaultInstanceProfileArn must be a string',
        DefaultInstanceProfileArn: DefaultInstanceProfileArn,
        assert std.isString(ServiceRoleArn) : 'ServiceRoleArn must be a string',
        ServiceRoleArn: ServiceRoleArn,
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
      },
      DependsOn:: [],
      Type: 'AWS::OpsWorks::Stack',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withAgentVersion': d.fn('`withAgentVersion` AgentVersion ', [d.arg('AgentVersion', d.T.string)]),
    withAgentVersion(AgentVersion): {
      assert std.isString(AgentVersion) : 'AgentVersion must be a string',
      Properties+::: { AgentVersion: AgentVersion },
    },
    '#withAttributes': d.fn('`withAttributes` Attributes ', [d.arg('Attributes', d.T.object)]),
    withAttributes(Attributes): {
      assert std.isObject(Attributes) : 'Attributes must be a object',
      Properties+::: { Attributes: Attributes },
    },
    '#withChefConfiguration': d.fn('`withChefConfiguration` ChefConfiguration ', [d.arg('ChefConfiguration', d.T.object)]),
    withChefConfiguration(ChefConfiguration): {
      assert std.isObject(ChefConfiguration) : 'ChefConfiguration must be a object',
      Properties+::: { ChefConfiguration: ChefConfiguration },
    },
    '#withCloneAppIds': d.fn('`withCloneAppIds` CloneAppIds ', [d.arg('CloneAppIds', d.T.array)]),
    withCloneAppIds(CloneAppIds): {
      assert std.isArray(CloneAppIds) : 'CloneAppIds must be a array',
      Properties+::: { CloneAppIds: CloneAppIds },
    },
    '#withClonePermissions': d.fn('`withClonePermissions` ClonePermissions ', [d.arg('ClonePermissions', d.T.boolean)]),
    withClonePermissions(ClonePermissions): {
      assert std.isBoolean(ClonePermissions) : 'ClonePermissions must be a boolean',
      Properties+::: { ClonePermissions: ClonePermissions },
    },
    '#withConfigurationManager': d.fn('`withConfigurationManager` ConfigurationManager ', [d.arg('ConfigurationManager', d.T.object)]),
    withConfigurationManager(ConfigurationManager): {
      assert std.isObject(ConfigurationManager) : 'ConfigurationManager must be a object',
      Properties+::: { ConfigurationManager: ConfigurationManager },
    },
    '#withCustomCookbooksSource': d.fn('`withCustomCookbooksSource` CustomCookbooksSource ', [d.arg('CustomCookbooksSource', d.T.object)]),
    withCustomCookbooksSource(CustomCookbooksSource): {
      assert std.isObject(CustomCookbooksSource) : 'CustomCookbooksSource must be a object',
      Properties+::: { CustomCookbooksSource: CustomCookbooksSource },
    },
    '#withCustomJson': d.fn('`withCustomJson` CustomJson ', [d.arg('CustomJson', d.T.object)]),
    withCustomJson(CustomJson): {
      assert std.isObject(CustomJson) : 'CustomJson must be a object',
      Properties+::: { CustomJson: CustomJson },
    },
    '#withDefaultAvailabilityZone': d.fn('`withDefaultAvailabilityZone` DefaultAvailabilityZone ', [d.arg('DefaultAvailabilityZone', d.T.string)]),
    withDefaultAvailabilityZone(DefaultAvailabilityZone): {
      assert std.isString(DefaultAvailabilityZone) : 'DefaultAvailabilityZone must be a string',
      Properties+::: { DefaultAvailabilityZone: DefaultAvailabilityZone },
    },
    '#withDefaultOs': d.fn('`withDefaultOs` DefaultOs ', [d.arg('DefaultOs', d.T.string)]),
    withDefaultOs(DefaultOs): {
      assert std.isString(DefaultOs) : 'DefaultOs must be a string',
      Properties+::: { DefaultOs: DefaultOs },
    },
    '#withDefaultRootDeviceType': d.fn('`withDefaultRootDeviceType` DefaultRootDeviceType ', [d.arg('DefaultRootDeviceType', d.T.string)]),
    withDefaultRootDeviceType(DefaultRootDeviceType): {
      assert std.isString(DefaultRootDeviceType) : 'DefaultRootDeviceType must be a string',
      Properties+::: { DefaultRootDeviceType: DefaultRootDeviceType },
    },
    '#withDefaultSshKeyName': d.fn('`withDefaultSshKeyName` DefaultSshKeyName ', [d.arg('DefaultSshKeyName', d.T.string)]),
    withDefaultSshKeyName(DefaultSshKeyName): {
      assert std.isString(DefaultSshKeyName) : 'DefaultSshKeyName must be a string',
      Properties+::: { DefaultSshKeyName: DefaultSshKeyName },
    },
    '#withDefaultSubnetId': d.fn('`withDefaultSubnetId` DefaultSubnetId ', [d.arg('DefaultSubnetId', d.T.string)]),
    withDefaultSubnetId(DefaultSubnetId): {
      assert std.isString(DefaultSubnetId) : 'DefaultSubnetId must be a string',
      Properties+::: { DefaultSubnetId: DefaultSubnetId },
    },
    '#withEcsClusterArn': d.fn('`withEcsClusterArn` EcsClusterArn ', [d.arg('EcsClusterArn', d.T.string)]),
    withEcsClusterArn(EcsClusterArn): {
      assert std.isString(EcsClusterArn) : 'EcsClusterArn must be a string',
      Properties+::: { EcsClusterArn: EcsClusterArn },
    },
    '#withElasticIps': d.fn('`withElasticIps` ElasticIps ', [d.arg('ElasticIps', d.T.array)]),
    withElasticIps(ElasticIps): {
      assert std.isArray(ElasticIps) : 'ElasticIps must be a array',
      Properties+::: { ElasticIps: ElasticIps },
    },
    '#withHostnameTheme': d.fn('`withHostnameTheme` HostnameTheme ', [d.arg('HostnameTheme', d.T.string)]),
    withHostnameTheme(HostnameTheme): {
      assert std.isString(HostnameTheme) : 'HostnameTheme must be a string',
      Properties+::: { HostnameTheme: HostnameTheme },
    },
    '#withRdsDbInstances': d.fn('`withRdsDbInstances` RdsDbInstances ', [d.arg('RdsDbInstances', d.T.array)]),
    withRdsDbInstances(RdsDbInstances): {
      assert std.isArray(RdsDbInstances) : 'RdsDbInstances must be a array',
      Properties+::: { RdsDbInstances: RdsDbInstances },
    },
    '#withSourceStackId': d.fn('`withSourceStackId` SourceStackId ', [d.arg('SourceStackId', d.T.string)]),
    withSourceStackId(SourceStackId): {
      assert std.isString(SourceStackId) : 'SourceStackId must be a string',
      Properties+::: { SourceStackId: SourceStackId },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withUseCustomCookbooks': d.fn('`withUseCustomCookbooks` UseCustomCookbooks ', [d.arg('UseCustomCookbooks', d.T.boolean)]),
    withUseCustomCookbooks(UseCustomCookbooks): {
      assert std.isBoolean(UseCustomCookbooks) : 'UseCustomCookbooks must be a boolean',
      Properties+::: { UseCustomCookbooks: UseCustomCookbooks },
    },
    '#withUseOpsworksSecurityGroups': d.fn('`withUseOpsworksSecurityGroups` UseOpsworksSecurityGroups ', [d.arg('UseOpsworksSecurityGroups', d.T.boolean)]),
    withUseOpsworksSecurityGroups(UseOpsworksSecurityGroups): {
      assert std.isBoolean(UseOpsworksSecurityGroups) : 'UseOpsworksSecurityGroups must be a boolean',
      Properties+::: { UseOpsworksSecurityGroups: UseOpsworksSecurityGroups },
    },
    '#withVpcId': d.fn('`withVpcId` VpcId ', [d.arg('VpcId', d.T.string)]),
    withVpcId(VpcId): {
      assert std.isString(VpcId) : 'VpcId must be a string',
      Properties+::: { VpcId: VpcId },
    },
  },
  UserProfile: {
    '#': d.pkg(
      name='UserProfile',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/OpsWorks.libsonnet',
      help='Resource Type definition for AWS::OpsWorks::UserProfile',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::OpsWorks::UserProfile Resource
        * IamUserArn 
      |||,
      args=[
        d.arg('IamUserArn', 'd.T.string'),
      ]
    ),
    new(
      IamUserArn,
    ): {
      local base = self,
      Properties: {
        assert std.isString(IamUserArn) : 'IamUserArn must be a string',
        IamUserArn: IamUserArn,
      },
      DependsOn:: [],
      Type: 'AWS::OpsWorks::UserProfile',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withSshUsername': d.fn('`withSshUsername` SshUsername ', [d.arg('SshUsername', d.T.string)]),
    withSshUsername(SshUsername): {
      assert std.isString(SshUsername) : 'SshUsername must be a string',
      Properties+::: { SshUsername: SshUsername },
    },
    '#withAllowSelfManagement': d.fn('`withAllowSelfManagement` AllowSelfManagement ', [d.arg('AllowSelfManagement', d.T.boolean)]),
    withAllowSelfManagement(AllowSelfManagement): {
      assert std.isBoolean(AllowSelfManagement) : 'AllowSelfManagement must be a boolean',
      Properties+::: { AllowSelfManagement: AllowSelfManagement },
    },
    '#withSshPublicKey': d.fn('`withSshPublicKey` SshPublicKey ', [d.arg('SshPublicKey', d.T.string)]),
    withSshPublicKey(SshPublicKey): {
      assert std.isString(SshPublicKey) : 'SshPublicKey must be a string',
      Properties+::: { SshPublicKey: SshPublicKey },
    },
  },
  Volume: {
    '#': d.pkg(
      name='Volume',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/OpsWorks.libsonnet',
      help='Resource Type definition for AWS::OpsWorks::Volume',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::OpsWorks::Volume Resource
        * Ec2VolumeId 
        * StackId 
      |||,
      args=[
        d.arg('Ec2VolumeId', 'd.T.string'),
        d.arg('StackId', 'd.T.string'),
      ]
    ),
    new(
      Ec2VolumeId,
      StackId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Ec2VolumeId) : 'Ec2VolumeId must be a string',
        Ec2VolumeId: Ec2VolumeId,
        assert std.isString(StackId) : 'StackId must be a string',
        StackId: StackId,
      },
      DependsOn:: [],
      Type: 'AWS::OpsWorks::Volume',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withMountPoint': d.fn('`withMountPoint` MountPoint ', [d.arg('MountPoint', d.T.string)]),
    withMountPoint(MountPoint): {
      assert std.isString(MountPoint) : 'MountPoint must be a string',
      Properties+::: { MountPoint: MountPoint },
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
  },
}
