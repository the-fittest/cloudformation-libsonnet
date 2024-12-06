{
  new(
    TableInput,
    DatabaseName,
    CatalogId,
  ): {
    local base = self,
    Properties: {
      TableInput:
        if !std.isObject(TableInput) then (error 'TableInput must be an object')
        else TableInput,
      DatabaseName:
        if !std.isString(DatabaseName) then (error 'DatabaseName must be a string')
        else if std.isEmpty(DatabaseName) then (error 'DatabaseName must be not empty')
        else DatabaseName,
      CatalogId:
        if !std.isString(CatalogId) then (error 'CatalogId must be a string')
        else if std.isEmpty(CatalogId) then (error 'CatalogId must be not empty')
        else CatalogId,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Glue::Table',
  },
  setOpenTableFormatInput(OpenTableFormatInput): {
    Properties+::: {
      OpenTableFormatInput:
        if !std.isObject(OpenTableFormatInput) then (error 'OpenTableFormatInput must be an object')
        else OpenTableFormatInput,
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
