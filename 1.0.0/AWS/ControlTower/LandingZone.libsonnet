{
  new(
    Manifest,
    Version,
  ): {
    local base = self,
    Properties: {
      Manifest: Manifest,
      Version:
        if !std.isString(Version) then (error 'Version must be a string')
        else if std.isEmpty(Version) then (error 'Version must be not empty')
        else if std.length(Version) < 3 then error ('Version should have at least 3 characters')
        else if std.length(Version) > 10 then error ('Version should have not more than 10 characters')
        else Version,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::ControlTower::LandingZone',
  },
  setStatus(Status): {
    Properties+::: {
      Status:
        if !std.isString(Status) then (error 'Status must be a string')
        else if std.isEmpty(Status) then (error 'Status must be not empty')
        else if Status != 'ACTIVE' && Status != 'PROCESSING' && Status != 'FAILED' then (error "Status should be 'ACTIVE' or 'PROCESSING' or 'FAILED'")
        else Status,
    },
  },
  setLatestAvailableVersion(LatestAvailableVersion): {
    Properties+::: {
      LatestAvailableVersion:
        if !std.isString(LatestAvailableVersion) then (error 'LatestAvailableVersion must be a string')
        else if std.isEmpty(LatestAvailableVersion) then (error 'LatestAvailableVersion must be not empty')
        else if std.length(LatestAvailableVersion) < 3 then error ('LatestAvailableVersion should have at least 3 characters')
        else if std.length(LatestAvailableVersion) > 10 then error ('LatestAvailableVersion should have not more than 10 characters')
        else LatestAvailableVersion,
    },
  },
  setDriftStatus(DriftStatus): {
    Properties+::: {
      DriftStatus:
        if !std.isString(DriftStatus) then (error 'DriftStatus must be a string')
        else if std.isEmpty(DriftStatus) then (error 'DriftStatus must be not empty')
        else if DriftStatus != 'DRIFTED' && DriftStatus != 'IN_SYNC' then (error "DriftStatus should be 'DRIFTED' or 'IN_SYNC'")
        else DriftStatus,
    },
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else if std.length(Arn) < 20 then error ('Arn should have at least 20 characters')
        else if std.length(Arn) > 2048 then error ('Arn should have not more than 2048 characters')
        else Arn,
    },
  },
  setLandingZoneIdentifier(LandingZoneIdentifier): {
    Properties+::: {
      LandingZoneIdentifier:
        if !std.isString(LandingZoneIdentifier) then (error 'LandingZoneIdentifier must be a string')
        else if std.isEmpty(LandingZoneIdentifier) then (error 'LandingZoneIdentifier must be not empty')
        else LandingZoneIdentifier,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else Tags,
    },
  },
  setTagsMixin(Tags): {
    Properties+::: {
      Tags+: Tags,
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
