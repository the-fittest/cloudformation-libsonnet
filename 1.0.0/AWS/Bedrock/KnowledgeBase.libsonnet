{
  new(
    KnowledgeBaseConfiguration,
    Name,
    RoleArn,
    StorageConfiguration,
  ): {
    local base = self,
    Properties: {
      KnowledgeBaseConfiguration:
        if !std.isObject(KnowledgeBaseConfiguration) then (error 'KnowledgeBaseConfiguration must be an object')
        else if !std.objectHas(KnowledgeBaseConfiguration, 'Type') then (error ' have attribute Type')
        else if !std.objectHas(KnowledgeBaseConfiguration, 'VectorKnowledgeBaseConfiguration') then (error ' have attribute VectorKnowledgeBaseConfiguration')
        else KnowledgeBaseConfiguration,
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else Name,
      RoleArn:
        if !std.isString(RoleArn) then (error 'RoleArn must be a string')
        else if std.isEmpty(RoleArn) then (error 'RoleArn must be not empty')
        else if std.length(RoleArn) > 2048 then error ('RoleArn should have not more than 2048 characters')
        else RoleArn,
      StorageConfiguration:
        if !std.isObject(StorageConfiguration) then (error 'StorageConfiguration must be an object')
        else if !std.objectHas(StorageConfiguration, 'Type') then (error ' have attribute Type')
        else StorageConfiguration,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Bedrock::KnowledgeBase',
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
  setKnowledgeBaseId(KnowledgeBaseId): {
    Properties+::: {
      KnowledgeBaseId:
        if !std.isString(KnowledgeBaseId) then (error 'KnowledgeBaseId must be a string')
        else if std.isEmpty(KnowledgeBaseId) then (error 'KnowledgeBaseId must be not empty')
        else KnowledgeBaseId,
    },
  },
  setKnowledgeBaseArn(KnowledgeBaseArn): {
    Properties+::: {
      KnowledgeBaseArn:
        if !std.isString(KnowledgeBaseArn) then (error 'KnowledgeBaseArn must be a string')
        else if std.isEmpty(KnowledgeBaseArn) then (error 'KnowledgeBaseArn must be not empty')
        else if std.length(KnowledgeBaseArn) > 128 then error ('KnowledgeBaseArn should have not more than 128 characters')
        else KnowledgeBaseArn,
    },
  },
  setStatus(Status): {
    Properties+::: {
      Status:
        if !std.isString(Status) then (error 'Status must be a string')
        else if std.isEmpty(Status) then (error 'Status must be not empty')
        else if Status != 'CREATING' && Status != 'ACTIVE' && Status != 'DELETING' && Status != 'UPDATING' && Status != 'FAILED' && Status != 'DELETE_UNSUCCESSFUL' then (error "Status should be 'CREATING' or 'ACTIVE' or 'DELETING' or 'UPDATING' or 'FAILED' or 'DELETE_UNSUCCESSFUL'")
        else Status,
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
  setUpdatedAt(UpdatedAt): {
    Properties+::: {
      UpdatedAt:
        if !std.isString(UpdatedAt) then (error 'UpdatedAt must be a string')
        else if std.isEmpty(UpdatedAt) then (error 'UpdatedAt must be not empty')
        else UpdatedAt,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isObject(Tags) then (error 'Tags must be an object')
        else Tags,
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
