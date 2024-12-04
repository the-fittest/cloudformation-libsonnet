{
  // AWS Location Tracker
  Tracker: {
    new(
      TrackerName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(TrackerName) : 'TrackerName must be a string',
        TrackerName: TrackerName,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::Location::Tracker',
    },
    withCreateTime(CreateTime): {
      assert std.isString(CreateTime) : 'CreateTime must be a string',
      Properties+::: {
        CreateTime: CreateTime,
      },
    },
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: {
        Description: Description,
      },
    },
    withEventBridgeEnabled(EventBridgeEnabled): {
      assert std.isBoolean(EventBridgeEnabled) : 'EventBridgeEnabled must be a boolean',
      Properties+::: {
        EventBridgeEnabled: EventBridgeEnabled,
      },
    },
    withKmsKeyEnableGeospatialQueries(KmsKeyEnableGeospatialQueries): {
      assert std.isBoolean(KmsKeyEnableGeospatialQueries) : 'KmsKeyEnableGeospatialQueries must be a boolean',
      Properties+::: {
        KmsKeyEnableGeospatialQueries: KmsKeyEnableGeospatialQueries,
      },
    },
    withKmsKeyId(KmsKeyId): {
      assert std.isString(KmsKeyId) : 'KmsKeyId must be a string',
      Properties+::: {
        KmsKeyId: KmsKeyId,
      },
    },
    withPositionFiltering(PositionFiltering): {
      assert std.isString(PositionFiltering) : 'PositionFiltering must be a string',
      Properties+::: {
        PositionFiltering: PositionFiltering,
      },
    },
    withPricingPlan(PricingPlan): {
      assert std.isString(PricingPlan) : 'PricingPlan must be a string',
      Properties+::: {
        PricingPlan: PricingPlan,
      },
    },
    withPricingPlanDataSource(PricingPlanDataSource): {
      assert std.isString(PricingPlanDataSource) : 'PricingPlanDataSource must be a string',
      Properties+::: {
        PricingPlanDataSource: PricingPlanDataSource,
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
    withTrackerArn(TrackerArn): {
      assert std.isString(TrackerArn) : 'TrackerArn must be a string',
      Properties+::: {
        TrackerArn: TrackerArn,
      },
    },
    withUpdateTime(UpdateTime): {
      assert std.isString(UpdateTime) : 'UpdateTime must be a string',
      Properties+::: {
        UpdateTime: UpdateTime,
      },
    },
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: {
        Arn: Arn,
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
