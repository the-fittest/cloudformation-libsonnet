{
  new(
    DefaultInstanceProfileArn,
    ServiceRoleArn,
    Name,
  ): {
    local base = self,
    Properties: {
      DefaultInstanceProfileArn:
        if !std.isString(DefaultInstanceProfileArn) then (error 'DefaultInstanceProfileArn must be a string')
        else if std.isEmpty(DefaultInstanceProfileArn) then (error 'DefaultInstanceProfileArn must be not empty')
        else DefaultInstanceProfileArn,
      ServiceRoleArn:
        if !std.isString(ServiceRoleArn) then (error 'ServiceRoleArn must be a string')
        else if std.isEmpty(ServiceRoleArn) then (error 'ServiceRoleArn must be not empty')
        else ServiceRoleArn,
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else Name,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::OpsWorks::Stack',
  },
  setId(Id): {
    Properties+::: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else Id,
    },
  },
  setAgentVersion(AgentVersion): {
    Properties+::: {
      AgentVersion:
        if !std.isString(AgentVersion) then (error 'AgentVersion must be a string')
        else if std.isEmpty(AgentVersion) then (error 'AgentVersion must be not empty')
        else AgentVersion,
    },
  },
  setAttributes(Attributes): {
    Properties+::: {
      Attributes:
        if !std.isObject(Attributes) then (error 'Attributes must be an object')
        else Attributes,
    },
  },
  setChefConfiguration(ChefConfiguration): {
    Properties+::: {
      ChefConfiguration:
        if !std.isObject(ChefConfiguration) then (error 'ChefConfiguration must be an object')
        else ChefConfiguration,
    },
  },
  setCloneAppIds(CloneAppIds): {
    Properties+::: {
      CloneAppIds:
        if !std.isArray(CloneAppIds) then (error 'CloneAppIds must be an array')
        else CloneAppIds,
    },
  },
  setCloneAppIdsMixin(CloneAppIds): {
    Properties+::: {
      CloneAppIds+: CloneAppIds,
    },
  },
  setClonePermissions(ClonePermissions): {
    Properties+::: {
      ClonePermissions:
        if !std.isBoolean(ClonePermissions) then (error 'ClonePermissions must be a boolean') else ClonePermissions,
    },
  },
  setConfigurationManager(ConfigurationManager): {
    Properties+::: {
      ConfigurationManager:
        if !std.isObject(ConfigurationManager) then (error 'ConfigurationManager must be an object')
        else ConfigurationManager,
    },
  },
  setCustomCookbooksSource(CustomCookbooksSource): {
    Properties+::: {
      CustomCookbooksSource:
        if !std.isObject(CustomCookbooksSource) then (error 'CustomCookbooksSource must be an object')
        else CustomCookbooksSource,
    },
  },
  setCustomJson(CustomJson): {
    Properties+::: {
      CustomJson:
        if !std.isObject(CustomJson) then (error 'CustomJson must be an object')
        else CustomJson,
    },
  },
  setDefaultAvailabilityZone(DefaultAvailabilityZone): {
    Properties+::: {
      DefaultAvailabilityZone:
        if !std.isString(DefaultAvailabilityZone) then (error 'DefaultAvailabilityZone must be a string')
        else if std.isEmpty(DefaultAvailabilityZone) then (error 'DefaultAvailabilityZone must be not empty')
        else DefaultAvailabilityZone,
    },
  },
  setDefaultOs(DefaultOs): {
    Properties+::: {
      DefaultOs:
        if !std.isString(DefaultOs) then (error 'DefaultOs must be a string')
        else if std.isEmpty(DefaultOs) then (error 'DefaultOs must be not empty')
        else DefaultOs,
    },
  },
  setDefaultRootDeviceType(DefaultRootDeviceType): {
    Properties+::: {
      DefaultRootDeviceType:
        if !std.isString(DefaultRootDeviceType) then (error 'DefaultRootDeviceType must be a string')
        else if std.isEmpty(DefaultRootDeviceType) then (error 'DefaultRootDeviceType must be not empty')
        else DefaultRootDeviceType,
    },
  },
  setDefaultSshKeyName(DefaultSshKeyName): {
    Properties+::: {
      DefaultSshKeyName:
        if !std.isString(DefaultSshKeyName) then (error 'DefaultSshKeyName must be a string')
        else if std.isEmpty(DefaultSshKeyName) then (error 'DefaultSshKeyName must be not empty')
        else DefaultSshKeyName,
    },
  },
  setDefaultSubnetId(DefaultSubnetId): {
    Properties+::: {
      DefaultSubnetId:
        if !std.isString(DefaultSubnetId) then (error 'DefaultSubnetId must be a string')
        else if std.isEmpty(DefaultSubnetId) then (error 'DefaultSubnetId must be not empty')
        else DefaultSubnetId,
    },
  },
  setEcsClusterArn(EcsClusterArn): {
    Properties+::: {
      EcsClusterArn:
        if !std.isString(EcsClusterArn) then (error 'EcsClusterArn must be a string')
        else if std.isEmpty(EcsClusterArn) then (error 'EcsClusterArn must be not empty')
        else EcsClusterArn,
    },
  },
  setElasticIps(ElasticIps): {
    Properties+::: {
      ElasticIps:
        if !std.isArray(ElasticIps) then (error 'ElasticIps must be an array')
        else ElasticIps,
    },
  },
  setElasticIpsMixin(ElasticIps): {
    Properties+::: {
      ElasticIps+: ElasticIps,
    },
  },
  setHostnameTheme(HostnameTheme): {
    Properties+::: {
      HostnameTheme:
        if !std.isString(HostnameTheme) then (error 'HostnameTheme must be a string')
        else if std.isEmpty(HostnameTheme) then (error 'HostnameTheme must be not empty')
        else HostnameTheme,
    },
  },
  setRdsDbInstances(RdsDbInstances): {
    Properties+::: {
      RdsDbInstances:
        if !std.isArray(RdsDbInstances) then (error 'RdsDbInstances must be an array')
        else RdsDbInstances,
    },
  },
  setRdsDbInstancesMixin(RdsDbInstances): {
    Properties+::: {
      RdsDbInstances+: RdsDbInstances,
    },
  },
  setSourceStackId(SourceStackId): {
    Properties+::: {
      SourceStackId:
        if !std.isString(SourceStackId) then (error 'SourceStackId must be a string')
        else if std.isEmpty(SourceStackId) then (error 'SourceStackId must be not empty')
        else SourceStackId,
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
  setUseCustomCookbooks(UseCustomCookbooks): {
    Properties+::: {
      UseCustomCookbooks:
        if !std.isBoolean(UseCustomCookbooks) then (error 'UseCustomCookbooks must be a boolean') else UseCustomCookbooks,
    },
  },
  setUseOpsworksSecurityGroups(UseOpsworksSecurityGroups): {
    Properties+::: {
      UseOpsworksSecurityGroups:
        if !std.isBoolean(UseOpsworksSecurityGroups) then (error 'UseOpsworksSecurityGroups must be a boolean') else UseOpsworksSecurityGroups,
    },
  },
  setVpcId(VpcId): {
    Properties+::: {
      VpcId:
        if !std.isString(VpcId) then (error 'VpcId must be a string')
        else if std.isEmpty(VpcId) then (error 'VpcId must be not empty')
        else VpcId,
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
