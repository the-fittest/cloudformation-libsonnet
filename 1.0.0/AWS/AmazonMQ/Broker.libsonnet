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
      DeploymentMode:
        if !std.isString(DeploymentMode) then (error 'DeploymentMode must be a string')
        else if std.isEmpty(DeploymentMode) then (error 'DeploymentMode must be not empty')
        else DeploymentMode,
      HostInstanceType:
        if !std.isString(HostInstanceType) then (error 'HostInstanceType must be a string')
        else if std.isEmpty(HostInstanceType) then (error 'HostInstanceType must be not empty')
        else HostInstanceType,
      EngineType:
        if !std.isString(EngineType) then (error 'EngineType must be a string')
        else if std.isEmpty(EngineType) then (error 'EngineType must be not empty')
        else EngineType,
      Users:
        if !std.isArray(Users) then (error 'Users must be an array')
        else Users,
      PubliclyAccessible:
        if !std.isBoolean(PubliclyAccessible) then (error 'PubliclyAccessible must be a boolean') else PubliclyAccessible,
      BrokerName:
        if !std.isString(BrokerName) then (error 'BrokerName must be a string')
        else if std.isEmpty(BrokerName) then (error 'BrokerName must be not empty')
        else BrokerName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::AmazonMQ::Broker',
  },
  setSecurityGroups(SecurityGroups): {
    Properties+::: {
      SecurityGroups:
        if !std.isArray(SecurityGroups) then (error 'SecurityGroups must be an array')
        else SecurityGroups,
    },
  },
  pushSecurityGroups(SecurityGroups): {
    Properties+::: {
      SecurityGroups+: SecurityGroups,
    },
  },
  setDataReplicationPrimaryBrokerArn(DataReplicationPrimaryBrokerArn): {
    Properties+::: {
      DataReplicationPrimaryBrokerArn:
        if !std.isString(DataReplicationPrimaryBrokerArn) then (error 'DataReplicationPrimaryBrokerArn must be a string')
        else if std.isEmpty(DataReplicationPrimaryBrokerArn) then (error 'DataReplicationPrimaryBrokerArn must be not empty')
        else DataReplicationPrimaryBrokerArn,
    },
  },
  setConfiguration(Configuration): {
    Properties+::: {
      Configuration:
        if !std.isObject(Configuration) then (error 'Configuration must be an object')
        else if !std.objectHas(Configuration, 'Revision') then (error ' have attribute Revision')
        else if !std.objectHas(Configuration, 'Id') then (error ' have attribute Id')
        else Configuration,
    },
  },
  setAuthenticationStrategy(AuthenticationStrategy): {
    Properties+::: {
      AuthenticationStrategy:
        if !std.isString(AuthenticationStrategy) then (error 'AuthenticationStrategy must be a string')
        else if std.isEmpty(AuthenticationStrategy) then (error 'AuthenticationStrategy must be not empty')
        else AuthenticationStrategy,
    },
  },
  setSubnetIds(SubnetIds): {
    Properties+::: {
      SubnetIds:
        if !std.isArray(SubnetIds) then (error 'SubnetIds must be an array')
        else SubnetIds,
    },
  },
  pushSubnetIds(SubnetIds): {
    Properties+::: {
      SubnetIds+: SubnetIds,
    },
  },
  setStompEndpoints(StompEndpoints): {
    Properties+::: {
      StompEndpoints:
        if !std.isArray(StompEndpoints) then (error 'StompEndpoints must be an array')
        else StompEndpoints,
    },
  },
  pushStompEndpoints(StompEndpoints): {
    Properties+::: {
      StompEndpoints+: StompEndpoints,
    },
  },
  setMqttEndpoints(MqttEndpoints): {
    Properties+::: {
      MqttEndpoints:
        if !std.isArray(MqttEndpoints) then (error 'MqttEndpoints must be an array')
        else MqttEndpoints,
    },
  },
  pushMqttEndpoints(MqttEndpoints): {
    Properties+::: {
      MqttEndpoints+: MqttEndpoints,
    },
  },
  setAmqpEndpoints(AmqpEndpoints): {
    Properties+::: {
      AmqpEndpoints:
        if !std.isArray(AmqpEndpoints) then (error 'AmqpEndpoints must be an array')
        else AmqpEndpoints,
    },
  },
  pushAmqpEndpoints(AmqpEndpoints): {
    Properties+::: {
      AmqpEndpoints+: AmqpEndpoints,
    },
  },
  setEncryptionOptions(EncryptionOptions): {
    Properties+::: {
      EncryptionOptions:
        if !std.isObject(EncryptionOptions) then (error 'EncryptionOptions must be an object')
        else if !std.objectHas(EncryptionOptions, 'UseAwsOwnedKey') then (error ' have attribute UseAwsOwnedKey')
        else EncryptionOptions,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else Tags,
    },
  },
  pushTags(Tags): {
    Properties+::: {
      Tags+: Tags,
    },
  },
  setConfigurationRevision(ConfigurationRevision): {
    Properties+::: {
      ConfigurationRevision:
        if !std.isNumber(ConfigurationRevision) then (error 'ConfigurationRevision must be an number')
        else ConfigurationRevision,
    },
  },
  setStorageType(StorageType): {
    Properties+::: {
      StorageType:
        if !std.isString(StorageType) then (error 'StorageType must be a string')
        else if std.isEmpty(StorageType) then (error 'StorageType must be not empty')
        else StorageType,
    },
  },
  setEngineVersion(EngineVersion): {
    Properties+::: {
      EngineVersion:
        if !std.isString(EngineVersion) then (error 'EngineVersion must be a string')
        else if std.isEmpty(EngineVersion) then (error 'EngineVersion must be not empty')
        else EngineVersion,
    },
  },
  setMaintenanceWindowStartTime(MaintenanceWindowStartTime): {
    Properties+::: {
      MaintenanceWindowStartTime:
        if !std.isObject(MaintenanceWindowStartTime) then (error 'MaintenanceWindowStartTime must be an object')
        else if !std.objectHas(MaintenanceWindowStartTime, 'DayOfWeek') then (error ' have attribute DayOfWeek')
        else if !std.objectHas(MaintenanceWindowStartTime, 'TimeOfDay') then (error ' have attribute TimeOfDay')
        else if !std.objectHas(MaintenanceWindowStartTime, 'TimeZone') then (error ' have attribute TimeZone')
        else MaintenanceWindowStartTime,
    },
  },
  setAutoMinorVersionUpgrade(AutoMinorVersionUpgrade): {
    Properties+::: {
      AutoMinorVersionUpgrade:
        if !std.isBoolean(AutoMinorVersionUpgrade) then (error 'AutoMinorVersionUpgrade must be a boolean') else AutoMinorVersionUpgrade,
    },
  },
  setLogs(Logs): {
    Properties+::: {
      Logs:
        if !std.isObject(Logs) then (error 'Logs must be an object')
        else Logs,
    },
  },
  setConfigurationId(ConfigurationId): {
    Properties+::: {
      ConfigurationId:
        if !std.isString(ConfigurationId) then (error 'ConfigurationId must be a string')
        else if std.isEmpty(ConfigurationId) then (error 'ConfigurationId must be not empty')
        else ConfigurationId,
    },
  },
  setDataReplicationMode(DataReplicationMode): {
    Properties+::: {
      DataReplicationMode:
        if !std.isString(DataReplicationMode) then (error 'DataReplicationMode must be a string')
        else if std.isEmpty(DataReplicationMode) then (error 'DataReplicationMode must be not empty')
        else DataReplicationMode,
    },
  },
  setWssEndpoints(WssEndpoints): {
    Properties+::: {
      WssEndpoints:
        if !std.isArray(WssEndpoints) then (error 'WssEndpoints must be an array')
        else WssEndpoints,
    },
  },
  pushWssEndpoints(WssEndpoints): {
    Properties+::: {
      WssEndpoints+: WssEndpoints,
    },
  },
  setIpAddresses(IpAddresses): {
    Properties+::: {
      IpAddresses:
        if !std.isArray(IpAddresses) then (error 'IpAddresses must be an array')
        else IpAddresses,
    },
  },
  pushIpAddresses(IpAddresses): {
    Properties+::: {
      IpAddresses+: IpAddresses,
    },
  },
  setOpenWireEndpoints(OpenWireEndpoints): {
    Properties+::: {
      OpenWireEndpoints:
        if !std.isArray(OpenWireEndpoints) then (error 'OpenWireEndpoints must be an array')
        else OpenWireEndpoints,
    },
  },
  pushOpenWireEndpoints(OpenWireEndpoints): {
    Properties+::: {
      OpenWireEndpoints+: OpenWireEndpoints,
    },
  },
  setLdapServerMetadata(LdapServerMetadata): {
    Properties+::: {
      LdapServerMetadata:
        if !std.isObject(LdapServerMetadata) then (error 'LdapServerMetadata must be an object')
        else if !std.objectHas(LdapServerMetadata, 'Hosts') then (error ' have attribute Hosts')
        else if !std.objectHas(LdapServerMetadata, 'UserSearchMatching') then (error ' have attribute UserSearchMatching')
        else if !std.objectHas(LdapServerMetadata, 'UserBase') then (error ' have attribute UserBase')
        else if !std.objectHas(LdapServerMetadata, 'RoleSearchMatching') then (error ' have attribute RoleSearchMatching')
        else if !std.objectHas(LdapServerMetadata, 'ServiceAccountUsername') then (error ' have attribute ServiceAccountUsername')
        else if !std.objectHas(LdapServerMetadata, 'RoleBase') then (error ' have attribute RoleBase')
        else if !std.objectHas(LdapServerMetadata, 'ServiceAccountPassword') then (error ' have attribute ServiceAccountPassword')
        else LdapServerMetadata,
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
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else Arn,
    },
  },
  setDependsOn(DependsOn): {
    Properties+::: {
      DependsOn: DependsOn,
    },
  },
  pushDependsOn(DependsOn): {
    Properties+::: {
      DependsOn+: DependsOn,
    },
  },
  setCreationPolicy(CreationPolicy): {
    Properties+::: {
      CreationPolicy: CreationPolicy,
    },
  },
  pushCreationPolicy(CreationPolicy): {
    Properties+::: {
      CreationPolicy+: CreationPolicy,
    },
  },
  setDeletionPolicy(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy: DeletionPolicy,
    },
  },
  pushDeletionPolicy(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy+: DeletionPolicy,
    },
  },
  setUpdatePolicy(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy: UpdatePolicy,
    },
  },
  pushUpdatePolicy(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy+: UpdatePolicy,
    },
  },
  setUpdateReplacePolicy(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy: UpdateReplacePolicy,
    },
  },
  pushUpdateReplacePolicy(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy+: UpdateReplacePolicy,
    },
  },
  setMetadata(Metadata): {
    Properties+::: {
      Metadata: Metadata,
    },
  },
  pushMetadata(Metadata): {
    Properties+::: {
      Metadata+: Metadata,
    },
  },
}
