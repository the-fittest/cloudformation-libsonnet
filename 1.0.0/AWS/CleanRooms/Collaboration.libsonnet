{
  new(
    CreatorDisplayName,
    CreatorMemberAbilities,
    Members,
    Name,
    Description,
    QueryLogStatus,
  ): {
    local base = self,
    Properties: {
      assert std.isString(CreatorDisplayName) : 'CreatorDisplayName must be a string',
      CreatorDisplayName: CreatorDisplayName,
      CreatorMemberAbilities: (if std.isArray(CreatorMemberAbilities) then CreatorMemberAbilities else [CreatorMemberAbilities]),
      Members: (if std.isArray(Members) then Members else [Members]),
      assert std.isString(Name) : 'Name must be a string',
      Name: Name,
      assert std.isString(Description) : 'Description must be a string',
      Description: Description,
      assert std.isString(QueryLogStatus) : 'QueryLogStatus must be a string',
      assert QueryLogStatus == 'ENABLED' || QueryLogStatus == 'DISABLED' : "QueryLogStatus should be 'ENABLED' or 'DISABLED'",
      QueryLogStatus: QueryLogStatus,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::CleanRooms::Collaboration',
  },
  withArn(Arn): {
    assert std.isString(Arn) : 'Arn must be a string',
    Properties+::: {
      Arn: Arn,
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
  withCollaborationIdentifier(CollaborationIdentifier): {
    assert std.isString(CollaborationIdentifier) : 'CollaborationIdentifier must be a string',
    Properties+::: {
      CollaborationIdentifier: CollaborationIdentifier,
    },
  },
  withDataEncryptionMetadata(DataEncryptionMetadata): {
    assert std.isObject(DataEncryptionMetadata) : 'DataEncryptionMetadata must be a object',
    Properties+::: {
      DataEncryptionMetadata: DataEncryptionMetadata,
    },
  },
  withAnalyticsEngine(AnalyticsEngine): {
    assert std.isString(AnalyticsEngine) : 'AnalyticsEngine must be a string',
    assert AnalyticsEngine == 'CLEAN_ROOMS_SQL' || AnalyticsEngine == 'SPARK' : "AnalyticsEngine should be 'CLEAN_ROOMS_SQL' or 'SPARK'",
    Properties+::: {
      AnalyticsEngine: AnalyticsEngine,
    },
  },
  withCreatorPaymentConfiguration(CreatorPaymentConfiguration): {
    assert std.isObject(CreatorPaymentConfiguration) : 'CreatorPaymentConfiguration must be a object',
    Properties+::: {
      CreatorPaymentConfiguration: CreatorPaymentConfiguration,
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
