{
  new(
    FileSystemId,
    FileSystemPath,
    DataRepositoryPath,
  ): {
    local base = self,
    Properties: {
      FileSystemId:
        if !std.isString(FileSystemId) then (error 'FileSystemId must be a string')
        else if std.isEmpty(FileSystemId) then (error 'FileSystemId must be not empty')
        else FileSystemId,
      FileSystemPath:
        if !std.isString(FileSystemPath) then (error 'FileSystemPath must be a string')
        else if std.isEmpty(FileSystemPath) then (error 'FileSystemPath must be not empty')
        else FileSystemPath,
      DataRepositoryPath:
        if !std.isString(DataRepositoryPath) then (error 'DataRepositoryPath must be a string')
        else if std.isEmpty(DataRepositoryPath) then (error 'DataRepositoryPath must be not empty')
        else DataRepositoryPath,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::FSx::DataRepositoryAssociation',
  },
  setAssociationId(AssociationId): {
    Properties+::: {
      AssociationId:
        if !std.isString(AssociationId) then (error 'AssociationId must be a string')
        else if std.isEmpty(AssociationId) then (error 'AssociationId must be not empty')
        else AssociationId,
    },
  },
  setResourceARN(ResourceARN): {
    Properties+::: {
      ResourceARN:
        if !std.isString(ResourceARN) then (error 'ResourceARN must be a string')
        else if std.isEmpty(ResourceARN) then (error 'ResourceARN must be not empty')
        else ResourceARN,
    },
  },
  setBatchImportMetaDataOnCreate(BatchImportMetaDataOnCreate): {
    Properties+::: {
      BatchImportMetaDataOnCreate:
        if !std.isBoolean(BatchImportMetaDataOnCreate) then (error 'BatchImportMetaDataOnCreate must be a boolean') else BatchImportMetaDataOnCreate,
    },
  },
  setImportedFileChunkSize(ImportedFileChunkSize): {
    Properties+::: {
      ImportedFileChunkSize:
        if !std.isNumber(ImportedFileChunkSize) then (error 'ImportedFileChunkSize must be an number')
        else ImportedFileChunkSize,
    },
  },
  setS3(S3): {
    Properties+::: {
      S3:
        if !std.isObject(S3) then (error 'S3 must be an object')
        else S3,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else Tags,
    },
  },
  pushTags(Tags): {
    Properties+::: {
      Tags+: Tags,
    },
  },
  setDependsOn(DependsOn): {
    Properties+::: {
      DependsOn: DependsOn,
    },
  },
  pushDependsOn(DependsOn): {
    Properties+::: {
      DependsOn+: DependsOn,
    },
  },
  setCreationPolicy(CreationPolicy): {
    Properties+::: {
      CreationPolicy: CreationPolicy,
    },
  },
  pushCreationPolicy(CreationPolicy): {
    Properties+::: {
      CreationPolicy+: CreationPolicy,
    },
  },
  setDeletionPolicy(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy: DeletionPolicy,
    },
  },
  pushDeletionPolicy(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy+: DeletionPolicy,
    },
  },
  setUpdatePolicy(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy: UpdatePolicy,
    },
  },
  pushUpdatePolicy(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy+: UpdatePolicy,
    },
  },
  setUpdateReplacePolicy(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy: UpdateReplacePolicy,
    },
  },
  pushUpdateReplacePolicy(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy+: UpdateReplacePolicy,
    },
  },
  setMetadata(Metadata): {
    Properties+::: {
      Metadata: Metadata,
    },
  },
  pushMetadata(Metadata): {
    Properties+::: {
      Metadata+: Metadata,
    },
  },
}
