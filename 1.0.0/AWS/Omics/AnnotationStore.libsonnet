{
  new(
    Name,
    StoreFormat,
  ): {
    local base = self,
    Properties: {
      assert std.isString(Name) : 'Name must be a string',
      Name: Name,
      assert std.isString(StoreFormat) : 'StoreFormat must be a string',
      assert StoreFormat == 'GFF' || StoreFormat == 'TSV' || StoreFormat == 'VCF' : "StoreFormat should be 'GFF' or 'TSV' or 'VCF'",
      StoreFormat: StoreFormat,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Omics::AnnotationStore',
  },
  withCreationTime(CreationTime): {
    assert std.isString(CreationTime) : 'CreationTime must be a string',
    Properties+::: {
      CreationTime: CreationTime,
    },
  },
  withDescription(Description): {
    assert std.isString(Description) : 'Description must be a string',
    Properties+::: {
      Description: Description,
    },
  },
  withId(Id): {
    assert std.isString(Id) : 'Id must be a string',
    Properties+::: {
      Id: Id,
    },
  },
  withReference(Reference): {
    assert std.isObject(Reference) : 'Reference must be a object',
    Properties+::: {
      Reference: Reference,
    },
  },
  withSseConfig(SseConfig): {
    assert std.isObject(SseConfig) : 'SseConfig must be a object',
    Properties+::: {
      SseConfig: SseConfig,
    },
  },
  withStatus(Status): {
    assert std.isString(Status) : 'Status must be a string',
    assert Status == 'CREATING' || Status == 'UPDATING' || Status == 'DELETING' || Status == 'ACTIVE' || Status == 'FAILED' : "Status should be 'CREATING' or 'UPDATING' or 'DELETING' or 'ACTIVE' or 'FAILED'",
    Properties+::: {
      Status: Status,
    },
  },
  withStatusMessage(StatusMessage): {
    assert std.isString(StatusMessage) : 'StatusMessage must be a string',
    Properties+::: {
      StatusMessage: StatusMessage,
    },
  },
  withStoreArn(StoreArn): {
    assert std.isString(StoreArn) : 'StoreArn must be a string',
    Properties+::: {
      StoreArn: StoreArn,
    },
  },
  withStoreOptions(StoreOptions): {
    Properties+::: {
      StoreOptions: StoreOptions,
    },
  },
  withStoreSizeBytes(StoreSizeBytes): {
    assert std.isNumber(StoreSizeBytes) : 'StoreSizeBytes must be a number',
    Properties+::: {
      StoreSizeBytes: StoreSizeBytes,
    },
  },
  withTags(Tags): {
    assert std.isObject(Tags) : 'Tags must be a object',
    Properties+::: {
      Tags: Tags,
    },
  },
  withUpdateTime(UpdateTime): {
    assert std.isString(UpdateTime) : 'UpdateTime must be a string',
    Properties+::: {
      UpdateTime: UpdateTime,
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
