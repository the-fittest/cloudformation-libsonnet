{
  // AWS FSx DataRepositoryAssociation
  DataRepositoryAssociation: {
    new(
      FileSystemId,
      FileSystemPath,
      DataRepositoryPath,
    ): {
      local base = self,
      Properties: {
        assert std.isString(FileSystemId) : 'FileSystemId must be a string',
        FileSystemId: FileSystemId,
        assert std.isString(FileSystemPath) : 'FileSystemPath must be a string',
        FileSystemPath: FileSystemPath,
        assert std.isString(DataRepositoryPath) : 'DataRepositoryPath must be a string',
        DataRepositoryPath: DataRepositoryPath,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::FSx::DataRepositoryAssociation',
    },
    withAssociationId(AssociationId): {
      assert std.isString(AssociationId) : 'AssociationId must be a string',
      Properties+::: {
        AssociationId: AssociationId,
      },
    },
    withResourceARN(ResourceARN): {
      assert std.isString(ResourceARN) : 'ResourceARN must be a string',
      Properties+::: {
        ResourceARN: ResourceARN,
      },
    },
    withBatchImportMetaDataOnCreate(BatchImportMetaDataOnCreate): {
      assert std.isBoolean(BatchImportMetaDataOnCreate) : 'BatchImportMetaDataOnCreate must be a boolean',
      Properties+::: {
        BatchImportMetaDataOnCreate: BatchImportMetaDataOnCreate,
      },
    },
    withImportedFileChunkSize(ImportedFileChunkSize): {
      assert std.isNumber(ImportedFileChunkSize) : 'ImportedFileChunkSize must be a number',
      Properties+::: {
        ImportedFileChunkSize: ImportedFileChunkSize,
      },
    },
    withS3(S3): {
      assert std.isObject(S3) : 'S3 must be a object',
      Properties+::: {
        S3: S3,
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
  },
}
