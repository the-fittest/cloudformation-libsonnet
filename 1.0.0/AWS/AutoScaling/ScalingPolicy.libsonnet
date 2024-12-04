{
  new(
    AutoScalingGroupName,
  ): {
    local base = self,
    Properties: {
      assert std.isString(AutoScalingGroupName) : 'AutoScalingGroupName must be a string',
      AutoScalingGroupName: AutoScalingGroupName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::AutoScaling::ScalingPolicy',
  },
  withMetricAggregationType(MetricAggregationType): {
    assert std.isString(MetricAggregationType) : 'MetricAggregationType must be a string',
    Properties+::: {
      MetricAggregationType: MetricAggregationType,
    },
  },
  withPolicyName(PolicyName): {
    assert std.isString(PolicyName) : 'PolicyName must be a string',
    Properties+::: {
      PolicyName: PolicyName,
    },
  },
  withPolicyType(PolicyType): {
    assert std.isString(PolicyType) : 'PolicyType must be a string',
    Properties+::: {
      PolicyType: PolicyType,
    },
  },
  withPredictiveScalingConfiguration(PredictiveScalingConfiguration): {
    assert std.isObject(PredictiveScalingConfiguration) : 'PredictiveScalingConfiguration must be a object',
    Properties+::: {
      PredictiveScalingConfiguration: PredictiveScalingConfiguration,
    },
  },
  withScalingAdjustment(ScalingAdjustment): {
    assert std.isNumber(ScalingAdjustment) : 'ScalingAdjustment must be a number',
    Properties+::: {
      ScalingAdjustment: ScalingAdjustment,
    },
  },
  withCooldown(Cooldown): {
    assert std.isString(Cooldown) : 'Cooldown must be a string',
    Properties+::: {
      Cooldown: Cooldown,
    },
  },
  withStepAdjustments(StepAdjustments): {
    Properties+::: {
      StepAdjustments: (if std.isArray(StepAdjustments) then StepAdjustments else [StepAdjustments]),
    },
  },
  withStepAdjustmentsMixin(StepAdjustments): {
    Properties+::: {
      StepAdjustments+: (if std.isArray(StepAdjustments) then StepAdjustments else [StepAdjustments]),
    },
  },
  withMinAdjustmentMagnitude(MinAdjustmentMagnitude): {
    assert std.isNumber(MinAdjustmentMagnitude) : 'MinAdjustmentMagnitude must be a number',
    Properties+::: {
      MinAdjustmentMagnitude: MinAdjustmentMagnitude,
    },
  },
  withTargetTrackingConfiguration(TargetTrackingConfiguration): {
    assert std.isObject(TargetTrackingConfiguration) : 'TargetTrackingConfiguration must be a object',
    Properties+::: {
      TargetTrackingConfiguration: TargetTrackingConfiguration,
    },
  },
  withEstimatedInstanceWarmup(EstimatedInstanceWarmup): {
    assert std.isNumber(EstimatedInstanceWarmup) : 'EstimatedInstanceWarmup must be a number',
    Properties+::: {
      EstimatedInstanceWarmup: EstimatedInstanceWarmup,
    },
  },
  withAdjustmentType(AdjustmentType): {
    assert std.isString(AdjustmentType) : 'AdjustmentType must be a string',
    Properties+::: {
      AdjustmentType: AdjustmentType,
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
