{
  new(
    InferenceProfileName,
  ): {
    local base = self,
    Properties: {
      InferenceProfileName:
        if !std.isString(InferenceProfileName) then (error 'InferenceProfileName must be a string')
        else if std.isEmpty(InferenceProfileName) then (error 'InferenceProfileName must be not empty')
        else if std.length(InferenceProfileName) < 1 then error ('InferenceProfileName should have at least 1 characters')
        else if std.length(InferenceProfileName) > 64 then error ('InferenceProfileName should have not more than 64 characters')
        else InferenceProfileName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Bedrock::ApplicationInferenceProfile',
  },
  setCreatedAt(CreatedAt): {
    Properties+::: {
      CreatedAt:
        if !std.isString(CreatedAt) then (error 'CreatedAt must be a string')
        else if std.isEmpty(CreatedAt) then (error 'CreatedAt must be not empty')
        else CreatedAt,
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
  setInferenceProfileArn(InferenceProfileArn): {
    Properties+::: {
      InferenceProfileArn:
        if !std.isString(InferenceProfileArn) then (error 'InferenceProfileArn must be a string')
        else if std.isEmpty(InferenceProfileArn) then (error 'InferenceProfileArn must be not empty')
        else if std.length(InferenceProfileArn) < 1 then error ('InferenceProfileArn should have at least 1 characters')
        else if std.length(InferenceProfileArn) > 2048 then error ('InferenceProfileArn should have not more than 2048 characters')
        else InferenceProfileArn,
    },
  },
  setInferenceProfileId(InferenceProfileId): {
    Properties+::: {
      InferenceProfileId:
        if !std.isString(InferenceProfileId) then (error 'InferenceProfileId must be a string')
        else if std.isEmpty(InferenceProfileId) then (error 'InferenceProfileId must be not empty')
        else if std.length(InferenceProfileId) < 1 then error ('InferenceProfileId should have at least 1 characters')
        else if std.length(InferenceProfileId) > 64 then error ('InferenceProfileId should have not more than 64 characters')
        else InferenceProfileId,
    },
  },
  setInferenceProfileIdentifier(InferenceProfileIdentifier): {
    Properties+::: {
      InferenceProfileIdentifier:
        if !std.isString(InferenceProfileIdentifier) then (error 'InferenceProfileIdentifier must be a string')
        else if std.isEmpty(InferenceProfileIdentifier) then (error 'InferenceProfileIdentifier must be not empty')
        else if std.length(InferenceProfileIdentifier) < 1 then error ('InferenceProfileIdentifier should have at least 1 characters')
        else if std.length(InferenceProfileIdentifier) > 2048 then error ('InferenceProfileIdentifier should have not more than 2048 characters')
        else InferenceProfileIdentifier,
    },
  },
  setModelSource(ModelSource): {
    Properties+::: {
      ModelSource: ModelSource,
    },
  },
  setModels(Models): {
    Properties+::: {
      Models:
        if !std.isArray(Models) then (error 'Models must be an array')
        else if std.length(Models) < 1 then error ('Models cannot have less than 1 items')
        else if std.length(Models) > 5 then error ('Models cannot have more than 5 items')
        else Models,
    },
  },
  pushModels(Models): {
    Properties+::: {
      Models+: Models,
    },
  },
  setStatus(Status): {
    Properties+::: {
      Status:
        if !std.isString(Status) then (error 'Status must be a string')
        else if std.isEmpty(Status) then (error 'Status must be not empty')
        else if Status != 'ACTIVE' then (error "Status should be 'ACTIVE'")
        else Status,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else if std.length(Tags) > 200 then error ('Tags cannot have more than 200 items')
        else Tags,
    },
  },
  pushTags(Tags): {
    Properties+::: {
      Tags+: Tags,
    },
  },
  setType(Type): {
    Properties+::: {
      Type:
        if !std.isString(Type) then (error 'Type must be a string')
        else if std.isEmpty(Type) then (error 'Type must be not empty')
        else if Type != 'APPLICATION' && Type != 'SYSTEM_DEFINED' then (error "Type should be 'APPLICATION' or 'SYSTEM_DEFINED'")
        else Type,
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
