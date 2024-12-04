{
  new(
    ReplicationConfigIdentifier,
    SourceEndpointArn,
    TargetEndpointArn,
    ReplicationType,
    ComputeConfig,
    TableMappings,
  ): {
    local base = self,
    Properties: {
      assert std.isString(ReplicationConfigIdentifier) : 'ReplicationConfigIdentifier must be a string',
      ReplicationConfigIdentifier: ReplicationConfigIdentifier,
      assert std.isString(SourceEndpointArn) : 'SourceEndpointArn must be a string',
      SourceEndpointArn: SourceEndpointArn,
      assert std.isString(TargetEndpointArn) : 'TargetEndpointArn must be a string',
      TargetEndpointArn: TargetEndpointArn,
      assert std.isString(ReplicationType) : 'ReplicationType must be a string',
      ReplicationType: ReplicationType,
      assert std.isObject(ComputeConfig) : 'ComputeConfig must be an object',
      ComputeConfig: ComputeConfig,
      assert std.isObject(TableMappings) : 'TableMappings must be an object',
      TableMappings: TableMappings,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::DMS::ReplicationConfig',
  },
  withReplicationConfigArn(ReplicationConfigArn): {
    assert std.isString(ReplicationConfigArn) : 'ReplicationConfigArn must be a string',
    Properties+::: {
      ReplicationConfigArn: ReplicationConfigArn,
    },
  },
  withReplicationSettings(ReplicationSettings): {
    assert std.isObject(ReplicationSettings) : 'ReplicationSettings must be a object',
    Properties+::: {
      ReplicationSettings: ReplicationSettings,
    },
  },
  withSupplementalSettings(SupplementalSettings): {
    assert std.isObject(SupplementalSettings) : 'SupplementalSettings must be a object',
    Properties+::: {
      SupplementalSettings: SupplementalSettings,
    },
  },
  withResourceIdentifier(ResourceIdentifier): {
    assert std.isString(ResourceIdentifier) : 'ResourceIdentifier must be a string',
    Properties+::: {
      ResourceIdentifier: ResourceIdentifier,
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
}
