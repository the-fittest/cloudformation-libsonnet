{
  new(
    Engine,
  ): {
    local base = self,
    Properties: {
      Engine:
        if !std.isString(Engine) then (error 'Engine must be a string')
        else if std.isEmpty(Engine) then (error 'Engine must be not empty')
        else if Engine != 'postgres' && Engine != 'mysql' && Engine != 'oracle' && Engine != 'sqlserver' && Engine != 'aurora' && Engine != 'aurora_postgresql' then (error "Engine should be 'postgres' or 'mysql' or 'oracle' or 'sqlserver' or 'aurora' or 'aurora_postgresql'")
        else Engine,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::DMS::DataProvider',
  },
  setDataProviderName(DataProviderName): {
    Properties+::: {
      DataProviderName:
        if !std.isString(DataProviderName) then (error 'DataProviderName must be a string')
        else if std.isEmpty(DataProviderName) then (error 'DataProviderName must be not empty')
        else if std.length(DataProviderName) < 1 then error ('DataProviderName should have at least 1 characters')
        else if std.length(DataProviderName) > 255 then error ('DataProviderName should have not more than 255 characters')
        else DataProviderName,
    },
  },
  setDataProviderIdentifier(DataProviderIdentifier): {
    Properties+::: {
      DataProviderIdentifier:
        if !std.isString(DataProviderIdentifier) then (error 'DataProviderIdentifier must be a string')
        else if std.isEmpty(DataProviderIdentifier) then (error 'DataProviderIdentifier must be not empty')
        else if std.length(DataProviderIdentifier) < 1 then error ('DataProviderIdentifier should have at least 1 characters')
        else if std.length(DataProviderIdentifier) > 255 then error ('DataProviderIdentifier should have not more than 255 characters')
        else DataProviderIdentifier,
    },
  },
  setDataProviderArn(DataProviderArn): {
    Properties+::: {
      DataProviderArn:
        if !std.isString(DataProviderArn) then (error 'DataProviderArn must be a string')
        else if std.isEmpty(DataProviderArn) then (error 'DataProviderArn must be not empty')
        else if std.length(DataProviderArn) < 1 then error ('DataProviderArn should have at least 1 characters')
        else if std.length(DataProviderArn) > 255 then error ('DataProviderArn should have not more than 255 characters')
        else DataProviderArn,
    },
  },
  setDataProviderCreationTime(DataProviderCreationTime): {
    Properties+::: {
      DataProviderCreationTime:
        if !std.isString(DataProviderCreationTime) then (error 'DataProviderCreationTime must be a string')
        else if std.isEmpty(DataProviderCreationTime) then (error 'DataProviderCreationTime must be not empty')
        else if std.length(DataProviderCreationTime) < 1 then error ('DataProviderCreationTime should have at least 1 characters')
        else if std.length(DataProviderCreationTime) > 40 then error ('DataProviderCreationTime should have not more than 40 characters')
        else DataProviderCreationTime,
    },
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else if std.length(Description) < 1 then error ('Description should have at least 1 characters')
        else if std.length(Description) > 255 then error ('Description should have not more than 255 characters')
        else Description,
    },
  },
  setExactSettings(ExactSettings): {
    Properties+::: {
      ExactSettings:
        if !std.isBoolean(ExactSettings) then (error 'ExactSettings must be a boolean') else ExactSettings,
    },
  },
  setSettings(Settings): {
    Properties+::: {
      Settings:
        if !std.isObject(Settings) then (error 'Settings must be an object')
        else Settings,
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
