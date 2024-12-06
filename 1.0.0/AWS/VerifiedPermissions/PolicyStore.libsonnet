{
  new(
    ValidationSettings,
  ): {
    local base = self,
    Properties: {
      ValidationSettings:
        if !std.isObject(ValidationSettings) then (error 'ValidationSettings must be an object')
        else if !std.objectHas(ValidationSettings, 'Mode') then (error ' have attribute Mode')
        else ValidationSettings,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::VerifiedPermissions::PolicyStore',
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else if std.length(Arn) < 1 then error ('Arn should have at least 1 characters')
        else if std.length(Arn) > 2500 then error ('Arn should have not more than 2500 characters')
        else Arn,
    },
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else if std.length(Description) > 150 then error ('Description should have not more than 150 characters')
        else Description,
    },
  },
  setPolicyStoreId(PolicyStoreId): {
    Properties+::: {
      PolicyStoreId:
        if !std.isString(PolicyStoreId) then (error 'PolicyStoreId must be a string')
        else if std.isEmpty(PolicyStoreId) then (error 'PolicyStoreId must be not empty')
        else if std.length(PolicyStoreId) < 1 then error ('PolicyStoreId should have at least 1 characters')
        else if std.length(PolicyStoreId) > 200 then error ('PolicyStoreId should have not more than 200 characters')
        else PolicyStoreId,
    },
  },
  setSchema(Schema): {
    Properties+::: {
      Schema:
        if !std.isObject(Schema) then (error 'Schema must be an object')
        else Schema,
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
