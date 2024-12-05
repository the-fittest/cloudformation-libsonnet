{
  new(
    AutoScalingGroupName,
  ): {
    local base = self,
    Properties: {
      AutoScalingGroupName:
        if !std.isString(AutoScalingGroupName) then (error 'AutoScalingGroupName must be a string')
        else if std.isEmpty(AutoScalingGroupName) then (error 'AutoScalingGroupName must be not empty')
        else AutoScalingGroupName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::AutoScaling::ScalingPolicy',
  },
  setMetricAggregationType(MetricAggregationType): {
    Properties+::: {
      MetricAggregationType:
        if !std.isString(MetricAggregationType) then (error 'MetricAggregationType must be a string')
        else if std.isEmpty(MetricAggregationType) then (error 'MetricAggregationType must be not empty')
        else MetricAggregationType,
    },
  },
  setPolicyName(PolicyName): {
    Properties+::: {
      PolicyName:
        if !std.isString(PolicyName) then (error 'PolicyName must be a string')
        else if std.isEmpty(PolicyName) then (error 'PolicyName must be not empty')
        else PolicyName,
    },
  },
  setPolicyType(PolicyType): {
    Properties+::: {
      PolicyType:
        if !std.isString(PolicyType) then (error 'PolicyType must be a string')
        else if std.isEmpty(PolicyType) then (error 'PolicyType must be not empty')
        else PolicyType,
    },
  },
  setPredictiveScalingConfiguration(PredictiveScalingConfiguration): {
    Properties+::: {
      PredictiveScalingConfiguration:
        if !std.isObject(PredictiveScalingConfiguration) then (error 'PredictiveScalingConfiguration must be an object')
        else if !std.objectHas(PredictiveScalingConfiguration, 'MetricSpecifications') then (error ' have attribute MetricSpecifications')
        else PredictiveScalingConfiguration,
    },
  },
  setScalingAdjustment(ScalingAdjustment): {
    Properties+::: {
      ScalingAdjustment:
        if !std.isNumber(ScalingAdjustment) then (error 'ScalingAdjustment must be an number')
        else ScalingAdjustment,
    },
  },
  setCooldown(Cooldown): {
    Properties+::: {
      Cooldown:
        if !std.isString(Cooldown) then (error 'Cooldown must be a string')
        else if std.isEmpty(Cooldown) then (error 'Cooldown must be not empty')
        else Cooldown,
    },
  },
  setStepAdjustments(StepAdjustments): {
    Properties+::: {
      StepAdjustments:
        if !std.isArray(StepAdjustments) then (error 'StepAdjustments must be an array')
        else StepAdjustments,
    },
  },
  setStepAdjustmentsMixin(StepAdjustments): {
    Properties+::: {
      StepAdjustments+: StepAdjustments,
    },
  },
  setMinAdjustmentMagnitude(MinAdjustmentMagnitude): {
    Properties+::: {
      MinAdjustmentMagnitude:
        if !std.isNumber(MinAdjustmentMagnitude) then (error 'MinAdjustmentMagnitude must be an number')
        else MinAdjustmentMagnitude,
    },
  },
  setTargetTrackingConfiguration(TargetTrackingConfiguration): {
    Properties+::: {
      TargetTrackingConfiguration:
        if !std.isObject(TargetTrackingConfiguration) then (error 'TargetTrackingConfiguration must be an object')
        else if !std.objectHas(TargetTrackingConfiguration, 'TargetValue') then (error ' have attribute TargetValue')
        else TargetTrackingConfiguration,
    },
  },
  setEstimatedInstanceWarmup(EstimatedInstanceWarmup): {
    Properties+::: {
      EstimatedInstanceWarmup:
        if !std.isNumber(EstimatedInstanceWarmup) then (error 'EstimatedInstanceWarmup must be an number')
        else EstimatedInstanceWarmup,
    },
  },
  setAdjustmentType(AdjustmentType): {
    Properties+::: {
      AdjustmentType:
        if !std.isString(AdjustmentType) then (error 'AdjustmentType must be a string')
        else if std.isEmpty(AdjustmentType) then (error 'AdjustmentType must be not empty')
        else AdjustmentType,
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
