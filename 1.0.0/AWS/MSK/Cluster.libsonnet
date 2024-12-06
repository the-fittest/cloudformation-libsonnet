{
  new(
    BrokerNodeGroupInfo,
    KafkaVersion,
    NumberOfBrokerNodes,
    ClusterName,
  ): {
    local base = self,
    Properties: {
      BrokerNodeGroupInfo:
        if !std.isObject(BrokerNodeGroupInfo) then (error 'BrokerNodeGroupInfo must be an object')
        else if !std.objectHas(BrokerNodeGroupInfo, 'ClientSubnets') then (error ' have attribute ClientSubnets')
        else if !std.objectHas(BrokerNodeGroupInfo, 'InstanceType') then (error ' have attribute InstanceType')
        else BrokerNodeGroupInfo,
      KafkaVersion:
        if !std.isString(KafkaVersion) then (error 'KafkaVersion must be a string')
        else if std.isEmpty(KafkaVersion) then (error 'KafkaVersion must be not empty')
        else if std.length(KafkaVersion) < 1 then error ('KafkaVersion should have at least 1 characters')
        else if std.length(KafkaVersion) > 128 then error ('KafkaVersion should have not more than 128 characters')
        else KafkaVersion,
      NumberOfBrokerNodes:
        if !std.isNumber(NumberOfBrokerNodes) then (error 'NumberOfBrokerNodes must be an number')
        else NumberOfBrokerNodes,
      ClusterName:
        if !std.isString(ClusterName) then (error 'ClusterName must be a string')
        else if std.isEmpty(ClusterName) then (error 'ClusterName must be not empty')
        else if std.length(ClusterName) < 1 then error ('ClusterName should have at least 1 characters')
        else if std.length(ClusterName) > 64 then error ('ClusterName should have not more than 64 characters')
        else ClusterName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::MSK::Cluster',
  },
  setEnhancedMonitoring(EnhancedMonitoring): {
    Properties+::: {
      EnhancedMonitoring:
        if !std.isString(EnhancedMonitoring) then (error 'EnhancedMonitoring must be a string')
        else if std.isEmpty(EnhancedMonitoring) then (error 'EnhancedMonitoring must be not empty')
        else if EnhancedMonitoring != 'DEFAULT' && EnhancedMonitoring != 'PER_BROKER' && EnhancedMonitoring != 'PER_TOPIC_PER_BROKER' && EnhancedMonitoring != 'PER_TOPIC_PER_PARTITION' then (error "EnhancedMonitoring should be 'DEFAULT' or 'PER_BROKER' or 'PER_TOPIC_PER_BROKER' or 'PER_TOPIC_PER_PARTITION'")
        else if std.length(EnhancedMonitoring) < 7 then error ('EnhancedMonitoring should have at least 7 characters')
        else if std.length(EnhancedMonitoring) > 23 then error ('EnhancedMonitoring should have not more than 23 characters')
        else EnhancedMonitoring,
    },
  },
  setEncryptionInfo(EncryptionInfo): {
    Properties+::: {
      EncryptionInfo:
        if !std.isObject(EncryptionInfo) then (error 'EncryptionInfo must be an object')
        else EncryptionInfo,
    },
  },
  setOpenMonitoring(OpenMonitoring): {
    Properties+::: {
      OpenMonitoring:
        if !std.isObject(OpenMonitoring) then (error 'OpenMonitoring must be an object')
        else if !std.objectHas(OpenMonitoring, 'Prometheus') then (error ' have attribute Prometheus')
        else OpenMonitoring,
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
  setCurrentVersion(CurrentVersion): {
    Properties+::: {
      CurrentVersion:
        if !std.isString(CurrentVersion) then (error 'CurrentVersion must be a string')
        else if std.isEmpty(CurrentVersion) then (error 'CurrentVersion must be not empty')
        else CurrentVersion,
    },
  },
  setClientAuthentication(ClientAuthentication): {
    Properties+::: {
      ClientAuthentication:
        if !std.isObject(ClientAuthentication) then (error 'ClientAuthentication must be an object')
        else ClientAuthentication,
    },
  },
  setLoggingInfo(LoggingInfo): {
    Properties+::: {
      LoggingInfo:
        if !std.isObject(LoggingInfo) then (error 'LoggingInfo must be an object')
        else if !std.objectHas(LoggingInfo, 'BrokerLogs') then (error ' have attribute BrokerLogs')
        else LoggingInfo,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isObject(Tags) then (error 'Tags must be an object')
        else Tags,
    },
  },
  setConfigurationInfo(ConfigurationInfo): {
    Properties+::: {
      ConfigurationInfo:
        if !std.isObject(ConfigurationInfo) then (error 'ConfigurationInfo must be an object')
        else if !std.objectHas(ConfigurationInfo, 'Revision') then (error ' have attribute Revision')
        else if !std.objectHas(ConfigurationInfo, 'Arn') then (error ' have attribute Arn')
        else ConfigurationInfo,
    },
  },
  setStorageMode(StorageMode): {
    Properties+::: {
      StorageMode:
        if !std.isString(StorageMode) then (error 'StorageMode must be a string')
        else if std.isEmpty(StorageMode) then (error 'StorageMode must be not empty')
        else if StorageMode != 'LOCAL' && StorageMode != 'TIERED' then (error "StorageMode should be 'LOCAL' or 'TIERED'")
        else if std.length(StorageMode) < 5 then error ('StorageMode should have at least 5 characters')
        else if std.length(StorageMode) > 6 then error ('StorageMode should have not more than 6 characters')
        else StorageMode,
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
