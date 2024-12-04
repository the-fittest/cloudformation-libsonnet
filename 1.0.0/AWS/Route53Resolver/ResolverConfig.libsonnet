{
  new(
    ResourceId,
    AutodefinedReverseFlag,
  ): {
    local base = self,
    Properties: {
      assert std.isString(ResourceId) : 'ResourceId must be a string',
      ResourceId: ResourceId,
      assert std.isString(AutodefinedReverseFlag) : 'AutodefinedReverseFlag must be a string',
      assert AutodefinedReverseFlag == 'DISABLE' : "AutodefinedReverseFlag should be 'DISABLE'",
      AutodefinedReverseFlag: AutodefinedReverseFlag,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Route53Resolver::ResolverConfig',
  },
  withId(Id): {
    assert std.isString(Id) : 'Id must be a string',
    Properties+::: {
      Id: Id,
    },
  },
  withOwnerId(OwnerId): {
    assert std.isString(OwnerId) : 'OwnerId must be a string',
    Properties+::: {
      OwnerId: OwnerId,
    },
  },
  withAutodefinedReverse(AutodefinedReverse): {
    assert std.isString(AutodefinedReverse) : 'AutodefinedReverse must be a string',
    assert AutodefinedReverse == 'ENABLING' || AutodefinedReverse == 'ENABLED' || AutodefinedReverse == 'DISABLING' || AutodefinedReverse == 'DISABLED' : "AutodefinedReverse should be 'ENABLING' or 'ENABLED' or 'DISABLING' or 'DISABLED'",
    Properties+::: {
      AutodefinedReverse: AutodefinedReverse,
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
