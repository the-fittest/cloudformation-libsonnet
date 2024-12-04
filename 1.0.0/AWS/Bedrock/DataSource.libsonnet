{
  new(
    DataSourceConfiguration,
    Name,
    KnowledgeBaseId,
  ): {
    local base = self,
    Properties: {
      assert std.isObject(DataSourceConfiguration) : 'DataSourceConfiguration must be an object',
      DataSourceConfiguration: DataSourceConfiguration,
      assert std.isString(Name) : 'Name must be a string',
      Name: Name,
      assert std.isString(KnowledgeBaseId) : 'KnowledgeBaseId must be a string',
      KnowledgeBaseId: KnowledgeBaseId,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Bedrock::DataSource',
  },
  withDataSourceId(DataSourceId): {
    assert std.isString(DataSourceId) : 'DataSourceId must be a string',
    Properties+::: {
      DataSourceId: DataSourceId,
    },
  },
  withDescription(Description): {
    assert std.isString(Description) : 'Description must be a string',
    Properties+::: {
      Description: Description,
    },
  },
  withDataSourceStatus(DataSourceStatus): {
    assert std.isString(DataSourceStatus) : 'DataSourceStatus must be a string',
    Properties+::: {
      DataSourceStatus: DataSourceStatus,
    },
  },
  withServerSideEncryptionConfiguration(ServerSideEncryptionConfiguration): {
    assert std.isObject(ServerSideEncryptionConfiguration) : 'ServerSideEncryptionConfiguration must be a object',
    Properties+::: {
      ServerSideEncryptionConfiguration: ServerSideEncryptionConfiguration,
    },
  },
  withVectorIngestionConfiguration(VectorIngestionConfiguration): {
    assert std.isObject(VectorIngestionConfiguration) : 'VectorIngestionConfiguration must be a object',
    Properties+::: {
      VectorIngestionConfiguration: VectorIngestionConfiguration,
    },
  },
  withDataDeletionPolicy(DataDeletionPolicy): {
    assert std.isString(DataDeletionPolicy) : 'DataDeletionPolicy must be a string',
    Properties+::: {
      DataDeletionPolicy: DataDeletionPolicy,
    },
  },
  withCreatedAt(CreatedAt): {
    assert std.isString(CreatedAt) : 'CreatedAt must be a string',
    Properties+::: {
      CreatedAt: CreatedAt,
    },
  },
  withUpdatedAt(UpdatedAt): {
    assert std.isString(UpdatedAt) : 'UpdatedAt must be a string',
    Properties+::: {
      UpdatedAt: UpdatedAt,
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
