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
    Type: 'AWS::ElasticLoadBalancingV2::TrustStoreRevocation',
  },
  withRevocationContents(RevocationContents): {
    Properties+::: {
      RevocationContents: (if std.isArray(RevocationContents) then RevocationContents else [RevocationContents]),
    },
  },
  withRevocationContentsMixin(RevocationContents): {
    Properties+::: {
      RevocationContents+: (if std.isArray(RevocationContents) then RevocationContents else [RevocationContents]),
    },
  },
  withTrustStoreArn(TrustStoreArn): {
    assert std.isString(TrustStoreArn) : 'TrustStoreArn must be a string',
    Properties+::: {
      TrustStoreArn: TrustStoreArn,
    },
  },
  withRevocationId(RevocationId): {
    assert std.isNumber(RevocationId) : 'RevocationId must be a number',
    Properties+::: {
      RevocationId: RevocationId,
    },
  },
  withTrustStoreRevocations(TrustStoreRevocations): {
    Properties+::: {
      TrustStoreRevocations: (if std.isArray(TrustStoreRevocations) then TrustStoreRevocations else [TrustStoreRevocations]),
    },
  },
  withTrustStoreRevocationsMixin(TrustStoreRevocations): {
    Properties+::: {
      TrustStoreRevocations+: (if std.isArray(TrustStoreRevocations) then TrustStoreRevocations else [TrustStoreRevocations]),
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
