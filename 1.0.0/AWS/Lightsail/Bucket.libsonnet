{
  new(
    BucketName,
    BundleId,
  ): {
    local base = self,
    Properties: {
      assert std.isString(BucketName) : 'BucketName must be a string',
      BucketName: BucketName,
      assert std.isString(BundleId) : 'BundleId must be a string',
      BundleId: BundleId,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Lightsail::Bucket',
  },
  withBucketArn(BucketArn): {
    assert std.isString(BucketArn) : 'BucketArn must be a string',
    Properties+::: {
      BucketArn: BucketArn,
    },
  },
  withObjectVersioning(ObjectVersioning): {
    assert std.isBoolean(ObjectVersioning) : 'ObjectVersioning must be a boolean',
    Properties+::: {
      ObjectVersioning: ObjectVersioning,
    },
  },
  withAccessRules(AccessRules): {
    assert std.isObject(AccessRules) : 'AccessRules must be a object',
    Properties+::: {
      AccessRules: AccessRules,
    },
  },
  withResourcesReceivingAccess(ResourcesReceivingAccess): {
    Properties+::: {
      ResourcesReceivingAccess: (if std.isArray(ResourcesReceivingAccess) then ResourcesReceivingAccess else [ResourcesReceivingAccess]),
    },
  },
  withResourcesReceivingAccessMixin(ResourcesReceivingAccess): {
    Properties+::: {
      ResourcesReceivingAccess+: (if std.isArray(ResourcesReceivingAccess) then ResourcesReceivingAccess else [ResourcesReceivingAccess]),
    },
  },
  withReadOnlyAccessAccounts(ReadOnlyAccessAccounts): {
    Properties+::: {
      ReadOnlyAccessAccounts: (if std.isArray(ReadOnlyAccessAccounts) then ReadOnlyAccessAccounts else [ReadOnlyAccessAccounts]),
    },
  },
  withReadOnlyAccessAccountsMixin(ReadOnlyAccessAccounts): {
    Properties+::: {
      ReadOnlyAccessAccounts+: (if std.isArray(ReadOnlyAccessAccounts) then ReadOnlyAccessAccounts else [ReadOnlyAccessAccounts]),
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
  withUrl(Url): {
    assert std.isString(Url) : 'Url must be a string',
    Properties+::: {
      Url: Url,
    },
  },
  withAbleToUpdateBundle(AbleToUpdateBundle): {
    assert std.isBoolean(AbleToUpdateBundle) : 'AbleToUpdateBundle must be a boolean',
    Properties+::: {
      AbleToUpdateBundle: AbleToUpdateBundle,
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
