{
  new(
    KeyName,
    Restrictions,
  ): {
    local base = self,
    Properties: {
      KeyName:
        if !std.isString(KeyName) then (error 'KeyName must be a string')
        else if std.isEmpty(KeyName) then (error 'KeyName must be not empty')
        else if std.length(KeyName) < 1 then error ('KeyName should have at least 1 characters')
        else if std.length(KeyName) > 100 then error ('KeyName should have not more than 100 characters')
        else KeyName,
      Restrictions:
        if !std.isObject(Restrictions) then (error 'Restrictions must be an object')
        else if !std.objectHas(Restrictions, 'AllowActions') then (error ' have attribute AllowActions')
        else if !std.objectHas(Restrictions, 'AllowResources') then (error ' have attribute AllowResources')
        else Restrictions,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Location::APIKey',
  },
  setCreateTime(CreateTime): {
    Properties+::: {
      CreateTime:
        if !std.isString(CreateTime) then (error 'CreateTime must be a string')
        else if std.isEmpty(CreateTime) then (error 'CreateTime must be not empty')
        else CreateTime,
    },
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else if std.length(Description) > 1000 then error ('Description should have not more than 1000 characters')
        else Description,
    },
  },
  setExpireTime(ExpireTime): {
    Properties+::: {
      ExpireTime:
        if !std.isString(ExpireTime) then (error 'ExpireTime must be a string')
        else if std.isEmpty(ExpireTime) then (error 'ExpireTime must be not empty')
        else ExpireTime,
    },
  },
  setForceUpdate(ForceUpdate): {
    Properties+::: {
      ForceUpdate:
        if !std.isBoolean(ForceUpdate) then (error 'ForceUpdate must be a boolean') else ForceUpdate,
    },
  },
  setKeyArn(KeyArn): {
    Properties+::: {
      KeyArn:
        if !std.isString(KeyArn) then (error 'KeyArn must be a string')
        else if std.isEmpty(KeyArn) then (error 'KeyArn must be not empty')
        else if std.length(KeyArn) > 1600 then error ('KeyArn should have not more than 1600 characters')
        else KeyArn,
    },
  },
  setNoExpiry(NoExpiry): {
    Properties+::: {
      NoExpiry:
        if !std.isBoolean(NoExpiry) then (error 'NoExpiry must be a boolean') else NoExpiry,
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
  setUpdateTime(UpdateTime): {
    Properties+::: {
      UpdateTime:
        if !std.isString(UpdateTime) then (error 'UpdateTime must be a string')
        else if std.isEmpty(UpdateTime) then (error 'UpdateTime must be not empty')
        else UpdateTime,
    },
  },
  setForceDelete(ForceDelete): {
    Properties+::: {
      ForceDelete:
        if !std.isBoolean(ForceDelete) then (error 'ForceDelete must be a boolean') else ForceDelete,
    },
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else if std.length(Arn) > 1600 then error ('Arn should have not more than 1600 characters')
        else Arn,
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
