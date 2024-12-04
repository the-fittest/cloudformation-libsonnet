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
    Type: 'AWS::IoT::SecurityProfile',
  },
  withSecurityProfileName(SecurityProfileName): {
    assert std.isString(SecurityProfileName) : 'SecurityProfileName must be a string',
    Properties+::: {
      SecurityProfileName: SecurityProfileName,
    },
  },
  withSecurityProfileDescription(SecurityProfileDescription): {
    assert std.isString(SecurityProfileDescription) : 'SecurityProfileDescription must be a string',
    Properties+::: {
      SecurityProfileDescription: SecurityProfileDescription,
    },
  },
  withBehaviors(Behaviors): {
    Properties+::: {
      Behaviors: (if std.isArray(Behaviors) then Behaviors else [Behaviors]),
    },
  },
  withBehaviorsMixin(Behaviors): {
    Properties+::: {
      Behaviors+: (if std.isArray(Behaviors) then Behaviors else [Behaviors]),
    },
  },
  withAlertTargets(AlertTargets): {
    assert std.isObject(AlertTargets) : 'AlertTargets must be a object',
    Properties+::: {
      AlertTargets: AlertTargets,
    },
  },
  withAdditionalMetricsToRetainV2(AdditionalMetricsToRetainV2): {
    Properties+::: {
      AdditionalMetricsToRetainV2: (if std.isArray(AdditionalMetricsToRetainV2) then AdditionalMetricsToRetainV2 else [AdditionalMetricsToRetainV2]),
    },
  },
  withAdditionalMetricsToRetainV2Mixin(AdditionalMetricsToRetainV2): {
    Properties+::: {
      AdditionalMetricsToRetainV2+: (if std.isArray(AdditionalMetricsToRetainV2) then AdditionalMetricsToRetainV2 else [AdditionalMetricsToRetainV2]),
    },
  },
  withMetricsExportConfig(MetricsExportConfig): {
    assert std.isObject(MetricsExportConfig) : 'MetricsExportConfig must be a object',
    Properties+::: {
      MetricsExportConfig: MetricsExportConfig,
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
  withTargetArns(TargetArns): {
    Properties+::: {
      TargetArns: (if std.isArray(TargetArns) then TargetArns else [TargetArns]),
    },
  },
  withTargetArnsMixin(TargetArns): {
    Properties+::: {
      TargetArns+: (if std.isArray(TargetArns) then TargetArns else [TargetArns]),
    },
  },
  withSecurityProfileArn(SecurityProfileArn): {
    assert std.isString(SecurityProfileArn) : 'SecurityProfileArn must be a string',
    Properties+::: {
      SecurityProfileArn: SecurityProfileArn,
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
