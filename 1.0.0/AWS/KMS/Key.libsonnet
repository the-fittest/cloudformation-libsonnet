{
  new(
  ): {
    local base = self,
    Properties: {
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::KMS::Key',
  },
  withDescription(Description): {
    assert std.isString(Description) : 'Description must be a string',
    Properties+::: {
      Description: Description,
    },
  },
  withEnabled(Enabled): {
    assert std.isBoolean(Enabled) : 'Enabled must be a boolean',
    Properties+::: {
      Enabled: Enabled,
    },
  },
  withEnableKeyRotation(EnableKeyRotation): {
    assert std.isBoolean(EnableKeyRotation) : 'EnableKeyRotation must be a boolean',
    Properties+::: {
      EnableKeyRotation: EnableKeyRotation,
    },
  },
  withKeyPolicy(KeyPolicy): {
    Properties+::: {
      KeyPolicy: KeyPolicy,
    },
  },
  withKeyUsage(KeyUsage): {
    assert std.isString(KeyUsage) : 'KeyUsage must be a string',
    Properties+::: {
      KeyUsage: KeyUsage,
    },
  },
  withOrigin(Origin): {
    assert std.isString(Origin) : 'Origin must be a string',
    Properties+::: {
      Origin: Origin,
    },
  },
  withKeySpec(KeySpec): {
    assert std.isString(KeySpec) : 'KeySpec must be a string',
    Properties+::: {
      KeySpec: KeySpec,
    },
  },
  withMultiRegion(MultiRegion): {
    assert std.isBoolean(MultiRegion) : 'MultiRegion must be a boolean',
    Properties+::: {
      MultiRegion: MultiRegion,
    },
  },
  withPendingWindowInDays(PendingWindowInDays): {
    assert std.isNumber(PendingWindowInDays) : 'PendingWindowInDays must be a number',
    Properties+::: {
      PendingWindowInDays: PendingWindowInDays,
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
  withArn(Arn): {
    assert std.isString(Arn) : 'Arn must be a string',
    Properties+::: {
      Arn: Arn,
    },
  },
  withKeyId(KeyId): {
    assert std.isString(KeyId) : 'KeyId must be a string',
    Properties+::: {
      KeyId: KeyId,
    },
  },
  withBypassPolicyLockoutSafetyCheck(BypassPolicyLockoutSafetyCheck): {
    assert std.isBoolean(BypassPolicyLockoutSafetyCheck) : 'BypassPolicyLockoutSafetyCheck must be a boolean',
    Properties+::: {
      BypassPolicyLockoutSafetyCheck: BypassPolicyLockoutSafetyCheck,
    },
  },
  withRotationPeriodInDays(RotationPeriodInDays): {
    assert std.isNumber(RotationPeriodInDays) : 'RotationPeriodInDays must be a number',
    Properties+::: {
      RotationPeriodInDays: RotationPeriodInDays,
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
