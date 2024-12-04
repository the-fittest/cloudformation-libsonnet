{
  new(
    DomainName,
    DefaultExpirationDays,
  ): {
    local base = self,
    Properties: {
      assert std.isString(DomainName) : 'DomainName must be a string',
      DomainName: DomainName,
      assert std.isNumber(DefaultExpirationDays) : 'DefaultExpirationDays must be a number',
      DefaultExpirationDays: DefaultExpirationDays,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::CustomerProfiles::Domain',
  },
  withDeadLetterQueueUrl(DeadLetterQueueUrl): {
    assert std.isString(DeadLetterQueueUrl) : 'DeadLetterQueueUrl must be a string',
    Properties+::: {
      DeadLetterQueueUrl: DeadLetterQueueUrl,
    },
  },
  withDefaultEncryptionKey(DefaultEncryptionKey): {
    assert std.isString(DefaultEncryptionKey) : 'DefaultEncryptionKey must be a string',
    Properties+::: {
      DefaultEncryptionKey: DefaultEncryptionKey,
    },
  },
  withMatching(Matching): {
    assert std.isObject(Matching) : 'Matching must be a object',
    Properties+::: {
      Matching: Matching,
    },
  },
  withRuleBasedMatching(RuleBasedMatching): {
    assert std.isObject(RuleBasedMatching) : 'RuleBasedMatching must be a object',
    Properties+::: {
      RuleBasedMatching: RuleBasedMatching,
    },
  },
  withStats(Stats): {
    assert std.isObject(Stats) : 'Stats must be a object',
    Properties+::: {
      Stats: Stats,
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
  withCreatedAt(CreatedAt): {
    assert std.isString(CreatedAt) : 'CreatedAt must be a string',
    Properties+::: {
      CreatedAt: CreatedAt,
    },
  },
  withLastUpdatedAt(LastUpdatedAt): {
    assert std.isString(LastUpdatedAt) : 'LastUpdatedAt must be a string',
    Properties+::: {
      LastUpdatedAt: LastUpdatedAt,
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
