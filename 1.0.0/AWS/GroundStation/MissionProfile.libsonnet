{
  // AWS GroundStation MissionProfile
  MissionProfile: {
    new(
      Name,
      MinimumViableContactDurationSeconds,
      DataflowEdges,
      TrackingConfigArn,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isNumber(MinimumViableContactDurationSeconds) : 'MinimumViableContactDurationSeconds must be a number',
        MinimumViableContactDurationSeconds: MinimumViableContactDurationSeconds,
        DataflowEdges: (if std.isArray(DataflowEdges) then DataflowEdges else [DataflowEdges]),
        assert std.isString(TrackingConfigArn) : 'TrackingConfigArn must be a string',
        TrackingConfigArn: TrackingConfigArn,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::GroundStation::MissionProfile',
    },
    withContactPrePassDurationSeconds(ContactPrePassDurationSeconds): {
      assert std.isNumber(ContactPrePassDurationSeconds) : 'ContactPrePassDurationSeconds must be a number',
      Properties+::: {
        ContactPrePassDurationSeconds: ContactPrePassDurationSeconds,
      },
    },
    withContactPostPassDurationSeconds(ContactPostPassDurationSeconds): {
      assert std.isNumber(ContactPostPassDurationSeconds) : 'ContactPostPassDurationSeconds must be a number',
      Properties+::: {
        ContactPostPassDurationSeconds: ContactPostPassDurationSeconds,
      },
    },
    withStreamsKmsKey(StreamsKmsKey): {
      assert std.isObject(StreamsKmsKey) : 'StreamsKmsKey must be a object',
      Properties+::: {
        StreamsKmsKey: StreamsKmsKey,
      },
    },
    withStreamsKmsRole(StreamsKmsRole): {
      assert std.isString(StreamsKmsRole) : 'StreamsKmsRole must be a string',
      Properties+::: {
        StreamsKmsRole: StreamsKmsRole,
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
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: {
        Id: Id,
      },
    },
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: {
        Arn: Arn,
      },
    },
    withRegion(Region): {
      assert std.isString(Region) : 'Region must be a string',
      Properties+::: {
        Region: Region,
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
