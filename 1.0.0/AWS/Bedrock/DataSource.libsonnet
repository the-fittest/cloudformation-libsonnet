{
  new(
    DataSourceConfiguration,
    Name,
    KnowledgeBaseId,
  ): {
    local base = self,
    Properties: {
      DataSourceConfiguration:
        if !std.isObject(DataSourceConfiguration) then (error 'DataSourceConfiguration must be an object')
        else if !std.objectHas(DataSourceConfiguration, 'Type') then (error ' have attribute Type')
        else DataSourceConfiguration,
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else Name,
      KnowledgeBaseId:
        if !std.isString(KnowledgeBaseId) then (error 'KnowledgeBaseId must be a string')
        else if std.isEmpty(KnowledgeBaseId) then (error 'KnowledgeBaseId must be not empty')
        else KnowledgeBaseId,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Bedrock::DataSource',
  },
  setDataSourceId(DataSourceId): {
    Properties+::: {
      DataSourceId:
        if !std.isString(DataSourceId) then (error 'DataSourceId must be a string')
        else if std.isEmpty(DataSourceId) then (error 'DataSourceId must be not empty')
        else DataSourceId,
    },
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else if std.length(Description) < 1 then error ('Description should have at least 1 characters')
        else if std.length(Description) > 200 then error ('Description should have not more than 200 characters')
        else Description,
    },
  },
  setDataSourceStatus(DataSourceStatus): {
    Properties+::: {
      DataSourceStatus:
        if !std.isString(DataSourceStatus) then (error 'DataSourceStatus must be a string')
        else if std.isEmpty(DataSourceStatus) then (error 'DataSourceStatus must be not empty')
        else if DataSourceStatus != 'AVAILABLE' && DataSourceStatus != 'DELETING' && DataSourceStatus != 'DELETE_UNSUCCESSFUL' then (error "DataSourceStatus should be 'AVAILABLE' or 'DELETING' or 'DELETE_UNSUCCESSFUL'")
        else DataSourceStatus,
    },
  },
  setServerSideEncryptionConfiguration(ServerSideEncryptionConfiguration): {
    Properties+::: {
      ServerSideEncryptionConfiguration:
        if !std.isObject(ServerSideEncryptionConfiguration) then (error 'ServerSideEncryptionConfiguration must be an object')
        else ServerSideEncryptionConfiguration,
    },
  },
  setVectorIngestionConfiguration(VectorIngestionConfiguration): {
    Properties+::: {
      VectorIngestionConfiguration:
        if !std.isObject(VectorIngestionConfiguration) then (error 'VectorIngestionConfiguration must be an object')
        else VectorIngestionConfiguration,
    },
  },
  setDataDeletionPolicy(DataDeletionPolicy): {
    Properties+::: {
      DataDeletionPolicy:
        if !std.isString(DataDeletionPolicy) then (error 'DataDeletionPolicy must be a string')
        else if std.isEmpty(DataDeletionPolicy) then (error 'DataDeletionPolicy must be not empty')
        else if DataDeletionPolicy != 'RETAIN' && DataDeletionPolicy != 'DELETE' then (error "DataDeletionPolicy should be 'RETAIN' or 'DELETE'")
        else DataDeletionPolicy,
    },
  },
  setCreatedAt(CreatedAt): {
    Properties+::: {
      CreatedAt:
        if !std.isString(CreatedAt) then (error 'CreatedAt must be a string')
        else if std.isEmpty(CreatedAt) then (error 'CreatedAt must be not empty')
        else CreatedAt,
    },
  },
  setUpdatedAt(UpdatedAt): {
    Properties+::: {
      UpdatedAt:
        if !std.isString(UpdatedAt) then (error 'UpdatedAt must be a string')
        else if std.isEmpty(UpdatedAt) then (error 'UpdatedAt must be not empty')
        else UpdatedAt,
    },
  },
  setFailureReasons(FailureReasons): {
    Properties+::: {
      FailureReasons:
        if !std.isArray(FailureReasons) then (error 'FailureReasons must be an array')
        else if std.length(FailureReasons) > 2048 then error ('FailureReasons cannot have more than 2048 items')
        else FailureReasons,
    },
  },
  setFailureReasonsMixin(FailureReasons): {
    Properties+::: {
      FailureReasons+: FailureReasons,
    },
  },
  setDependsOn(DependsOn): {
    Properties+::: {
      DependsOn: DependsOn,
    },
  },
  setDependsOnMixin(DependsOn): {
    Properties+::: {
      DependsOn+: DependsOn,
    },
  },
  setCreationPolicy(CreationPolicy): {
    Properties+::: {
      CreationPolicy: CreationPolicy,
    },
  },
  setCreationPolicyMixin(CreationPolicy): {
    Properties+::: {
      CreationPolicy+: CreationPolicy,
    },
  },
  setDeletionPolicy(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy: DeletionPolicy,
    },
  },
  setDeletionPolicyMixin(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy+: DeletionPolicy,
    },
  },
  setUpdatePolicy(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy: UpdatePolicy,
    },
  },
  setUpdatePolicyMixin(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy+: UpdatePolicy,
    },
  },
  setUpdateReplacePolicy(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy: UpdateReplacePolicy,
    },
  },
  setUpdateReplacePolicyMixin(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy+: UpdateReplacePolicy,
    },
  },
  setMetadata(Metadata): {
    Properties+::: {
      Metadata: Metadata,
    },
  },
  setMetadataMixin(Metadata): {
    Properties+::: {
      Metadata+: Metadata,
    },
  },
}
