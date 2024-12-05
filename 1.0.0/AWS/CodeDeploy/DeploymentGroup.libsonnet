{
  new(
    ApplicationName,
    ServiceRoleArn,
  ): {
    local base = self,
    Properties: {
      ApplicationName:
        if !std.isString(ApplicationName) then (error 'ApplicationName must be a string')
        else if std.isEmpty(ApplicationName) then (error 'ApplicationName must be not empty')
        else ApplicationName,
      ServiceRoleArn:
        if !std.isString(ServiceRoleArn) then (error 'ServiceRoleArn must be a string')
        else if std.isEmpty(ServiceRoleArn) then (error 'ServiceRoleArn must be not empty')
        else ServiceRoleArn,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::CodeDeploy::DeploymentGroup',
  },
  setOnPremisesTagSet(OnPremisesTagSet): {
    Properties+::: {
      OnPremisesTagSet:
        if !std.isObject(OnPremisesTagSet) then (error 'OnPremisesTagSet must be an object')
        else OnPremisesTagSet,
    },
  },
  setDeploymentStyle(DeploymentStyle): {
    Properties+::: {
      DeploymentStyle:
        if !std.isObject(DeploymentStyle) then (error 'DeploymentStyle must be an object')
        else DeploymentStyle,
    },
  },
  setBlueGreenDeploymentConfiguration(BlueGreenDeploymentConfiguration): {
    Properties+::: {
      BlueGreenDeploymentConfiguration:
        if !std.isObject(BlueGreenDeploymentConfiguration) then (error 'BlueGreenDeploymentConfiguration must be an object')
        else BlueGreenDeploymentConfiguration,
    },
  },
  setAutoScalingGroups(AutoScalingGroups): {
    Properties+::: {
      AutoScalingGroups:
        if !std.isArray(AutoScalingGroups) then (error 'AutoScalingGroups must be an array')
        else AutoScalingGroups,
    },
  },
  setAutoScalingGroupsMixin(AutoScalingGroups): {
    Properties+::: {
      AutoScalingGroups+: AutoScalingGroups,
    },
  },
  setEc2TagSet(Ec2TagSet): {
    Properties+::: {
      Ec2TagSet:
        if !std.isObject(Ec2TagSet) then (error 'Ec2TagSet must be an object')
        else Ec2TagSet,
    },
  },
  setOutdatedInstancesStrategy(OutdatedInstancesStrategy): {
    Properties+::: {
      OutdatedInstancesStrategy:
        if !std.isString(OutdatedInstancesStrategy) then (error 'OutdatedInstancesStrategy must be a string')
        else if std.isEmpty(OutdatedInstancesStrategy) then (error 'OutdatedInstancesStrategy must be not empty')
        else OutdatedInstancesStrategy,
    },
  },
  setTriggerConfigurations(TriggerConfigurations): {
    Properties+::: {
      TriggerConfigurations:
        if !std.isArray(TriggerConfigurations) then (error 'TriggerConfigurations must be an array')
        else TriggerConfigurations,
    },
  },
  setTriggerConfigurationsMixin(TriggerConfigurations): {
    Properties+::: {
      TriggerConfigurations+: TriggerConfigurations,
    },
  },
  setDeployment(Deployment): {
    Properties+::: {
      Deployment:
        if !std.isObject(Deployment) then (error 'Deployment must be an object')
        else if !std.objectHas(Deployment, 'Revision') then (error ' have attribute Revision')
        else Deployment,
    },
  },
  setDeploymentConfigName(DeploymentConfigName): {
    Properties+::: {
      DeploymentConfigName:
        if !std.isString(DeploymentConfigName) then (error 'DeploymentConfigName must be a string')
        else if std.isEmpty(DeploymentConfigName) then (error 'DeploymentConfigName must be not empty')
        else DeploymentConfigName,
    },
  },
  setAlarmConfiguration(AlarmConfiguration): {
    Properties+::: {
      AlarmConfiguration:
        if !std.isObject(AlarmConfiguration) then (error 'AlarmConfiguration must be an object')
        else AlarmConfiguration,
    },
  },
  setEc2TagFilters(Ec2TagFilters): {
    Properties+::: {
      Ec2TagFilters:
        if !std.isArray(Ec2TagFilters) then (error 'Ec2TagFilters must be an array')
        else Ec2TagFilters,
    },
  },
  setEc2TagFiltersMixin(Ec2TagFilters): {
    Properties+::: {
      Ec2TagFilters+: Ec2TagFilters,
    },
  },
  setTerminationHookEnabled(TerminationHookEnabled): {
    Properties+::: {
      TerminationHookEnabled:
        if !std.isBoolean(TerminationHookEnabled) then (error 'TerminationHookEnabled must be a boolean') else TerminationHookEnabled,
    },
  },
  setECSServices(ECSServices): {
    Properties+::: {
      ECSServices:
        if !std.isArray(ECSServices) then (error 'ECSServices must be an array')
        else ECSServices,
    },
  },
  setECSServicesMixin(ECSServices): {
    Properties+::: {
      ECSServices+: ECSServices,
    },
  },
  setAutoRollbackConfiguration(AutoRollbackConfiguration): {
    Properties+::: {
      AutoRollbackConfiguration:
        if !std.isObject(AutoRollbackConfiguration) then (error 'AutoRollbackConfiguration must be an object')
        else AutoRollbackConfiguration,
    },
  },
  setLoadBalancerInfo(LoadBalancerInfo): {
    Properties+::: {
      LoadBalancerInfo:
        if !std.isObject(LoadBalancerInfo) then (error 'LoadBalancerInfo must be an object')
        else LoadBalancerInfo,
    },
  },
  setId(Id): {
    Properties+::: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else Id,
    },
  },
  setDeploymentGroupName(DeploymentGroupName): {
    Properties+::: {
      DeploymentGroupName:
        if !std.isString(DeploymentGroupName) then (error 'DeploymentGroupName must be a string')
        else if std.isEmpty(DeploymentGroupName) then (error 'DeploymentGroupName must be not empty')
        else DeploymentGroupName,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else Tags,
    },
  },
  setTagsMixin(Tags): {
    Properties+::: {
      Tags+: Tags,
    },
  },
  setOnPremisesInstanceTagFilters(OnPremisesInstanceTagFilters): {
    Properties+::: {
      OnPremisesInstanceTagFilters:
        if !std.isArray(OnPremisesInstanceTagFilters) then (error 'OnPremisesInstanceTagFilters must be an array')
        else OnPremisesInstanceTagFilters,
    },
  },
  setOnPremisesInstanceTagFiltersMixin(OnPremisesInstanceTagFilters): {
    Properties+::: {
      OnPremisesInstanceTagFilters+: OnPremisesInstanceTagFilters,
    },
  },
  setDependsOn(DependsOn): {
    Properties+::: {
      DependsOn: DependsOn,
    },
  },
  setDependsOnMixin(DependsOn): {
    Properties+::: {
      DependsOn+: DependsOn,
    },
  },
  setCreationPolicy(CreationPolicy): {
    Properties+::: {
      CreationPolicy: CreationPolicy,
    },
  },
  setCreationPolicyMixin(CreationPolicy): {
    Properties+::: {
      CreationPolicy+: CreationPolicy,
    },
  },
  setDeletionPolicy(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy: DeletionPolicy,
    },
  },
  setDeletionPolicyMixin(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy+: DeletionPolicy,
    },
  },
  setUpdatePolicy(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy: UpdatePolicy,
    },
  },
  setUpdatePolicyMixin(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy+: UpdatePolicy,
    },
  },
  setUpdateReplacePolicy(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy: UpdateReplacePolicy,
    },
  },
  setUpdateReplacePolicyMixin(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy+: UpdateReplacePolicy,
    },
  },
  setMetadata(Metadata): {
    Properties+::: {
      Metadata: Metadata,
    },
  },
  setMetadataMixin(Metadata): {
    Properties+::: {
      Metadata+: Metadata,
    },
  },
}
