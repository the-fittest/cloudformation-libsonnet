{
  new(
    PolicyName,
    PolicyType,
  ): {
    local base = self,
    Properties: {
      assert std.isString(PolicyName) : 'PolicyName must be a string',
      PolicyName: PolicyName,
      assert std.isString(PolicyType) : 'PolicyType must be a string',
      PolicyType: PolicyType,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::ApplicationAutoScaling::ScalingPolicy',
  },
  withResourceId(ResourceId): {
    assert std.isString(ResourceId) : 'ResourceId must be a string',
    Properties+::: {
      ResourceId: ResourceId,
    },
  },
  withScalingTargetId(ScalingTargetId): {
    assert std.isString(ScalingTargetId) : 'ScalingTargetId must be a string',
    Properties+::: {
      ScalingTargetId: ScalingTargetId,
    },
  },
  withServiceNamespace(ServiceNamespace): {
    assert std.isString(ServiceNamespace) : 'ServiceNamespace must be a string',
    Properties+::: {
      ServiceNamespace: ServiceNamespace,
    },
  },
  withScalableDimension(ScalableDimension): {
    assert std.isString(ScalableDimension) : 'ScalableDimension must be a string',
    Properties+::: {
      ScalableDimension: ScalableDimension,
    },
  },
  withTargetTrackingScalingPolicyConfiguration(TargetTrackingScalingPolicyConfiguration): {
    assert std.isObject(TargetTrackingScalingPolicyConfiguration) : 'TargetTrackingScalingPolicyConfiguration must be a object',
    Properties+::: {
      TargetTrackingScalingPolicyConfiguration: TargetTrackingScalingPolicyConfiguration,
    },
  },
  withArn(Arn): {
    assert std.isString(Arn) : 'Arn must be a string',
    Properties+::: {
      Arn: Arn,
    },
  },
  withStepScalingPolicyConfiguration(StepScalingPolicyConfiguration): {
    assert std.isObject(StepScalingPolicyConfiguration) : 'StepScalingPolicyConfiguration must be a object',
    Properties+::: {
      StepScalingPolicyConfiguration: StepScalingPolicyConfiguration,
    },
  },
  withPredictiveScalingPolicyConfiguration(PredictiveScalingPolicyConfiguration): {
    assert std.isObject(PredictiveScalingPolicyConfiguration) : 'PredictiveScalingPolicyConfiguration must be a object',
    Properties+::: {
      PredictiveScalingPolicyConfiguration: PredictiveScalingPolicyConfiguration,
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
