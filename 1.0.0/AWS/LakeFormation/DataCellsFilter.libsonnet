{
  new(
    TableCatalogId,
    DatabaseName,
    TableName,
    Name,
  ): {
    local base = self,
    Properties: {
      assert std.isString(TableCatalogId) : 'TableCatalogId must be a string',
      TableCatalogId: TableCatalogId,
      assert std.isString(DatabaseName) : 'DatabaseName must be a string',
      DatabaseName: DatabaseName,
      assert std.isString(TableName) : 'TableName must be a string',
      TableName: TableName,
      assert std.isString(Name) : 'Name must be a string',
      Name: Name,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::LakeFormation::DataCellsFilter',
  },
  withRowFilter(RowFilter): {
    assert std.isObject(RowFilter) : 'RowFilter must be a object',
    Properties+::: {
      RowFilter: RowFilter,
    },
  },
  withColumnNames(ColumnNames): {
    Properties+::: {
      ColumnNames: (if std.isArray(ColumnNames) then ColumnNames else [ColumnNames]),
    },
  },
  withColumnNamesMixin(ColumnNames): {
    Properties+::: {
      ColumnNames+: (if std.isArray(ColumnNames) then ColumnNames else [ColumnNames]),
    },
  },
  withColumnWildcard(ColumnWildcard): {
    assert std.isObject(ColumnWildcard) : 'ColumnWildcard must be a object',
    Properties+::: {
      ColumnWildcard: ColumnWildcard,
    },
  },
  withDependsOn(DependsOn): {
    Properties+::: {
      DependsOn: (if std.isArray(DependsOn) then DependsOn else [DependsOn]),
    },
  },
  withDependsOnMixin(DependsOn): {
    Properties+::: {
      DependsOn+: (if std.isArray(DependsOn) then DependsOn else [DependsOn]),
    },
  },
  withCreationPolicy(CreationPolicy): {
    Properties+::: {
      CreationPolicy: (if std.isArray(CreationPolicy) then CreationPolicy else [CreationPolicy]),
    },
  },
  withCreationPolicyMixin(CreationPolicy): {
    Properties+::: {
      CreationPolicy+: (if std.isArray(CreationPolicy) then CreationPolicy else [CreationPolicy]),
    },
  },
  withDeletionPolicy(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy: (if std.isArray(DeletionPolicy) then DeletionPolicy else [DeletionPolicy]),
    },
  },
  withDeletionPolicyMixin(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy+: (if std.isArray(DeletionPolicy) then DeletionPolicy else [DeletionPolicy]),
    },
  },
  withUpdatePolicy(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy: (if std.isArray(UpdatePolicy) then UpdatePolicy else [UpdatePolicy]),
    },
  },
  withUpdatePolicyMixin(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy+: (if std.isArray(UpdatePolicy) then UpdatePolicy else [UpdatePolicy]),
    },
  },
  withUpdateReplacePolicy(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy: (if std.isArray(UpdateReplacePolicy) then UpdateReplacePolicy else [UpdateReplacePolicy]),
    },
  },
  withUpdateReplacePolicyMixin(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy+: (if std.isArray(UpdateReplacePolicy) then UpdateReplacePolicy else [UpdateReplacePolicy]),
    },
  },
  withMetadata(Metadata): {
    Properties+::: {
      Metadata: (if std.isArray(Metadata) then Metadata else [Metadata]),
    },
  },
  withMetadataMixin(Metadata): {
    Properties+::: {
      Metadata+: (if std.isArray(Metadata) then Metadata else [Metadata]),
    },
  },
}
