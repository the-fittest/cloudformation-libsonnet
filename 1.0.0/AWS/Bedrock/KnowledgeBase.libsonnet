{
  new(
    KnowledgeBaseConfiguration,
    Name,
    RoleArn,
    StorageConfiguration,
  ): {
    local base = self,
    Properties: {
      assert std.isObject(KnowledgeBaseConfiguration) : 'KnowledgeBaseConfiguration must be an object',
      KnowledgeBaseConfiguration: KnowledgeBaseConfiguration,
      assert std.isString(Name) : 'Name must be a string',
      Name: Name,
      assert std.isString(RoleArn) : 'RoleArn must be a string',
      RoleArn: RoleArn,
      assert std.isObject(StorageConfiguration) : 'StorageConfiguration must be an object',
      StorageConfiguration: StorageConfiguration,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Bedrock::KnowledgeBase',
  },
  withDescription(Description): {
    assert std.isString(Description) : 'Description must be a string',
    Properties+::: {
      Description: Description,
    },
  },
  withKnowledgeBaseId(KnowledgeBaseId): {
    assert std.isString(KnowledgeBaseId) : 'KnowledgeBaseId must be a string',
    Properties+::: {
      KnowledgeBaseId: KnowledgeBaseId,
    },
  },
  withKnowledgeBaseArn(KnowledgeBaseArn): {
    assert std.isString(KnowledgeBaseArn) : 'KnowledgeBaseArn must be a string',
    Properties+::: {
      KnowledgeBaseArn: KnowledgeBaseArn,
    },
  },
  withStatus(Status): {
    assert std.isString(Status) : 'Status must be a string',
    Properties+::: {
      Status: Status,
    },
  },
  withCreatedAt(CreatedAt): {
    assert std.isString(CreatedAt) : 'CreatedAt must be a string',
    Properties+::: {
      CreatedAt: CreatedAt,
    },
  },
  withFailureReasons(FailureReasons): {
    Properties+::: {
      FailureReasons: (if std.isArray(FailureReasons) then FailureReasons else [FailureReasons]),
    },
  },
  withFailureReasonsMixin(FailureReasons): {
    Properties+::: {
      FailureReasons+: (if std.isArray(FailureReasons) then FailureReasons else [FailureReasons]),
    },
  },
  withUpdatedAt(UpdatedAt): {
    assert std.isString(UpdatedAt) : 'UpdatedAt must be a string',
    Properties+::: {
      UpdatedAt: UpdatedAt,
    },
  },
  withTags(Tags): {
    assert std.isObject(Tags) : 'Tags must be a object',
    Properties+::: {
      Tags: Tags,
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
