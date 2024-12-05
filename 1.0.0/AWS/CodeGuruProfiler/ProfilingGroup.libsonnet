{
  new(
    ProfilingGroupName,
  ): {
    local base = self,
    Properties: {
      ProfilingGroupName:
        if !std.isString(ProfilingGroupName) then (error 'ProfilingGroupName must be a string')
        else if std.isEmpty(ProfilingGroupName) then (error 'ProfilingGroupName must be not empty')
        else if std.length(ProfilingGroupName) < 1 then error ('ProfilingGroupName should have at least 1 characters')
        else if std.length(ProfilingGroupName) > 255 then error ('ProfilingGroupName should have not more than 255 characters')
        else ProfilingGroupName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::CodeGuruProfiler::ProfilingGroup',
  },
  setComputePlatform(ComputePlatform): {
    Properties+::: {
      ComputePlatform:
        if !std.isString(ComputePlatform) then (error 'ComputePlatform must be a string')
        else if std.isEmpty(ComputePlatform) then (error 'ComputePlatform must be not empty')
        else if ComputePlatform != 'Default' && ComputePlatform != 'AWSLambda' then (error "ComputePlatform should be 'Default' or 'AWSLambda'")
        else ComputePlatform,
    },
  },
  setAgentPermissions(AgentPermissions): {
    Properties+::: {
      AgentPermissions:
        if !std.isObject(AgentPermissions) then (error 'AgentPermissions must be an object')
        else if !std.objectHas(AgentPermissions, 'Principals') then (error ' have attribute Principals')
        else AgentPermissions,
    },
  },
  setAnomalyDetectionNotificationConfiguration(AnomalyDetectionNotificationConfiguration): {
    Properties+::: {
      AnomalyDetectionNotificationConfiguration:
        if !std.isArray(AnomalyDetectionNotificationConfiguration) then (error 'AnomalyDetectionNotificationConfiguration must be an array')
        else AnomalyDetectionNotificationConfiguration,
    },
  },
  setAnomalyDetectionNotificationConfigurationMixin(AnomalyDetectionNotificationConfiguration): {
    Properties+::: {
      AnomalyDetectionNotificationConfiguration+: AnomalyDetectionNotificationConfiguration,
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
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else if std.length(Tags) > 50 then error ('Tags cannot have more than 50 items')
        else Tags,
    },
  },
  setTagsMixin(Tags): {
    Properties+::: {
      Tags+: Tags,
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
