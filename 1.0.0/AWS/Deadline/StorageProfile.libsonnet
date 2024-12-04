{
  new(
    DisplayName,
    FarmId,
    OsFamily,
  ): {
    local base = self,
    Properties: {
      assert std.isString(DisplayName) : 'DisplayName must be a string',
      DisplayName: DisplayName,
      assert std.isString(FarmId) : 'FarmId must be a string',
      FarmId: FarmId,
      assert std.isString(OsFamily) : 'OsFamily must be a string',
      assert OsFamily == 'WINDOWS' || OsFamily == 'LINUX' || OsFamily == 'MACOS' : "OsFamily should be 'WINDOWS' or 'LINUX' or 'MACOS'",
      OsFamily: OsFamily,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Deadline::StorageProfile',
  },
  withFileSystemLocations(FileSystemLocations): {
    Properties+::: {
      FileSystemLocations: (if std.isArray(FileSystemLocations) then FileSystemLocations else [FileSystemLocations]),
    },
  },
  withFileSystemLocationsMixin(FileSystemLocations): {
    Properties+::: {
      FileSystemLocations+: (if std.isArray(FileSystemLocations) then FileSystemLocations else [FileSystemLocations]),
    },
  },
  withStorageProfileId(StorageProfileId): {
    assert std.isString(StorageProfileId) : 'StorageProfileId must be a string',
    Properties+::: {
      StorageProfileId: StorageProfileId,
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
