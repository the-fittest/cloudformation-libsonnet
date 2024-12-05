{
  new(
    Capacity,
    ConnectorConfiguration,
    ConnectorName,
    KafkaConnectVersion,
    KafkaCluster,
    KafkaClusterClientAuthentication,
    KafkaClusterEncryptionInTransit,
    Plugins,
    ServiceExecutionRoleArn,
  ): {
    local base = self,
    Properties: {
      Capacity:
        if !std.isObject(Capacity) then (error 'Capacity must be an object')
        else Capacity,
      ConnectorConfiguration:
        if !std.isObject(ConnectorConfiguration) then (error 'ConnectorConfiguration must be an object')
        else ConnectorConfiguration,
      ConnectorName:
        if !std.isString(ConnectorName) then (error 'ConnectorName must be a string')
        else if std.isEmpty(ConnectorName) then (error 'ConnectorName must be not empty')
        else if std.length(ConnectorName) < 1 then error ('ConnectorName should have at least 1 characters')
        else if std.length(ConnectorName) > 128 then error ('ConnectorName should have not more than 128 characters')
        else ConnectorName,
      KafkaConnectVersion:
        if !std.isString(KafkaConnectVersion) then (error 'KafkaConnectVersion must be a string')
        else if std.isEmpty(KafkaConnectVersion) then (error 'KafkaConnectVersion must be not empty')
        else KafkaConnectVersion,
      KafkaCluster:
        if !std.isObject(KafkaCluster) then (error 'KafkaCluster must be an object')
        else if !std.objectHas(KafkaCluster, 'ApacheKafkaCluster') then (error ' have attribute ApacheKafkaCluster')
        else KafkaCluster,
      KafkaClusterClientAuthentication:
        if !std.isObject(KafkaClusterClientAuthentication) then (error 'KafkaClusterClientAuthentication must be an object')
        else if !std.objectHas(KafkaClusterClientAuthentication, 'AuthenticationType') then (error ' have attribute AuthenticationType')
        else KafkaClusterClientAuthentication,
      KafkaClusterEncryptionInTransit:
        if !std.isObject(KafkaClusterEncryptionInTransit) then (error 'KafkaClusterEncryptionInTransit must be an object')
        else if !std.objectHas(KafkaClusterEncryptionInTransit, 'EncryptionType') then (error ' have attribute EncryptionType')
        else KafkaClusterEncryptionInTransit,
      Plugins:
        if !std.isArray(Plugins) then (error 'Plugins must be an array')
        else if std.length(Plugins) < 1 then error ('Plugins cannot have less than 1 items')
        else Plugins,
      ServiceExecutionRoleArn:
        if !std.isString(ServiceExecutionRoleArn) then (error 'ServiceExecutionRoleArn must be a string')
        else if std.isEmpty(ServiceExecutionRoleArn) then (error 'ServiceExecutionRoleArn must be not empty')
        else ServiceExecutionRoleArn,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::KafkaConnect::Connector',
  },
  setConnectorArn(ConnectorArn): {
    Properties+::: {
      ConnectorArn:
        if !std.isString(ConnectorArn) then (error 'ConnectorArn must be a string')
        else if std.isEmpty(ConnectorArn) then (error 'ConnectorArn must be not empty')
        else ConnectorArn,
    },
  },
  setConnectorDescription(ConnectorDescription): {
    Properties+::: {
      ConnectorDescription:
        if !std.isString(ConnectorDescription) then (error 'ConnectorDescription must be a string')
        else if std.isEmpty(ConnectorDescription) then (error 'ConnectorDescription must be not empty')
        else if std.length(ConnectorDescription) > 1024 then error ('ConnectorDescription should have not more than 1024 characters')
        else ConnectorDescription,
    },
  },
  setLogDelivery(LogDelivery): {
    Properties+::: {
      LogDelivery:
        if !std.isObject(LogDelivery) then (error 'LogDelivery must be an object')
        else if !std.objectHas(LogDelivery, 'WorkerLogDelivery') then (error ' have attribute WorkerLogDelivery')
        else LogDelivery,
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
  setWorkerConfiguration(WorkerConfiguration): {
    Properties+::: {
      WorkerConfiguration:
        if !std.isObject(WorkerConfiguration) then (error 'WorkerConfiguration must be an object')
        else if !std.objectHas(WorkerConfiguration, 'Revision') then (error ' have attribute Revision')
        else if !std.objectHas(WorkerConfiguration, 'WorkerConfigurationArn') then (error ' have attribute WorkerConfigurationArn')
        else WorkerConfiguration,
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
