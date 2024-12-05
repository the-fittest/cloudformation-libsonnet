{
  new(
    Name,
    Reference,
  ): {
    local base = self,
    Properties: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else Name,
      Reference:
        if !std.isObject(Reference) then (error 'Reference must be an object')
        else if !std.objectHas(Reference, 'ReferenceArn') then (error ' have attribute ReferenceArn')
        else Reference,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Omics::VariantStore',
  },
  setCreationTime(CreationTime): {
    Properties+::: {
      CreationTime:
        if !std.isString(CreationTime) then (error 'CreationTime must be a string')
        else if std.isEmpty(CreationTime) then (error 'CreationTime must be not empty')
        else CreationTime,
    },
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else if std.length(Description) > 500 then error ('Description should have not more than 500 characters')
        else Description,
    },
  },
  setId(Id): {
    Properties+::: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else Id,
    },
  },
  setSseConfig(SseConfig): {
    Properties+::: {
      SseConfig:
        if !std.isObject(SseConfig) then (error 'SseConfig must be an object')
        else if !std.objectHas(SseConfig, 'Type') then (error ' have attribute Type')
        else SseConfig,
    },
  },
  setStatus(Status): {
    Properties+::: {
      Status:
        if !std.isString(Status) then (error 'Status must be a string')
        else if std.isEmpty(Status) then (error 'Status must be not empty')
        else if Status != 'CREATING' && Status != 'UPDATING' && Status != 'DELETING' && Status != 'ACTIVE' && Status != 'FAILED' then (error "Status should be 'CREATING' or 'UPDATING' or 'DELETING' or 'ACTIVE' or 'FAILED'")
        else Status,
    },
  },
  setStatusMessage(StatusMessage): {
    Properties+::: {
      StatusMessage:
        if !std.isString(StatusMessage) then (error 'StatusMessage must be a string')
        else if std.isEmpty(StatusMessage) then (error 'StatusMessage must be not empty')
        else if std.length(StatusMessage) > 1000 then error ('StatusMessage should have not more than 1000 characters')
        else StatusMessage,
    },
  },
  setStoreArn(StoreArn): {
    Properties+::: {
      StoreArn:
        if !std.isString(StoreArn) then (error 'StoreArn must be a string')
        else if std.isEmpty(StoreArn) then (error 'StoreArn must be not empty')
        else if std.length(StoreArn) < 20 then error ('StoreArn should have at least 20 characters')
        else if std.length(StoreArn) > 2048 then error ('StoreArn should have not more than 2048 characters')
        else StoreArn,
    },
  },
  setStoreSizeBytes(StoreSizeBytes): {
    Properties+::: {
      StoreSizeBytes:
        if !std.isNumber(StoreSizeBytes) then (error 'StoreSizeBytes must be an number')
        else StoreSizeBytes,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isObject(Tags) then (error 'Tags must be an object')
        else Tags,
    },
  },
  setUpdateTime(UpdateTime): {
    Properties+::: {
      UpdateTime:
        if !std.isString(UpdateTime) then (error 'UpdateTime must be a string')
        else if std.isEmpty(UpdateTime) then (error 'UpdateTime must be not empty')
        else UpdateTime,
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
