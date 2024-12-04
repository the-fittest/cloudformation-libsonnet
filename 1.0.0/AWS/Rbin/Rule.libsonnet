{
  // AWS Rbin Rule
  Rule: {
    new(
      RetentionPeriod,
      ResourceType,
    ): {
      local base = self,
      Properties: {
        assert std.isObject(RetentionPeriod) : 'RetentionPeriod must be an object',
        RetentionPeriod: RetentionPeriod,
        assert std.isString(ResourceType) : 'ResourceType must be a string',
        ResourceType: ResourceType,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::Rbin::Rule',
    },
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: {
        Arn: Arn,
      },
    },
    withIdentifier(Identifier): {
      assert std.isString(Identifier) : 'Identifier must be a string',
      Properties+::: {
        Identifier: Identifier,
      },
    },
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: {
        Description: Description,
      },
    },
    withResourceTags(ResourceTags): {
      Properties+::: {
        ResourceTags: (if std.isArray(ResourceTags) then ResourceTags else [ResourceTags]),
      },
    },
    withResourceTagsMixin(ResourceTags): {
      Properties+::: {
        ResourceTags+: (if std.isArray(ResourceTags) then ResourceTags else [ResourceTags]),
      },
    },
    withExcludeResourceTags(ExcludeResourceTags): {
      Properties+::: {
        ExcludeResourceTags: (if std.isArray(ExcludeResourceTags) then ExcludeResourceTags else [ExcludeResourceTags]),
      },
    },
    withExcludeResourceTagsMixin(ExcludeResourceTags): {
      Properties+::: {
        ExcludeResourceTags+: (if std.isArray(ExcludeResourceTags) then ExcludeResourceTags else [ExcludeResourceTags]),
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
    withStatus(Status): {
      assert std.isString(Status) : 'Status must be a string',
      Properties+::: {
        Status: Status,
      },
    },
    withLockConfiguration(LockConfiguration): {
      assert std.isObject(LockConfiguration) : 'LockConfiguration must be a object',
      Properties+::: {
        LockConfiguration: LockConfiguration,
      },
    },
    withLockState(LockState): {
      assert std.isString(LockState) : 'LockState must be a string',
      Properties+::: {
        LockState: LockState,
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
  },
}
