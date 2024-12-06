{
  new(
    TrackingServerName,
    ArtifactStoreUri,
    RoleArn,
  ): {
    local base = self,
    Properties: {
      TrackingServerName:
        if !std.isString(TrackingServerName) then (error 'TrackingServerName must be a string')
        else if std.isEmpty(TrackingServerName) then (error 'TrackingServerName must be not empty')
        else if std.length(TrackingServerName) < 1 then error ('TrackingServerName should have at least 1 characters')
        else if std.length(TrackingServerName) > 256 then error ('TrackingServerName should have not more than 256 characters')
        else TrackingServerName,
      ArtifactStoreUri:
        if !std.isString(ArtifactStoreUri) then (error 'ArtifactStoreUri must be a string')
        else if std.isEmpty(ArtifactStoreUri) then (error 'ArtifactStoreUri must be not empty')
        else if std.length(ArtifactStoreUri) < 1 then error ('ArtifactStoreUri should have at least 1 characters')
        else if std.length(ArtifactStoreUri) > 2048 then error ('ArtifactStoreUri should have not more than 2048 characters')
        else ArtifactStoreUri,
      RoleArn:
        if !std.isString(RoleArn) then (error 'RoleArn must be a string')
        else if std.isEmpty(RoleArn) then (error 'RoleArn must be not empty')
        else if std.length(RoleArn) < 20 then error ('RoleArn should have at least 20 characters')
        else if std.length(RoleArn) > 2048 then error ('RoleArn should have not more than 2048 characters')
        else RoleArn,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::SageMaker::MlflowTrackingServer',
  },
  setTrackingServerArn(TrackingServerArn): {
    Properties+::: {
      TrackingServerArn:
        if !std.isString(TrackingServerArn) then (error 'TrackingServerArn must be a string')
        else if std.isEmpty(TrackingServerArn) then (error 'TrackingServerArn must be not empty')
        else if std.length(TrackingServerArn) > 2048 then error ('TrackingServerArn should have not more than 2048 characters')
        else TrackingServerArn,
    },
  },
  setTrackingServerSize(TrackingServerSize): {
    Properties+::: {
      TrackingServerSize:
        if !std.isString(TrackingServerSize) then (error 'TrackingServerSize must be a string')
        else if std.isEmpty(TrackingServerSize) then (error 'TrackingServerSize must be not empty')
        else if TrackingServerSize != 'Small' && TrackingServerSize != 'Medium' && TrackingServerSize != 'Large' then (error "TrackingServerSize should be 'Small' or 'Medium' or 'Large'")
        else TrackingServerSize,
    },
  },
  setMlflowVersion(MlflowVersion): {
    Properties+::: {
      MlflowVersion:
        if !std.isString(MlflowVersion) then (error 'MlflowVersion must be a string')
        else if std.isEmpty(MlflowVersion) then (error 'MlflowVersion must be not empty')
        else if std.length(MlflowVersion) < 1 then error ('MlflowVersion should have at least 1 characters')
        else if std.length(MlflowVersion) > 32 then error ('MlflowVersion should have not more than 32 characters')
        else MlflowVersion,
    },
  },
  setAutomaticModelRegistration(AutomaticModelRegistration): {
    Properties+::: {
      AutomaticModelRegistration:
        if !std.isBoolean(AutomaticModelRegistration) then (error 'AutomaticModelRegistration must be a boolean') else AutomaticModelRegistration,
    },
  },
  setWeeklyMaintenanceWindowStart(WeeklyMaintenanceWindowStart): {
    Properties+::: {
      WeeklyMaintenanceWindowStart:
        if !std.isString(WeeklyMaintenanceWindowStart) then (error 'WeeklyMaintenanceWindowStart must be a string')
        else if std.isEmpty(WeeklyMaintenanceWindowStart) then (error 'WeeklyMaintenanceWindowStart must be not empty')
        else if std.length(WeeklyMaintenanceWindowStart) > 9 then error ('WeeklyMaintenanceWindowStart should have not more than 9 characters')
        else WeeklyMaintenanceWindowStart,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else if std.length(Tags) < 1 then error ('Tags cannot have less than 1 items')
        else if std.length(Tags) > 50 then error ('Tags cannot have more than 50 items')
        else Tags,
    },
  },
  pushTags(Tags): {
    Properties+::: {
      Tags+: Tags,
    },
  },
  setDependsOn(DependsOn): {
    Properties+::: {
      DependsOn: DependsOn,
    },
  },
  pushDependsOn(DependsOn): {
    Properties+::: {
      DependsOn+: DependsOn,
    },
  },
  setCreationPolicy(CreationPolicy): {
    Properties+::: {
      CreationPolicy: CreationPolicy,
    },
  },
  pushCreationPolicy(CreationPolicy): {
    Properties+::: {
      CreationPolicy+: CreationPolicy,
    },
  },
  setDeletionPolicy(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy: DeletionPolicy,
    },
  },
  pushDeletionPolicy(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy+: DeletionPolicy,
    },
  },
  setUpdatePolicy(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy: UpdatePolicy,
    },
  },
  pushUpdatePolicy(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy+: UpdatePolicy,
    },
  },
  setUpdateReplacePolicy(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy: UpdateReplacePolicy,
    },
  },
  pushUpdateReplacePolicy(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy+: UpdateReplacePolicy,
    },
  },
  setMetadata(Metadata): {
    Properties+::: {
      Metadata: Metadata,
    },
  },
  pushMetadata(Metadata): {
    Properties+::: {
      Metadata+: Metadata,
    },
  },
}
