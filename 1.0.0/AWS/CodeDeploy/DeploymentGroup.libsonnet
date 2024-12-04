{
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
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::CodeDeploy::DeploymentGroup',
  },
  withOnPremisesTagSet(OnPremisesTagSet): {
    assert std.isObject(OnPremisesTagSet) : 'OnPremisesTagSet must be a object',
    Properties+::: {
      OnPremisesTagSet: OnPremisesTagSet,
    },
  },
  withDeploymentStyle(DeploymentStyle): {
    assert std.isObject(DeploymentStyle) : 'DeploymentStyle must be a object',
    Properties+::: {
      DeploymentStyle: DeploymentStyle,
    },
  },
  withBlueGreenDeploymentConfiguration(BlueGreenDeploymentConfiguration): {
    assert std.isObject(BlueGreenDeploymentConfiguration) : 'BlueGreenDeploymentConfiguration must be a object',
    Properties+::: {
      BlueGreenDeploymentConfiguration: BlueGreenDeploymentConfiguration,
    },
  },
  withAutoScalingGroups(AutoScalingGroups): {
    Properties+::: {
      AutoScalingGroups: (if std.isArray(AutoScalingGroups) then AutoScalingGroups else [AutoScalingGroups]),
    },
  },
  withAutoScalingGroupsMixin(AutoScalingGroups): {
    Properties+::: {
      AutoScalingGroups+: (if std.isArray(AutoScalingGroups) then AutoScalingGroups else [AutoScalingGroups]),
    },
  },
  withEc2TagSet(Ec2TagSet): {
    assert std.isObject(Ec2TagSet) : 'Ec2TagSet must be a object',
    Properties+::: {
      Ec2TagSet: Ec2TagSet,
    },
  },
  withOutdatedInstancesStrategy(OutdatedInstancesStrategy): {
    assert std.isString(OutdatedInstancesStrategy) : 'OutdatedInstancesStrategy must be a string',
    Properties+::: {
      OutdatedInstancesStrategy: OutdatedInstancesStrategy,
    },
  },
  withTriggerConfigurations(TriggerConfigurations): {
    Properties+::: {
      TriggerConfigurations: (if std.isArray(TriggerConfigurations) then TriggerConfigurations else [TriggerConfigurations]),
    },
  },
  withTriggerConfigurationsMixin(TriggerConfigurations): {
    Properties+::: {
      TriggerConfigurations+: (if std.isArray(TriggerConfigurations) then TriggerConfigurations else [TriggerConfigurations]),
    },
  },
  withDeployment(Deployment): {
    assert std.isObject(Deployment) : 'Deployment must be a object',
    Properties+::: {
      Deployment: Deployment,
    },
  },
  withDeploymentConfigName(DeploymentConfigName): {
    assert std.isString(DeploymentConfigName) : 'DeploymentConfigName must be a string',
    Properties+::: {
      DeploymentConfigName: DeploymentConfigName,
    },
  },
  withAlarmConfiguration(AlarmConfiguration): {
    assert std.isObject(AlarmConfiguration) : 'AlarmConfiguration must be a object',
    Properties+::: {
      AlarmConfiguration: AlarmConfiguration,
    },
  },
  withEc2TagFilters(Ec2TagFilters): {
    Properties+::: {
      Ec2TagFilters: (if std.isArray(Ec2TagFilters) then Ec2TagFilters else [Ec2TagFilters]),
    },
  },
  withEc2TagFiltersMixin(Ec2TagFilters): {
    Properties+::: {
      Ec2TagFilters+: (if std.isArray(Ec2TagFilters) then Ec2TagFilters else [Ec2TagFilters]),
    },
  },
  withTerminationHookEnabled(TerminationHookEnabled): {
    assert std.isBoolean(TerminationHookEnabled) : 'TerminationHookEnabled must be a boolean',
    Properties+::: {
      TerminationHookEnabled: TerminationHookEnabled,
    },
  },
  withECSServices(ECSServices): {
    Properties+::: {
      ECSServices: (if std.isArray(ECSServices) then ECSServices else [ECSServices]),
    },
  },
  withECSServicesMixin(ECSServices): {
    Properties+::: {
      ECSServices+: (if std.isArray(ECSServices) then ECSServices else [ECSServices]),
    },
  },
  withAutoRollbackConfiguration(AutoRollbackConfiguration): {
    assert std.isObject(AutoRollbackConfiguration) : 'AutoRollbackConfiguration must be a object',
    Properties+::: {
      AutoRollbackConfiguration: AutoRollbackConfiguration,
    },
  },
  withLoadBalancerInfo(LoadBalancerInfo): {
    assert std.isObject(LoadBalancerInfo) : 'LoadBalancerInfo must be a object',
    Properties+::: {
      LoadBalancerInfo: LoadBalancerInfo,
    },
  },
  withId(Id): {
    assert std.isString(Id) : 'Id must be a string',
    Properties+::: {
      Id: Id,
    },
  },
  withDeploymentGroupName(DeploymentGroupName): {
    assert std.isString(DeploymentGroupName) : 'DeploymentGroupName must be a string',
    Properties+::: {
      DeploymentGroupName: DeploymentGroupName,
    },
  },
  withTags(Tags): {
    Properties+::: {
      Tags: (if std.isArray(Tags) then Tags else [Tags]),
    },
  },
  withTagsMixin(Tags): {
    Properties+::: {
      Tags+: (if std.isArray(Tags) then Tags else [Tags]),
    },
  },
  withOnPremisesInstanceTagFilters(OnPremisesInstanceTagFilters): {
    Properties+::: {
      OnPremisesInstanceTagFilters: (if std.isArray(OnPremisesInstanceTagFilters) then OnPremisesInstanceTagFilters else [OnPremisesInstanceTagFilters]),
    },
  },
  withOnPremisesInstanceTagFiltersMixin(OnPremisesInstanceTagFilters): {
    Properties+::: {
      OnPremisesInstanceTagFilters+: (if std.isArray(OnPremisesInstanceTagFilters) then OnPremisesInstanceTagFilters else [OnPremisesInstanceTagFilters]),
    },
  },
  withDependsOn(DependsOn): {
    Properties+::: {
      DependsOn: (if std.isArray(DependsOn) then DependsOn else [DependsOn]),
    },
  },
  withDependsOnMixin(DependsOn): {
    Properties+::: {
      DependsOn+: (if std.isArray(DependsOn) then DependsOn else [DependsOn]),
    },
  },
  withCreationPolicy(CreationPolicy): {
    Properties+::: {
      CreationPolicy: (if std.isArray(CreationPolicy) then CreationPolicy else [CreationPolicy]),
    },
  },
  withCreationPolicyMixin(CreationPolicy): {
    Properties+::: {
      CreationPolicy+: (if std.isArray(CreationPolicy) then CreationPolicy else [CreationPolicy]),
    },
  },
  withDeletionPolicy(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy: (if std.isArray(DeletionPolicy) then DeletionPolicy else [DeletionPolicy]),
    },
  },
  withDeletionPolicyMixin(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy+: (if std.isArray(DeletionPolicy) then DeletionPolicy else [DeletionPolicy]),
    },
  },
  withUpdatePolicy(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy: (if std.isArray(UpdatePolicy) then UpdatePolicy else [UpdatePolicy]),
    },
  },
  withUpdatePolicyMixin(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy+: (if std.isArray(UpdatePolicy) then UpdatePolicy else [UpdatePolicy]),
    },
  },
  withUpdateReplacePolicy(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy: (if std.isArray(UpdateReplacePolicy) then UpdateReplacePolicy else [UpdateReplacePolicy]),
    },
  },
  withUpdateReplacePolicyMixin(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy+: (if std.isArray(UpdateReplacePolicy) then UpdateReplacePolicy else [UpdateReplacePolicy]),
    },
  },
  withMetadata(Metadata): {
    Properties+::: {
      Metadata: (if std.isArray(Metadata) then Metadata else [Metadata]),
    },
  },
  withMetadataMixin(Metadata): {
    Properties+::: {
      Metadata+: (if std.isArray(Metadata) then Metadata else [Metadata]),
    },
  },
}
