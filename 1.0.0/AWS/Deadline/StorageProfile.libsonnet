{
  new(
    DisplayName,
    FarmId,
    OsFamily,
  ): {
    local base = self,
    Properties: {
      DisplayName:
        if !std.isString(DisplayName) then (error 'DisplayName must be a string')
        else if std.isEmpty(DisplayName) then (error 'DisplayName must be not empty')
        else if std.length(DisplayName) < 1 then error ('DisplayName should have at least 1 characters')
        else if std.length(DisplayName) > 100 then error ('DisplayName should have not more than 100 characters')
        else DisplayName,
      FarmId:
        if !std.isString(FarmId) then (error 'FarmId must be a string')
        else if std.isEmpty(FarmId) then (error 'FarmId must be not empty')
        else FarmId,
      OsFamily:
        if !std.isString(OsFamily) then (error 'OsFamily must be a string')
        else if std.isEmpty(OsFamily) then (error 'OsFamily must be not empty')
        else if OsFamily != 'WINDOWS' && OsFamily != 'LINUX' && OsFamily != 'MACOS' then (error "OsFamily should be 'WINDOWS' or 'LINUX' or 'MACOS'")
        else OsFamily,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Deadline::StorageProfile',
  },
  setFileSystemLocations(FileSystemLocations): {
    Properties+::: {
      FileSystemLocations:
        if !std.isArray(FileSystemLocations) then (error 'FileSystemLocations must be an array')
        else if std.length(FileSystemLocations) > 20 then error ('FileSystemLocations cannot have more than 20 items')
        else FileSystemLocations,
    },
  },
  setFileSystemLocationsMixin(FileSystemLocations): {
    Properties+::: {
      FileSystemLocations+: FileSystemLocations,
    },
  },
  setStorageProfileId(StorageProfileId): {
    Properties+::: {
      StorageProfileId:
        if !std.isString(StorageProfileId) then (error 'StorageProfileId must be a string')
        else if std.isEmpty(StorageProfileId) then (error 'StorageProfileId must be not empty')
        else StorageProfileId,
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
