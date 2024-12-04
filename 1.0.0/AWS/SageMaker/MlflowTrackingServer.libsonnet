{
  // AWS SageMaker MlflowTrackingServer
  MlflowTrackingServer: {
    new(
      TrackingServerName,
      ArtifactStoreUri,
      RoleArn,
    ): {
      local base = self,
      Properties: {
        assert std.isString(TrackingServerName) : 'TrackingServerName must be a string',
        TrackingServerName: TrackingServerName,
        assert std.isString(ArtifactStoreUri) : 'ArtifactStoreUri must be a string',
        ArtifactStoreUri: ArtifactStoreUri,
        assert std.isString(RoleArn) : 'RoleArn must be a string',
        RoleArn: RoleArn,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::SageMaker::MlflowTrackingServer',
    },
    withTrackingServerArn(TrackingServerArn): {
      assert std.isString(TrackingServerArn) : 'TrackingServerArn must be a string',
      Properties+::: {
        TrackingServerArn: TrackingServerArn,
      },
    },
    withTrackingServerSize(TrackingServerSize): {
      assert std.isString(TrackingServerSize) : 'TrackingServerSize must be a string',
      Properties+::: {
        TrackingServerSize: TrackingServerSize,
      },
    },
    withMlflowVersion(MlflowVersion): {
      assert std.isString(MlflowVersion) : 'MlflowVersion must be a string',
      Properties+::: {
        MlflowVersion: MlflowVersion,
      },
    },
    withAutomaticModelRegistration(AutomaticModelRegistration): {
      assert std.isBoolean(AutomaticModelRegistration) : 'AutomaticModelRegistration must be a boolean',
      Properties+::: {
        AutomaticModelRegistration: AutomaticModelRegistration,
      },
    },
    withWeeklyMaintenanceWindowStart(WeeklyMaintenanceWindowStart): {
      assert std.isString(WeeklyMaintenanceWindowStart) : 'WeeklyMaintenanceWindowStart must be a string',
      Properties+::: {
        WeeklyMaintenanceWindowStart: WeeklyMaintenanceWindowStart,
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
