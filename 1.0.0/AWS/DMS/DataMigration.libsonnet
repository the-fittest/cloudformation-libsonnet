{
  new(
    DataMigrationType,
    MigrationProjectIdentifier,
    ServiceAccessRoleArn,
  ): {
    local base = self,
    Properties: {
      DataMigrationType:
        if !std.isString(DataMigrationType) then (error 'DataMigrationType must be a string')
        else if std.isEmpty(DataMigrationType) then (error 'DataMigrationType must be not empty')
        else if DataMigrationType != 'full-load' && DataMigrationType != 'cdc' && DataMigrationType != 'full-load-and-cdc' then (error "DataMigrationType should be 'full-load' or 'cdc' or 'full-load-and-cdc'")
        else DataMigrationType,
      MigrationProjectIdentifier:
        if !std.isString(MigrationProjectIdentifier) then (error 'MigrationProjectIdentifier must be a string')
        else if std.isEmpty(MigrationProjectIdentifier) then (error 'MigrationProjectIdentifier must be not empty')
        else if std.length(MigrationProjectIdentifier) < 1 then error ('MigrationProjectIdentifier should have at least 1 characters')
        else if std.length(MigrationProjectIdentifier) > 255 then error ('MigrationProjectIdentifier should have not more than 255 characters')
        else MigrationProjectIdentifier,
      ServiceAccessRoleArn:
        if !std.isString(ServiceAccessRoleArn) then (error 'ServiceAccessRoleArn must be a string')
        else if std.isEmpty(ServiceAccessRoleArn) then (error 'ServiceAccessRoleArn must be not empty')
        else if std.length(ServiceAccessRoleArn) < 1 then error ('ServiceAccessRoleArn should have at least 1 characters')
        else if std.length(ServiceAccessRoleArn) > 300 then error ('ServiceAccessRoleArn should have not more than 300 characters')
        else ServiceAccessRoleArn,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::DMS::DataMigration',
  },
  setDataMigrationName(DataMigrationName): {
    Properties+::: {
      DataMigrationName:
        if !std.isString(DataMigrationName) then (error 'DataMigrationName must be a string')
        else if std.isEmpty(DataMigrationName) then (error 'DataMigrationName must be not empty')
        else if std.length(DataMigrationName) < 1 then error ('DataMigrationName should have at least 1 characters')
        else if std.length(DataMigrationName) > 300 then error ('DataMigrationName should have not more than 300 characters')
        else DataMigrationName,
    },
  },
  setDataMigrationArn(DataMigrationArn): {
    Properties+::: {
      DataMigrationArn:
        if !std.isString(DataMigrationArn) then (error 'DataMigrationArn must be a string')
        else if std.isEmpty(DataMigrationArn) then (error 'DataMigrationArn must be not empty')
        else if std.length(DataMigrationArn) < 1 then error ('DataMigrationArn should have at least 1 characters')
        else if std.length(DataMigrationArn) > 300 then error ('DataMigrationArn should have not more than 300 characters')
        else DataMigrationArn,
    },
  },
  setDataMigrationIdentifier(DataMigrationIdentifier): {
    Properties+::: {
      DataMigrationIdentifier:
        if !std.isString(DataMigrationIdentifier) then (error 'DataMigrationIdentifier must be a string')
        else if std.isEmpty(DataMigrationIdentifier) then (error 'DataMigrationIdentifier must be not empty')
        else if std.length(DataMigrationIdentifier) < 1 then error ('DataMigrationIdentifier should have at least 1 characters')
        else if std.length(DataMigrationIdentifier) > 300 then error ('DataMigrationIdentifier should have not more than 300 characters')
        else DataMigrationIdentifier,
    },
  },
  setDataMigrationCreateTime(DataMigrationCreateTime): {
    Properties+::: {
      DataMigrationCreateTime:
        if !std.isString(DataMigrationCreateTime) then (error 'DataMigrationCreateTime must be a string')
        else if std.isEmpty(DataMigrationCreateTime) then (error 'DataMigrationCreateTime must be not empty')
        else if std.length(DataMigrationCreateTime) < 1 then error ('DataMigrationCreateTime should have at least 1 characters')
        else if std.length(DataMigrationCreateTime) > 40 then error ('DataMigrationCreateTime should have not more than 40 characters')
        else DataMigrationCreateTime,
    },
  },
  setDataMigrationSettings(DataMigrationSettings): {
    Properties+::: {
      DataMigrationSettings:
        if !std.isObject(DataMigrationSettings) then (error 'DataMigrationSettings must be an object')
        else DataMigrationSettings,
    },
  },
  setSourceDataSettings(SourceDataSettings): {
    Properties+::: {
      SourceDataSettings:
        if !std.isArray(SourceDataSettings) then (error 'SourceDataSettings must be an array')
        else SourceDataSettings,
    },
  },
  setSourceDataSettingsMixin(SourceDataSettings): {
    Properties+::: {
      SourceDataSettings+: SourceDataSettings,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else Tags,
    },
  },
  setTagsMixin(Tags): {
    Properties+::: {
      Tags+: Tags,
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
