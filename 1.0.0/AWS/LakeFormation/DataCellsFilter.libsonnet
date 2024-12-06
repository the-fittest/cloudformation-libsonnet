{
  new(
    TableCatalogId,
    DatabaseName,
    TableName,
    Name,
  ): {
    local base = self,
    Properties: {
      TableCatalogId:
        if !std.isString(TableCatalogId) then (error 'TableCatalogId must be a string')
        else if std.isEmpty(TableCatalogId) then (error 'TableCatalogId must be not empty')
        else if std.length(TableCatalogId) < 12 then error ('TableCatalogId should have at least 12 characters')
        else if std.length(TableCatalogId) > 12 then error ('TableCatalogId should have not more than 12 characters')
        else TableCatalogId,
      DatabaseName:
        if !std.isString(DatabaseName) then (error 'DatabaseName must be a string')
        else if std.isEmpty(DatabaseName) then (error 'DatabaseName must be not empty')
        else if std.length(DatabaseName) < 1 then error ('DatabaseName should have at least 1 characters')
        else if std.length(DatabaseName) > 255 then error ('DatabaseName should have not more than 255 characters')
        else DatabaseName,
      TableName:
        if !std.isString(TableName) then (error 'TableName must be a string')
        else if std.isEmpty(TableName) then (error 'TableName must be not empty')
        else if std.length(TableName) < 1 then error ('TableName should have at least 1 characters')
        else if std.length(TableName) > 255 then error ('TableName should have not more than 255 characters')
        else TableName,
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else if std.length(Name) < 1 then error ('Name should have at least 1 characters')
        else if std.length(Name) > 255 then error ('Name should have not more than 255 characters')
        else Name,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::LakeFormation::DataCellsFilter',
  },
  setRowFilter(RowFilter): {
    Properties+::: {
      RowFilter:
        if !std.isObject(RowFilter) then (error 'RowFilter must be an object')
        else RowFilter,
    },
  },
  setColumnNames(ColumnNames): {
    Properties+::: {
      ColumnNames:
        if !std.isArray(ColumnNames) then (error 'ColumnNames must be an array')
        else ColumnNames,
    },
  },
  pushColumnNames(ColumnNames): {
    Properties+::: {
      ColumnNames+: ColumnNames,
    },
  },
  setColumnWildcard(ColumnWildcard): {
    Properties+::: {
      ColumnWildcard:
        if !std.isObject(ColumnWildcard) then (error 'ColumnWildcard must be an object')
        else ColumnWildcard,
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
