{
  new(
    SubscriptionName,
  ): {
    local base = self,
    Properties: {
      assert std.isString(SubscriptionName) : 'SubscriptionName must be a string',
      SubscriptionName: SubscriptionName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Redshift::EventSubscription',
  },
  withStatus(Status): {
    assert std.isString(Status) : 'Status must be a string',
    Properties+::: {
      Status: Status,
    },
  },
  withCustSubscriptionId(CustSubscriptionId): {
    assert std.isString(CustSubscriptionId) : 'CustSubscriptionId must be a string',
    Properties+::: {
      CustSubscriptionId: CustSubscriptionId,
    },
  },
  withEventCategoriesList(EventCategoriesList): {
    Properties+::: {
      EventCategoriesList: (if std.isArray(EventCategoriesList) then EventCategoriesList else [EventCategoriesList]),
    },
  },
  withEventCategoriesListMixin(EventCategoriesList): {
    Properties+::: {
      EventCategoriesList+: (if std.isArray(EventCategoriesList) then EventCategoriesList else [EventCategoriesList]),
    },
  },
  withSourceType(SourceType): {
    assert std.isString(SourceType) : 'SourceType must be a string',
    Properties+::: {
      SourceType: SourceType,
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
  withEnabled(Enabled): {
    assert std.isBoolean(Enabled) : 'Enabled must be a boolean',
    Properties+::: {
      Enabled: Enabled,
    },
  },
  withSeverity(Severity): {
    assert std.isString(Severity) : 'Severity must be a string',
    Properties+::: {
      Severity: Severity,
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
  withCustomerAwsId(CustomerAwsId): {
    assert std.isString(CustomerAwsId) : 'CustomerAwsId must be a string',
    Properties+::: {
      CustomerAwsId: CustomerAwsId,
    },
  },
  withSourceIdsList(SourceIdsList): {
    Properties+::: {
      SourceIdsList: (if std.isArray(SourceIdsList) then SourceIdsList else [SourceIdsList]),
    },
  },
  withSourceIdsListMixin(SourceIdsList): {
    Properties+::: {
      SourceIdsList+: (if std.isArray(SourceIdsList) then SourceIdsList else [SourceIdsList]),
    },
  },
  withSnsTopicArn(SnsTopicArn): {
    assert std.isString(SnsTopicArn) : 'SnsTopicArn must be a string',
    Properties+::: {
      SnsTopicArn: SnsTopicArn,
    },
  },
  withSubscriptionCreationTime(SubscriptionCreationTime): {
    assert std.isString(SubscriptionCreationTime) : 'SubscriptionCreationTime must be a string',
    Properties+::: {
      SubscriptionCreationTime: SubscriptionCreationTime,
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
