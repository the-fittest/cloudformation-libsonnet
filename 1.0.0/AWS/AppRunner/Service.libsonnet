{
  new(
    SourceConfiguration,
  ): {
    local base = self,
    Properties: {
      SourceConfiguration:
        if !std.isObject(SourceConfiguration) then (error 'SourceConfiguration must be an object')
        else SourceConfiguration,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::AppRunner::Service',
  },
  setServiceName(ServiceName): {
    Properties+::: {
      ServiceName:
        if !std.isString(ServiceName) then (error 'ServiceName must be a string')
        else if std.isEmpty(ServiceName) then (error 'ServiceName must be not empty')
        else if std.length(ServiceName) < 4 then error ('ServiceName should have at least 4 characters')
        else if std.length(ServiceName) > 40 then error ('ServiceName should have not more than 40 characters')
        else ServiceName,
    },
  },
  setServiceId(ServiceId): {
    Properties+::: {
      ServiceId:
        if !std.isString(ServiceId) then (error 'ServiceId must be a string')
        else if std.isEmpty(ServiceId) then (error 'ServiceId must be not empty')
        else if std.length(ServiceId) < 32 then error ('ServiceId should have at least 32 characters')
        else if std.length(ServiceId) > 32 then error ('ServiceId should have not more than 32 characters')
        else ServiceId,
    },
  },
  setServiceArn(ServiceArn): {
    Properties+::: {
      ServiceArn:
        if !std.isString(ServiceArn) then (error 'ServiceArn must be a string')
        else if std.isEmpty(ServiceArn) then (error 'ServiceArn must be not empty')
        else if std.length(ServiceArn) < 1 then error ('ServiceArn should have at least 1 characters')
        else if std.length(ServiceArn) > 1011 then error ('ServiceArn should have not more than 1011 characters')
        else ServiceArn,
    },
  },
  setServiceUrl(ServiceUrl): {
    Properties+::: {
      ServiceUrl:
        if !std.isString(ServiceUrl) then (error 'ServiceUrl must be a string')
        else if std.isEmpty(ServiceUrl) then (error 'ServiceUrl must be not empty')
        else ServiceUrl,
    },
  },
  setStatus(Status): {
    Properties+::: {
      Status:
        if !std.isString(Status) then (error 'Status must be a string')
        else if std.isEmpty(Status) then (error 'Status must be not empty')
        else Status,
    },
  },
  setInstanceConfiguration(InstanceConfiguration): {
    Properties+::: {
      InstanceConfiguration:
        if !std.isObject(InstanceConfiguration) then (error 'InstanceConfiguration must be an object')
        else InstanceConfiguration,
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
  setEncryptionConfiguration(EncryptionConfiguration): {
    Properties+::: {
      EncryptionConfiguration:
        if !std.isObject(EncryptionConfiguration) then (error 'EncryptionConfiguration must be an object')
        else if !std.objectHas(EncryptionConfiguration, 'KmsKey') then (error ' have attribute KmsKey')
        else EncryptionConfiguration,
    },
  },
  setHealthCheckConfiguration(HealthCheckConfiguration): {
    Properties+::: {
      HealthCheckConfiguration:
        if !std.isObject(HealthCheckConfiguration) then (error 'HealthCheckConfiguration must be an object')
        else HealthCheckConfiguration,
    },
  },
  setObservabilityConfiguration(ObservabilityConfiguration): {
    Properties+::: {
      ObservabilityConfiguration:
        if !std.isObject(ObservabilityConfiguration) then (error 'ObservabilityConfiguration must be an object')
        else if !std.objectHas(ObservabilityConfiguration, 'ObservabilityEnabled') then (error ' have attribute ObservabilityEnabled')
        else ObservabilityConfiguration,
    },
  },
  setAutoScalingConfigurationArn(AutoScalingConfigurationArn): {
    Properties+::: {
      AutoScalingConfigurationArn:
        if !std.isString(AutoScalingConfigurationArn) then (error 'AutoScalingConfigurationArn must be a string')
        else if std.isEmpty(AutoScalingConfigurationArn) then (error 'AutoScalingConfigurationArn must be not empty')
        else if std.length(AutoScalingConfigurationArn) < 1 then error ('AutoScalingConfigurationArn should have at least 1 characters')
        else if std.length(AutoScalingConfigurationArn) > 1011 then error ('AutoScalingConfigurationArn should have not more than 1011 characters')
        else AutoScalingConfigurationArn,
    },
  },
  setNetworkConfiguration(NetworkConfiguration): {
    Properties+::: {
      NetworkConfiguration:
        if !std.isObject(NetworkConfiguration) then (error 'NetworkConfiguration must be an object')
        else NetworkConfiguration,
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
