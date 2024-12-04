{
  // AWS DMS ReplicationTask
  ReplicationTask: {
    new(
      TableMappings,
      SourceEndpointArn,
      MigrationType,
      TargetEndpointArn,
      ReplicationInstanceArn,
    ): {
      local base = self,
      Properties: {
        assert std.isString(TableMappings) : 'TableMappings must be a string',
        TableMappings: TableMappings,
        assert std.isString(SourceEndpointArn) : 'SourceEndpointArn must be a string',
        SourceEndpointArn: SourceEndpointArn,
        assert std.isString(MigrationType) : 'MigrationType must be a string',
        MigrationType: MigrationType,
        assert std.isString(TargetEndpointArn) : 'TargetEndpointArn must be a string',
        TargetEndpointArn: TargetEndpointArn,
        assert std.isString(ReplicationInstanceArn) : 'ReplicationInstanceArn must be a string',
        ReplicationInstanceArn: ReplicationInstanceArn,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::DMS::ReplicationTask',
    },
    withReplicationTaskSettings(ReplicationTaskSettings): {
      assert std.isString(ReplicationTaskSettings) : 'ReplicationTaskSettings must be a string',
      Properties+::: {
        ReplicationTaskSettings: ReplicationTaskSettings,
      },
    },
    withCdcStartPosition(CdcStartPosition): {
      assert std.isString(CdcStartPosition) : 'CdcStartPosition must be a string',
      Properties+::: {
        CdcStartPosition: CdcStartPosition,
      },
    },
    withCdcStopPosition(CdcStopPosition): {
      assert std.isString(CdcStopPosition) : 'CdcStopPosition must be a string',
      Properties+::: {
        CdcStopPosition: CdcStopPosition,
      },
    },
    withTaskData(TaskData): {
      assert std.isString(TaskData) : 'TaskData must be a string',
      Properties+::: {
        TaskData: TaskData,
      },
    },
    withCdcStartTime(CdcStartTime): {
      assert std.isNumber(CdcStartTime) : 'CdcStartTime must be a number',
      Properties+::: {
        CdcStartTime: CdcStartTime,
      },
    },
    withResourceIdentifier(ResourceIdentifier): {
      assert std.isString(ResourceIdentifier) : 'ResourceIdentifier must be a string',
      Properties+::: {
        ResourceIdentifier: ResourceIdentifier,
      },
    },
    withReplicationTaskIdentifier(ReplicationTaskIdentifier): {
      assert std.isString(ReplicationTaskIdentifier) : 'ReplicationTaskIdentifier must be a string',
      Properties+::: {
        ReplicationTaskIdentifier: ReplicationTaskIdentifier,
      },
    },
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: {
        Id: Id,
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
