{
  new(
    ApplicationId,
  ): {
    local base = self,
    Properties: {
      ApplicationId:
        if !std.isString(ApplicationId) then (error 'ApplicationId must be a string')
        else if std.isEmpty(ApplicationId) then (error 'ApplicationId must be not empty')
        else ApplicationId,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Pinpoint::ApplicationSettings',
  },
  setId(Id): {
    Properties+::: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else Id,
    },
  },
  setQuietTime(QuietTime): {
    Properties+::: {
      QuietTime:
        if !std.isObject(QuietTime) then (error 'QuietTime must be an object')
        else if !std.objectHas(QuietTime, 'Start') then (error ' have attribute Start')
        else if !std.objectHas(QuietTime, 'End') then (error ' have attribute End')
        else QuietTime,
    },
  },
  setLimits(Limits): {
    Properties+::: {
      Limits:
        if !std.isObject(Limits) then (error 'Limits must be an object')
        else Limits,
    },
  },
  setCampaignHook(CampaignHook): {
    Properties+::: {
      CampaignHook:
        if !std.isObject(CampaignHook) then (error 'CampaignHook must be an object')
        else CampaignHook,
    },
  },
  setCloudWatchMetricsEnabled(CloudWatchMetricsEnabled): {
    Properties+::: {
      CloudWatchMetricsEnabled:
        if !std.isBoolean(CloudWatchMetricsEnabled) then (error 'CloudWatchMetricsEnabled must be a boolean') else CloudWatchMetricsEnabled,
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
