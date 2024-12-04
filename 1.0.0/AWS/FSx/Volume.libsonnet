{
  // AWS FSx Volume
  Volume: {
    new(
      Name,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::FSx::Volume',
    },
    withOpenZFSConfiguration(OpenZFSConfiguration): {
      assert std.isObject(OpenZFSConfiguration) : 'OpenZFSConfiguration must be a object',
      Properties+::: {
        OpenZFSConfiguration: OpenZFSConfiguration,
      },
    },
    withResourceARN(ResourceARN): {
      assert std.isString(ResourceARN) : 'ResourceARN must be a string',
      Properties+::: {
        ResourceARN: ResourceARN,
      },
    },
    withVolumeId(VolumeId): {
      assert std.isString(VolumeId) : 'VolumeId must be a string',
      Properties+::: {
        VolumeId: VolumeId,
      },
    },
    withVolumeType(VolumeType): {
      assert std.isString(VolumeType) : 'VolumeType must be a string',
      Properties+::: {
        VolumeType: VolumeType,
      },
    },
    withBackupId(BackupId): {
      assert std.isString(BackupId) : 'BackupId must be a string',
      Properties+::: {
        BackupId: BackupId,
      },
    },
    withOntapConfiguration(OntapConfiguration): {
      assert std.isObject(OntapConfiguration) : 'OntapConfiguration must be a object',
      Properties+::: {
        OntapConfiguration: OntapConfiguration,
      },
    },
    withUUID(UUID): {
      assert std.isString(UUID) : 'UUID must be a string',
      Properties+::: {
        UUID: UUID,
      },
    },
    withTags(Tags): {
      Properties+::: {
        Tags: (if std.isArray(Tags) then Tags else [Tags]),
      },
    },
    withTagsMixin(Tags): {
      Properties+::: {
        Tags+: (if std.isArray(Tags) then Tags else [Tags]),
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
  },
}
