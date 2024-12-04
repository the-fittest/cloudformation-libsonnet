{
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
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::OpsWorks::Stack',
  },
  withId(Id): {
    assert std.isString(Id) : 'Id must be a string',
    Properties+::: {
      Id: Id,
    },
  },
  withAgentVersion(AgentVersion): {
    assert std.isString(AgentVersion) : 'AgentVersion must be a string',
    Properties+::: {
      AgentVersion: AgentVersion,
    },
  },
  withAttributes(Attributes): {
    assert std.isObject(Attributes) : 'Attributes must be a object',
    Properties+::: {
      Attributes: Attributes,
    },
  },
  withChefConfiguration(ChefConfiguration): {
    assert std.isObject(ChefConfiguration) : 'ChefConfiguration must be a object',
    Properties+::: {
      ChefConfiguration: ChefConfiguration,
    },
  },
  withCloneAppIds(CloneAppIds): {
    Properties+::: {
      CloneAppIds: (if std.isArray(CloneAppIds) then CloneAppIds else [CloneAppIds]),
    },
  },
  withCloneAppIdsMixin(CloneAppIds): {
    Properties+::: {
      CloneAppIds+: (if std.isArray(CloneAppIds) then CloneAppIds else [CloneAppIds]),
    },
  },
  withClonePermissions(ClonePermissions): {
    assert std.isBoolean(ClonePermissions) : 'ClonePermissions must be a boolean',
    Properties+::: {
      ClonePermissions: ClonePermissions,
    },
  },
  withConfigurationManager(ConfigurationManager): {
    assert std.isObject(ConfigurationManager) : 'ConfigurationManager must be a object',
    Properties+::: {
      ConfigurationManager: ConfigurationManager,
    },
  },
  withCustomCookbooksSource(CustomCookbooksSource): {
    assert std.isObject(CustomCookbooksSource) : 'CustomCookbooksSource must be a object',
    Properties+::: {
      CustomCookbooksSource: CustomCookbooksSource,
    },
  },
  withCustomJson(CustomJson): {
    assert std.isObject(CustomJson) : 'CustomJson must be a object',
    Properties+::: {
      CustomJson: CustomJson,
    },
  },
  withDefaultAvailabilityZone(DefaultAvailabilityZone): {
    assert std.isString(DefaultAvailabilityZone) : 'DefaultAvailabilityZone must be a string',
    Properties+::: {
      DefaultAvailabilityZone: DefaultAvailabilityZone,
    },
  },
  withDefaultOs(DefaultOs): {
    assert std.isString(DefaultOs) : 'DefaultOs must be a string',
    Properties+::: {
      DefaultOs: DefaultOs,
    },
  },
  withDefaultRootDeviceType(DefaultRootDeviceType): {
    assert std.isString(DefaultRootDeviceType) : 'DefaultRootDeviceType must be a string',
    Properties+::: {
      DefaultRootDeviceType: DefaultRootDeviceType,
    },
  },
  withDefaultSshKeyName(DefaultSshKeyName): {
    assert std.isString(DefaultSshKeyName) : 'DefaultSshKeyName must be a string',
    Properties+::: {
      DefaultSshKeyName: DefaultSshKeyName,
    },
  },
  withDefaultSubnetId(DefaultSubnetId): {
    assert std.isString(DefaultSubnetId) : 'DefaultSubnetId must be a string',
    Properties+::: {
      DefaultSubnetId: DefaultSubnetId,
    },
  },
  withEcsClusterArn(EcsClusterArn): {
    assert std.isString(EcsClusterArn) : 'EcsClusterArn must be a string',
    Properties+::: {
      EcsClusterArn: EcsClusterArn,
    },
  },
  withElasticIps(ElasticIps): {
    Properties+::: {
      ElasticIps: (if std.isArray(ElasticIps) then ElasticIps else [ElasticIps]),
    },
  },
  withElasticIpsMixin(ElasticIps): {
    Properties+::: {
      ElasticIps+: (if std.isArray(ElasticIps) then ElasticIps else [ElasticIps]),
    },
  },
  withHostnameTheme(HostnameTheme): {
    assert std.isString(HostnameTheme) : 'HostnameTheme must be a string',
    Properties+::: {
      HostnameTheme: HostnameTheme,
    },
  },
  withRdsDbInstances(RdsDbInstances): {
    Properties+::: {
      RdsDbInstances: (if std.isArray(RdsDbInstances) then RdsDbInstances else [RdsDbInstances]),
    },
  },
  withRdsDbInstancesMixin(RdsDbInstances): {
    Properties+::: {
      RdsDbInstances+: (if std.isArray(RdsDbInstances) then RdsDbInstances else [RdsDbInstances]),
    },
  },
  withSourceStackId(SourceStackId): {
    assert std.isString(SourceStackId) : 'SourceStackId must be a string',
    Properties+::: {
      SourceStackId: SourceStackId,
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
  withUseCustomCookbooks(UseCustomCookbooks): {
    assert std.isBoolean(UseCustomCookbooks) : 'UseCustomCookbooks must be a boolean',
    Properties+::: {
      UseCustomCookbooks: UseCustomCookbooks,
    },
  },
  withUseOpsworksSecurityGroups(UseOpsworksSecurityGroups): {
    assert std.isBoolean(UseOpsworksSecurityGroups) : 'UseOpsworksSecurityGroups must be a boolean',
    Properties+::: {
      UseOpsworksSecurityGroups: UseOpsworksSecurityGroups,
    },
  },
  withVpcId(VpcId): {
    assert std.isString(VpcId) : 'VpcId must be a string',
    Properties+::: {
      VpcId: VpcId,
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
