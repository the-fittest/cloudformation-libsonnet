local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  Application: {
    '#': d.pkg(
      name='Application',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/CodeDeploy.libsonnet',
      help='The AWS::CodeDeploy::Application resource creates an AWS CodeDeploy application',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::CodeDeploy::Application Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::CodeDeploy::Application',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withApplicationName': d.fn('`withApplicationName` ApplicationName ', [d.arg('ApplicationName', d.T.string)]),
    withApplicationName(ApplicationName): {
      assert std.isString(ApplicationName) : 'ApplicationName must be a string',
      Properties+::: { ApplicationName: ApplicationName },
    },
    '#withComputePlatform': d.fn('`withComputePlatform` ComputePlatform ', [d.arg('ComputePlatform', d.T.string)]),
    withComputePlatform(ComputePlatform): {
      assert std.isString(ComputePlatform) : 'ComputePlatform must be a string',
      Properties+::: { ComputePlatform: ComputePlatform },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  DeploymentConfig: {
    '#': d.pkg(
      name='DeploymentConfig',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/CodeDeploy.libsonnet',
      help='Resource Type definition for AWS::CodeDeploy::DeploymentConfig',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::CodeDeploy::DeploymentConfig Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::CodeDeploy::DeploymentConfig',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withComputePlatform': d.fn('`withComputePlatform` ComputePlatform ', [d.arg('ComputePlatform', d.T.string)]),
    withComputePlatform(ComputePlatform): {
      assert std.isString(ComputePlatform) : 'ComputePlatform must be a string',
      Properties+::: { ComputePlatform: ComputePlatform },
    },
    '#withDeploymentConfigName': d.fn('`withDeploymentConfigName` DeploymentConfigName ', [d.arg('DeploymentConfigName', d.T.string)]),
    withDeploymentConfigName(DeploymentConfigName): {
      assert std.isString(DeploymentConfigName) : 'DeploymentConfigName must be a string',
      Properties+::: { DeploymentConfigName: DeploymentConfigName },
    },
    '#withMinimumHealthyHosts': d.fn('`withMinimumHealthyHosts` MinimumHealthyHosts ', [d.arg('MinimumHealthyHosts', d.T.object)]),
    withMinimumHealthyHosts(MinimumHealthyHosts): {
      assert std.isObject(MinimumHealthyHosts) : 'MinimumHealthyHosts must be a object',
      Properties+::: { MinimumHealthyHosts: MinimumHealthyHosts },
    },
    '#withZonalConfig': d.fn('`withZonalConfig` ZonalConfig ', [d.arg('ZonalConfig', d.T.object)]),
    withZonalConfig(ZonalConfig): {
      assert std.isObject(ZonalConfig) : 'ZonalConfig must be a object',
      Properties+::: { ZonalConfig: ZonalConfig },
    },
    '#withTrafficRoutingConfig': d.fn('`withTrafficRoutingConfig` TrafficRoutingConfig ', [d.arg('TrafficRoutingConfig', d.T.object)]),
    withTrafficRoutingConfig(TrafficRoutingConfig): {
      assert std.isObject(TrafficRoutingConfig) : 'TrafficRoutingConfig must be a object',
      Properties+::: { TrafficRoutingConfig: TrafficRoutingConfig },
    },
  },
  DeploymentGroup: {
    '#': d.pkg(
      name='DeploymentGroup',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/CodeDeploy.libsonnet',
      help='Resource Type definition for AWS::CodeDeploy::DeploymentGroup',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::CodeDeploy::DeploymentGroup Resource
        * ApplicationName 
        * ServiceRoleArn 
      |||,
      args=[
        d.arg('ApplicationName', 'd.T.string'),
        d.arg('ServiceRoleArn', 'd.T.string'),
      ]
    ),
    new(
      ApplicationName,
      ServiceRoleArn,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ApplicationName) : 'ApplicationName must be a string',
        ApplicationName: ApplicationName,
        assert std.isString(ServiceRoleArn) : 'ServiceRoleArn must be a string',
        ServiceRoleArn: ServiceRoleArn,
      },
      DependsOn:: [],
      Type: 'AWS::CodeDeploy::DeploymentGroup',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withOnPremisesTagSet': d.fn('`withOnPremisesTagSet` OnPremisesTagSet ', [d.arg('OnPremisesTagSet', d.T.object)]),
    withOnPremisesTagSet(OnPremisesTagSet): {
      assert std.isObject(OnPremisesTagSet) : 'OnPremisesTagSet must be a object',
      Properties+::: { OnPremisesTagSet: OnPremisesTagSet },
    },
    '#withDeploymentStyle': d.fn('`withDeploymentStyle` DeploymentStyle ', [d.arg('DeploymentStyle', d.T.object)]),
    withDeploymentStyle(DeploymentStyle): {
      assert std.isObject(DeploymentStyle) : 'DeploymentStyle must be a object',
      Properties+::: { DeploymentStyle: DeploymentStyle },
    },
    '#withBlueGreenDeploymentConfiguration': d.fn('`withBlueGreenDeploymentConfiguration` BlueGreenDeploymentConfiguration ', [d.arg('BlueGreenDeploymentConfiguration', d.T.object)]),
    withBlueGreenDeploymentConfiguration(BlueGreenDeploymentConfiguration): {
      assert std.isObject(BlueGreenDeploymentConfiguration) : 'BlueGreenDeploymentConfiguration must be a object',
      Properties+::: { BlueGreenDeploymentConfiguration: BlueGreenDeploymentConfiguration },
    },
    '#withAutoScalingGroups': d.fn('`withAutoScalingGroups` AutoScalingGroups ', [d.arg('AutoScalingGroups', d.T.array)]),
    withAutoScalingGroups(AutoScalingGroups): {
      assert std.isArray(AutoScalingGroups) : 'AutoScalingGroups must be a array',
      Properties+::: { AutoScalingGroups: AutoScalingGroups },
    },
    '#withEc2TagSet': d.fn('`withEc2TagSet` Ec2TagSet ', [d.arg('Ec2TagSet', d.T.object)]),
    withEc2TagSet(Ec2TagSet): {
      assert std.isObject(Ec2TagSet) : 'Ec2TagSet must be a object',
      Properties+::: { Ec2TagSet: Ec2TagSet },
    },
    '#withOutdatedInstancesStrategy': d.fn('`withOutdatedInstancesStrategy` OutdatedInstancesStrategy ', [d.arg('OutdatedInstancesStrategy', d.T.string)]),
    withOutdatedInstancesStrategy(OutdatedInstancesStrategy): {
      assert std.isString(OutdatedInstancesStrategy) : 'OutdatedInstancesStrategy must be a string',
      Properties+::: { OutdatedInstancesStrategy: OutdatedInstancesStrategy },
    },
    '#withTriggerConfigurations': d.fn('`withTriggerConfigurations` TriggerConfigurations ', [d.arg('TriggerConfigurations', d.T.array)]),
    withTriggerConfigurations(TriggerConfigurations): {
      assert std.isArray(TriggerConfigurations) : 'TriggerConfigurations must be a array',
      Properties+::: { TriggerConfigurations: TriggerConfigurations },
    },
    '#withDeployment': d.fn('`withDeployment` Deployment ', [d.arg('Deployment', d.T.object)]),
    withDeployment(Deployment): {
      assert std.isObject(Deployment) : 'Deployment must be a object',
      Properties+::: { Deployment: Deployment },
    },
    '#withDeploymentConfigName': d.fn('`withDeploymentConfigName` DeploymentConfigName ', [d.arg('DeploymentConfigName', d.T.string)]),
    withDeploymentConfigName(DeploymentConfigName): {
      assert std.isString(DeploymentConfigName) : 'DeploymentConfigName must be a string',
      Properties+::: { DeploymentConfigName: DeploymentConfigName },
    },
    '#withAlarmConfiguration': d.fn('`withAlarmConfiguration` AlarmConfiguration ', [d.arg('AlarmConfiguration', d.T.object)]),
    withAlarmConfiguration(AlarmConfiguration): {
      assert std.isObject(AlarmConfiguration) : 'AlarmConfiguration must be a object',
      Properties+::: { AlarmConfiguration: AlarmConfiguration },
    },
    '#withEc2TagFilters': d.fn('`withEc2TagFilters` Ec2TagFilters ', [d.arg('Ec2TagFilters', d.T.array)]),
    withEc2TagFilters(Ec2TagFilters): {
      assert std.isArray(Ec2TagFilters) : 'Ec2TagFilters must be a array',
      Properties+::: { Ec2TagFilters: Ec2TagFilters },
    },
    '#withTerminationHookEnabled': d.fn('`withTerminationHookEnabled` TerminationHookEnabled ', [d.arg('TerminationHookEnabled', d.T.boolean)]),
    withTerminationHookEnabled(TerminationHookEnabled): {
      assert std.isBoolean(TerminationHookEnabled) : 'TerminationHookEnabled must be a boolean',
      Properties+::: { TerminationHookEnabled: TerminationHookEnabled },
    },
    '#withECSServices': d.fn('`withECSServices` ECSServices ', [d.arg('ECSServices', d.T.array)]),
    withECSServices(ECSServices): {
      assert std.isArray(ECSServices) : 'ECSServices must be a array',
      Properties+::: { ECSServices: ECSServices },
    },
    '#withAutoRollbackConfiguration': d.fn('`withAutoRollbackConfiguration` AutoRollbackConfiguration ', [d.arg('AutoRollbackConfiguration', d.T.object)]),
    withAutoRollbackConfiguration(AutoRollbackConfiguration): {
      assert std.isObject(AutoRollbackConfiguration) : 'AutoRollbackConfiguration must be a object',
      Properties+::: { AutoRollbackConfiguration: AutoRollbackConfiguration },
    },
    '#withLoadBalancerInfo': d.fn('`withLoadBalancerInfo` LoadBalancerInfo ', [d.arg('LoadBalancerInfo', d.T.object)]),
    withLoadBalancerInfo(LoadBalancerInfo): {
      assert std.isObject(LoadBalancerInfo) : 'LoadBalancerInfo must be a object',
      Properties+::: { LoadBalancerInfo: LoadBalancerInfo },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withDeploymentGroupName': d.fn('`withDeploymentGroupName` DeploymentGroupName ', [d.arg('DeploymentGroupName', d.T.string)]),
    withDeploymentGroupName(DeploymentGroupName): {
      assert std.isString(DeploymentGroupName) : 'DeploymentGroupName must be a string',
      Properties+::: { DeploymentGroupName: DeploymentGroupName },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withOnPremisesInstanceTagFilters': d.fn('`withOnPremisesInstanceTagFilters` OnPremisesInstanceTagFilters ', [d.arg('OnPremisesInstanceTagFilters', d.T.array)]),
    withOnPremisesInstanceTagFilters(OnPremisesInstanceTagFilters): {
      assert std.isArray(OnPremisesInstanceTagFilters) : 'OnPremisesInstanceTagFilters must be a array',
      Properties+::: { OnPremisesInstanceTagFilters: OnPremisesInstanceTagFilters },
    },
  },
}
