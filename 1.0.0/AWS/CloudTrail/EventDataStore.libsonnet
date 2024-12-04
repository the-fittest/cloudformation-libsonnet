{
  // AWS CloudTrail EventDataStore
  EventDataStore: {
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
      Type: 'AWS::CloudTrail::EventDataStore',
    },
    withAdvancedEventSelectors(AdvancedEventSelectors): {
      Properties+::: {
        AdvancedEventSelectors: (if std.isArray(AdvancedEventSelectors) then AdvancedEventSelectors else [AdvancedEventSelectors]),
      },
    },
    withAdvancedEventSelectorsMixin(AdvancedEventSelectors): {
      Properties+::: {
        AdvancedEventSelectors+: (if std.isArray(AdvancedEventSelectors) then AdvancedEventSelectors else [AdvancedEventSelectors]),
      },
    },
    withCreatedTimestamp(CreatedTimestamp): {
      assert std.isString(CreatedTimestamp) : 'CreatedTimestamp must be a string',
      Properties+::: {
        CreatedTimestamp: CreatedTimestamp,
      },
    },
    withEventDataStoreArn(EventDataStoreArn): {
      assert std.isString(EventDataStoreArn) : 'EventDataStoreArn must be a string',
      Properties+::: {
        EventDataStoreArn: EventDataStoreArn,
      },
    },
    withFederationEnabled(FederationEnabled): {
      assert std.isBoolean(FederationEnabled) : 'FederationEnabled must be a boolean',
      Properties+::: {
        FederationEnabled: FederationEnabled,
      },
    },
    withFederationRoleArn(FederationRoleArn): {
      assert std.isString(FederationRoleArn) : 'FederationRoleArn must be a string',
      Properties+::: {
        FederationRoleArn: FederationRoleArn,
      },
    },
    withMultiRegionEnabled(MultiRegionEnabled): {
      assert std.isBoolean(MultiRegionEnabled) : 'MultiRegionEnabled must be a boolean',
      Properties+::: {
        MultiRegionEnabled: MultiRegionEnabled,
      },
    },
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: {
        Name: Name,
      },
    },
    withOrganizationEnabled(OrganizationEnabled): {
      assert std.isBoolean(OrganizationEnabled) : 'OrganizationEnabled must be a boolean',
      Properties+::: {
        OrganizationEnabled: OrganizationEnabled,
      },
    },
    withBillingMode(BillingMode): {
      assert std.isString(BillingMode) : 'BillingMode must be a string',
      Properties+::: {
        BillingMode: BillingMode,
      },
    },
    withRetentionPeriod(RetentionPeriod): {
      assert std.isNumber(RetentionPeriod) : 'RetentionPeriod must be a number',
      Properties+::: {
        RetentionPeriod: RetentionPeriod,
      },
    },
    withStatus(Status): {
      assert std.isString(Status) : 'Status must be a string',
      Properties+::: {
        Status: Status,
      },
    },
    withTerminationProtectionEnabled(TerminationProtectionEnabled): {
      assert std.isBoolean(TerminationProtectionEnabled) : 'TerminationProtectionEnabled must be a boolean',
      Properties+::: {
        TerminationProtectionEnabled: TerminationProtectionEnabled,
      },
    },
    withUpdatedTimestamp(UpdatedTimestamp): {
      assert std.isString(UpdatedTimestamp) : 'UpdatedTimestamp must be a string',
      Properties+::: {
        UpdatedTimestamp: UpdatedTimestamp,
      },
    },
    withKmsKeyId(KmsKeyId): {
      assert std.isString(KmsKeyId) : 'KmsKeyId must be a string',
      Properties+::: {
        KmsKeyId: KmsKeyId,
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
    withInsightSelectors(InsightSelectors): {
      Properties+::: {
        InsightSelectors: (if std.isArray(InsightSelectors) then InsightSelectors else [InsightSelectors]),
      },
    },
    withInsightSelectorsMixin(InsightSelectors): {
      Properties+::: {
        InsightSelectors+: (if std.isArray(InsightSelectors) then InsightSelectors else [InsightSelectors]),
      },
    },
    withInsightsDestination(InsightsDestination): {
      assert std.isString(InsightsDestination) : 'InsightsDestination must be a string',
      Properties+::: {
        InsightsDestination: InsightsDestination,
      },
    },
    withIngestionEnabled(IngestionEnabled): {
      assert std.isBoolean(IngestionEnabled) : 'IngestionEnabled must be a boolean',
      Properties+::: {
        IngestionEnabled: IngestionEnabled,
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
