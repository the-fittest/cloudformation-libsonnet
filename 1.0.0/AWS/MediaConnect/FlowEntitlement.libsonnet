{
  new(
    FlowArn,
    Name,
    Subscribers,
    Description,
  ): {
    local base = self,
    Properties: {
      assert std.isString(FlowArn) : 'FlowArn must be a string',
      FlowArn: FlowArn,
      assert std.isString(Name) : 'Name must be a string',
      Name: Name,
      Subscribers: (if std.isArray(Subscribers) then Subscribers else [Subscribers]),
      assert std.isString(Description) : 'Description must be a string',
      Description: Description,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::MediaConnect::FlowEntitlement',
  },
  withEntitlementArn(EntitlementArn): {
    assert std.isString(EntitlementArn) : 'EntitlementArn must be a string',
    Properties+::: {
      EntitlementArn: EntitlementArn,
    },
  },
  withDataTransferSubscriberFeePercent(DataTransferSubscriberFeePercent): {
    assert std.isNumber(DataTransferSubscriberFeePercent) : 'DataTransferSubscriberFeePercent must be a number',
    Properties+::: {
      DataTransferSubscriberFeePercent: DataTransferSubscriberFeePercent,
    },
  },
  withEncryption(Encryption): {
    assert std.isObject(Encryption) : 'Encryption must be a object',
    Properties+::: {
      Encryption: Encryption,
    },
  },
  withEntitlementStatus(EntitlementStatus): {
    assert std.isString(EntitlementStatus) : 'EntitlementStatus must be a string',
    Properties+::: {
      EntitlementStatus: EntitlementStatus,
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
