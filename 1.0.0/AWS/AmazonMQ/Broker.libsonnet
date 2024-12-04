{
  new(
    DeploymentMode,
    HostInstanceType,
    EngineType,
    Users,
    PubliclyAccessible,
    BrokerName,
  ): {
    local base = self,
    Properties: {
      assert std.isString(DeploymentMode) : 'DeploymentMode must be a string',
      DeploymentMode: DeploymentMode,
      assert std.isString(HostInstanceType) : 'HostInstanceType must be a string',
      HostInstanceType: HostInstanceType,
      assert std.isString(EngineType) : 'EngineType must be a string',
      EngineType: EngineType,
      Users: (if std.isArray(Users) then Users else [Users]),
      assert std.isBoolean(PubliclyAccessible) : 'PubliclyAccessible must be a boolean',
      PubliclyAccessible: PubliclyAccessible,
      assert std.isString(BrokerName) : 'BrokerName must be a string',
      BrokerName: BrokerName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::AmazonMQ::Broker',
  },
  withSecurityGroups(SecurityGroups): {
    Properties+::: {
      SecurityGroups: (if std.isArray(SecurityGroups) then SecurityGroups else [SecurityGroups]),
    },
  },
  withSecurityGroupsMixin(SecurityGroups): {
    Properties+::: {
      SecurityGroups+: (if std.isArray(SecurityGroups) then SecurityGroups else [SecurityGroups]),
    },
  },
  withDataReplicationPrimaryBrokerArn(DataReplicationPrimaryBrokerArn): {
    assert std.isString(DataReplicationPrimaryBrokerArn) : 'DataReplicationPrimaryBrokerArn must be a string',
    Properties+::: {
      DataReplicationPrimaryBrokerArn: DataReplicationPrimaryBrokerArn,
    },
  },
  withConfiguration(Configuration): {
    assert std.isObject(Configuration) : 'Configuration must be a object',
    Properties+::: {
      Configuration: Configuration,
    },
  },
  withAuthenticationStrategy(AuthenticationStrategy): {
    assert std.isString(AuthenticationStrategy) : 'AuthenticationStrategy must be a string',
    Properties+::: {
      AuthenticationStrategy: AuthenticationStrategy,
    },
  },
  withSubnetIds(SubnetIds): {
    Properties+::: {
      SubnetIds: (if std.isArray(SubnetIds) then SubnetIds else [SubnetIds]),
    },
  },
  withSubnetIdsMixin(SubnetIds): {
    Properties+::: {
      SubnetIds+: (if std.isArray(SubnetIds) then SubnetIds else [SubnetIds]),
    },
  },
  withStompEndpoints(StompEndpoints): {
    Properties+::: {
      StompEndpoints: (if std.isArray(StompEndpoints) then StompEndpoints else [StompEndpoints]),
    },
  },
  withStompEndpointsMixin(StompEndpoints): {
    Properties+::: {
      StompEndpoints+: (if std.isArray(StompEndpoints) then StompEndpoints else [StompEndpoints]),
    },
  },
  withMqttEndpoints(MqttEndpoints): {
    Properties+::: {
      MqttEndpoints: (if std.isArray(MqttEndpoints) then MqttEndpoints else [MqttEndpoints]),
    },
  },
  withMqttEndpointsMixin(MqttEndpoints): {
    Properties+::: {
      MqttEndpoints+: (if std.isArray(MqttEndpoints) then MqttEndpoints else [MqttEndpoints]),
    },
  },
  withAmqpEndpoints(AmqpEndpoints): {
    Properties+::: {
      AmqpEndpoints: (if std.isArray(AmqpEndpoints) then AmqpEndpoints else [AmqpEndpoints]),
    },
  },
  withAmqpEndpointsMixin(AmqpEndpoints): {
    Properties+::: {
      AmqpEndpoints+: (if std.isArray(AmqpEndpoints) then AmqpEndpoints else [AmqpEndpoints]),
    },
  },
  withEncryptionOptions(EncryptionOptions): {
    assert std.isObject(EncryptionOptions) : 'EncryptionOptions must be a object',
    Properties+::: {
      EncryptionOptions: EncryptionOptions,
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
  withConfigurationRevision(ConfigurationRevision): {
    assert std.isNumber(ConfigurationRevision) : 'ConfigurationRevision must be a number',
    Properties+::: {
      ConfigurationRevision: ConfigurationRevision,
    },
  },
  withStorageType(StorageType): {
    assert std.isString(StorageType) : 'StorageType must be a string',
    Properties+::: {
      StorageType: StorageType,
    },
  },
  withEngineVersion(EngineVersion): {
    assert std.isString(EngineVersion) : 'EngineVersion must be a string',
    Properties+::: {
      EngineVersion: EngineVersion,
    },
  },
  withMaintenanceWindowStartTime(MaintenanceWindowStartTime): {
    assert std.isObject(MaintenanceWindowStartTime) : 'MaintenanceWindowStartTime must be a object',
    Properties+::: {
      MaintenanceWindowStartTime: MaintenanceWindowStartTime,
    },
  },
  withAutoMinorVersionUpgrade(AutoMinorVersionUpgrade): {
    assert std.isBoolean(AutoMinorVersionUpgrade) : 'AutoMinorVersionUpgrade must be a boolean',
    Properties+::: {
      AutoMinorVersionUpgrade: AutoMinorVersionUpgrade,
    },
  },
  withLogs(Logs): {
    assert std.isObject(Logs) : 'Logs must be a object',
    Properties+::: {
      Logs: Logs,
    },
  },
  withConfigurationId(ConfigurationId): {
    assert std.isString(ConfigurationId) : 'ConfigurationId must be a string',
    Properties+::: {
      ConfigurationId: ConfigurationId,
    },
  },
  withDataReplicationMode(DataReplicationMode): {
    assert std.isString(DataReplicationMode) : 'DataReplicationMode must be a string',
    Properties+::: {
      DataReplicationMode: DataReplicationMode,
    },
  },
  withWssEndpoints(WssEndpoints): {
    Properties+::: {
      WssEndpoints: (if std.isArray(WssEndpoints) then WssEndpoints else [WssEndpoints]),
    },
  },
  withWssEndpointsMixin(WssEndpoints): {
    Properties+::: {
      WssEndpoints+: (if std.isArray(WssEndpoints) then WssEndpoints else [WssEndpoints]),
    },
  },
  withIpAddresses(IpAddresses): {
    Properties+::: {
      IpAddresses: (if std.isArray(IpAddresses) then IpAddresses else [IpAddresses]),
    },
  },
  withIpAddressesMixin(IpAddresses): {
    Properties+::: {
      IpAddresses+: (if std.isArray(IpAddresses) then IpAddresses else [IpAddresses]),
    },
  },
  withOpenWireEndpoints(OpenWireEndpoints): {
    Properties+::: {
      OpenWireEndpoints: (if std.isArray(OpenWireEndpoints) then OpenWireEndpoints else [OpenWireEndpoints]),
    },
  },
  withOpenWireEndpointsMixin(OpenWireEndpoints): {
    Properties+::: {
      OpenWireEndpoints+: (if std.isArray(OpenWireEndpoints) then OpenWireEndpoints else [OpenWireEndpoints]),
    },
  },
  withLdapServerMetadata(LdapServerMetadata): {
    assert std.isObject(LdapServerMetadata) : 'LdapServerMetadata must be a object',
    Properties+::: {
      LdapServerMetadata: LdapServerMetadata,
    },
  },
  withId(Id): {
    assert std.isString(Id) : 'Id must be a string',
    Properties+::: {
      Id: Id,
    },
  },
  withArn(Arn): {
    assert std.isString(Arn) : 'Arn must be a string',
    Properties+::: {
      Arn: Arn,
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
