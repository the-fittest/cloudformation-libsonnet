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
    Type: 'AWS::SES::ConfigurationSet',
  },
  withName(Name): {
    assert std.isString(Name) : 'Name must be a string',
    Properties+::: {
      Name: Name,
    },
  },
  withTrackingOptions(TrackingOptions): {
    assert std.isObject(TrackingOptions) : 'TrackingOptions must be a object',
    Properties+::: {
      TrackingOptions: TrackingOptions,
    },
  },
  withDeliveryOptions(DeliveryOptions): {
    assert std.isObject(DeliveryOptions) : 'DeliveryOptions must be a object',
    Properties+::: {
      DeliveryOptions: DeliveryOptions,
    },
  },
  withReputationOptions(ReputationOptions): {
    assert std.isObject(ReputationOptions) : 'ReputationOptions must be a object',
    Properties+::: {
      ReputationOptions: ReputationOptions,
    },
  },
  withSendingOptions(SendingOptions): {
    assert std.isObject(SendingOptions) : 'SendingOptions must be a object',
    Properties+::: {
      SendingOptions: SendingOptions,
    },
  },
  withSuppressionOptions(SuppressionOptions): {
    assert std.isObject(SuppressionOptions) : 'SuppressionOptions must be a object',
    Properties+::: {
      SuppressionOptions: SuppressionOptions,
    },
  },
  withVdmOptions(VdmOptions): {
    assert std.isObject(VdmOptions) : 'VdmOptions must be a object',
    Properties+::: {
      VdmOptions: VdmOptions,
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
