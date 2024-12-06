{
  new(
    PolicyName,
    PolicyType,
  ): {
    local base = self,
    Properties: {
      PolicyName:
        if !std.isString(PolicyName) then (error 'PolicyName must be a string')
        else if std.isEmpty(PolicyName) then (error 'PolicyName must be not empty')
        else PolicyName,
      PolicyType:
        if !std.isString(PolicyType) then (error 'PolicyType must be a string')
        else if std.isEmpty(PolicyType) then (error 'PolicyType must be not empty')
        else PolicyType,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::ApplicationAutoScaling::ScalingPolicy',
  },
  setResourceId(ResourceId): {
    Properties+::: {
      ResourceId:
        if !std.isString(ResourceId) then (error 'ResourceId must be a string')
        else if std.isEmpty(ResourceId) then (error 'ResourceId must be not empty')
        else ResourceId,
    },
  },
  setScalingTargetId(ScalingTargetId): {
    Properties+::: {
      ScalingTargetId:
        if !std.isString(ScalingTargetId) then (error 'ScalingTargetId must be a string')
        else if std.isEmpty(ScalingTargetId) then (error 'ScalingTargetId must be not empty')
        else ScalingTargetId,
    },
  },
  setServiceNamespace(ServiceNamespace): {
    Properties+::: {
      ServiceNamespace:
        if !std.isString(ServiceNamespace) then (error 'ServiceNamespace must be a string')
        else if std.isEmpty(ServiceNamespace) then (error 'ServiceNamespace must be not empty')
        else ServiceNamespace,
    },
  },
  setScalableDimension(ScalableDimension): {
    Properties+::: {
      ScalableDimension:
        if !std.isString(ScalableDimension) then (error 'ScalableDimension must be a string')
        else if std.isEmpty(ScalableDimension) then (error 'ScalableDimension must be not empty')
        else ScalableDimension,
    },
  },
  setTargetTrackingScalingPolicyConfiguration(TargetTrackingScalingPolicyConfiguration): {
    Properties+::: {
      TargetTrackingScalingPolicyConfiguration:
        if !std.isObject(TargetTrackingScalingPolicyConfiguration) then (error 'TargetTrackingScalingPolicyConfiguration must be an object')
        else if !std.objectHas(TargetTrackingScalingPolicyConfiguration, 'TargetValue') then (error ' have attribute TargetValue')
        else TargetTrackingScalingPolicyConfiguration,
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
  setStepScalingPolicyConfiguration(StepScalingPolicyConfiguration): {
    Properties+::: {
      StepScalingPolicyConfiguration:
        if !std.isObject(StepScalingPolicyConfiguration) then (error 'StepScalingPolicyConfiguration must be an object')
        else StepScalingPolicyConfiguration,
    },
  },
  setPredictiveScalingPolicyConfiguration(PredictiveScalingPolicyConfiguration): {
    Properties+::: {
      PredictiveScalingPolicyConfiguration:
        if !std.isObject(PredictiveScalingPolicyConfiguration) then (error 'PredictiveScalingPolicyConfiguration must be an object')
        else if !std.objectHas(PredictiveScalingPolicyConfiguration, 'MetricSpecifications') then (error ' have attribute MetricSpecifications')
        else PredictiveScalingPolicyConfiguration,
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
