{
  // AWS RDS EventSubscription
  EventSubscription: {
    new(
      SnsTopicArn,
    ): {
      local base = self,
      Properties: {
        assert std.isString(SnsTopicArn) : 'SnsTopicArn must be a string',
        SnsTopicArn: SnsTopicArn,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::RDS::EventSubscription',
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
    withSubscriptionName(SubscriptionName): {
      assert std.isString(SubscriptionName) : 'SubscriptionName must be a string',
      Properties+::: {
        SubscriptionName: SubscriptionName,
      },
    },
    withEnabled(Enabled): {
      assert std.isBoolean(Enabled) : 'Enabled must be a boolean',
      Properties+::: {
        Enabled: Enabled,
      },
    },
    withEventCategories(EventCategories): {
      Properties+::: {
        EventCategories: (if std.isArray(EventCategories) then EventCategories else [EventCategories]),
      },
    },
    withEventCategoriesMixin(EventCategories): {
      Properties+::: {
        EventCategories+: (if std.isArray(EventCategories) then EventCategories else [EventCategories]),
      },
    },
    withSourceIds(SourceIds): {
      Properties+::: {
        SourceIds: (if std.isArray(SourceIds) then SourceIds else [SourceIds]),
      },
    },
    withSourceIdsMixin(SourceIds): {
      Properties+::: {
        SourceIds+: (if std.isArray(SourceIds) then SourceIds else [SourceIds]),
      },
    },
    withSourceType(SourceType): {
      assert std.isString(SourceType) : 'SourceType must be a string',
      Properties+::: {
        SourceType: SourceType,
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
