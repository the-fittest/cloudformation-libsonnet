{
  new(
    Ec2Config,
  ): {
    local base = self,
    Properties: {
      assert std.isObject(Ec2Config) : 'Ec2Config must be an object',
      Ec2Config: Ec2Config,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::DataSync::LocationEFS',
  },
  withEfsFilesystemArn(EfsFilesystemArn): {
    assert std.isString(EfsFilesystemArn) : 'EfsFilesystemArn must be a string',
    Properties+::: {
      EfsFilesystemArn: EfsFilesystemArn,
    },
  },
  withAccessPointArn(AccessPointArn): {
    assert std.isString(AccessPointArn) : 'AccessPointArn must be a string',
    Properties+::: {
      AccessPointArn: AccessPointArn,
    },
  },
  withFileSystemAccessRoleArn(FileSystemAccessRoleArn): {
    assert std.isString(FileSystemAccessRoleArn) : 'FileSystemAccessRoleArn must be a string',
    Properties+::: {
      FileSystemAccessRoleArn: FileSystemAccessRoleArn,
    },
  },
  withInTransitEncryption(InTransitEncryption): {
    assert std.isString(InTransitEncryption) : 'InTransitEncryption must be a string',
    Properties+::: {
      InTransitEncryption: InTransitEncryption,
    },
  },
  withSubdirectory(Subdirectory): {
    assert std.isString(Subdirectory) : 'Subdirectory must be a string',
    Properties+::: {
      Subdirectory: Subdirectory,
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
  withLocationArn(LocationArn): {
    assert std.isString(LocationArn) : 'LocationArn must be a string',
    Properties+::: {
      LocationArn: LocationArn,
    },
  },
  withLocationUri(LocationUri): {
    assert std.isString(LocationUri) : 'LocationUri must be a string',
    Properties+::: {
      LocationUri: LocationUri,
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
