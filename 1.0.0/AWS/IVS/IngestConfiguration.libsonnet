{
  new(
  ): {
    local base = self,
    Properties: {
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::IVS::IngestConfiguration',
  },
  withArn(Arn): {
    assert std.isString(Arn) : 'Arn must be a string',
    Properties+::: {
      Arn: Arn,
    },
  },
  withName(Name): {
    assert std.isString(Name) : 'Name must be a string',
    Properties+::: {
      Name: Name,
    },
  },
  withStageArn(StageArn): {
    assert std.isString(StageArn) : 'StageArn must be a string',
    Properties+::: {
      StageArn: StageArn,
    },
  },
  withParticipantId(ParticipantId): {
    assert std.isString(ParticipantId) : 'ParticipantId must be a string',
    Properties+::: {
      ParticipantId: ParticipantId,
    },
  },
  withIngestProtocol(IngestProtocol): {
    assert std.isString(IngestProtocol) : 'IngestProtocol must be a string',
    assert IngestProtocol == 'RTMP' || IngestProtocol == 'RTMPS' : "IngestProtocol should be 'RTMP' or 'RTMPS'",
    Properties+::: {
      IngestProtocol: IngestProtocol,
    },
  },
  withInsecureIngest(InsecureIngest): {
    assert std.isBoolean(InsecureIngest) : 'InsecureIngest must be a boolean',
    Properties+::: {
      InsecureIngest: InsecureIngest,
    },
  },
  withState(State): {
    assert std.isString(State) : 'State must be a string',
    assert State == 'ACTIVE' || State == 'INACTIVE' : "State should be 'ACTIVE' or 'INACTIVE'",
    Properties+::: {
      State: State,
    },
  },
  withStreamKey(StreamKey): {
    assert std.isString(StreamKey) : 'StreamKey must be a string',
    Properties+::: {
      StreamKey: StreamKey,
    },
  },
  withUserId(UserId): {
    assert std.isString(UserId) : 'UserId must be a string',
    Properties+::: {
      UserId: UserId,
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
