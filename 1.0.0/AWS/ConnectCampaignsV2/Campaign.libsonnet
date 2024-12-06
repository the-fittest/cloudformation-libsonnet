{
  new(
    Name,
    ConnectInstanceId,
    ChannelSubtypeConfig,
  ): {
    local base = self,
    Properties: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else if std.length(Name) < 1 then error ('Name should have at least 1 characters')
        else if std.length(Name) > 127 then error ('Name should have not more than 127 characters')
        else Name,
      ConnectInstanceId:
        if !std.isString(ConnectInstanceId) then (error 'ConnectInstanceId must be a string')
        else if std.isEmpty(ConnectInstanceId) then (error 'ConnectInstanceId must be not empty')
        else if std.length(ConnectInstanceId) > 256 then error ('ConnectInstanceId should have not more than 256 characters')
        else ConnectInstanceId,
      ChannelSubtypeConfig:
        if !std.isObject(ChannelSubtypeConfig) then (error 'ChannelSubtypeConfig must be an object')
        else ChannelSubtypeConfig,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::ConnectCampaignsV2::Campaign',
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else if std.length(Arn) > 256 then error ('Arn should have not more than 256 characters')
        else Arn,
    },
  },
  setSource(Source): {
    Properties+::: {
      Source:
        if !std.isObject(Source) then (error 'Source must be an object')
        else Source,
    },
  },
  setConnectCampaignFlowArn(ConnectCampaignFlowArn): {
    Properties+::: {
      ConnectCampaignFlowArn:
        if !std.isString(ConnectCampaignFlowArn) then (error 'ConnectCampaignFlowArn must be a string')
        else if std.isEmpty(ConnectCampaignFlowArn) then (error 'ConnectCampaignFlowArn must be not empty')
        else if std.length(ConnectCampaignFlowArn) < 20 then error ('ConnectCampaignFlowArn should have at least 20 characters')
        else if std.length(ConnectCampaignFlowArn) > 500 then error ('ConnectCampaignFlowArn should have not more than 500 characters')
        else ConnectCampaignFlowArn,
    },
  },
  setSchedule(Schedule): {
    Properties+::: {
      Schedule:
        if !std.isObject(Schedule) then (error 'Schedule must be an object')
        else if !std.objectHas(Schedule, 'StartTime') then (error ' have attribute StartTime')
        else if !std.objectHas(Schedule, 'EndTime') then (error ' have attribute EndTime')
        else Schedule,
    },
  },
  setCommunicationTimeConfig(CommunicationTimeConfig): {
    Properties+::: {
      CommunicationTimeConfig:
        if !std.isObject(CommunicationTimeConfig) then (error 'CommunicationTimeConfig must be an object')
        else if !std.objectHas(CommunicationTimeConfig, 'LocalTimeZoneConfig') then (error ' have attribute LocalTimeZoneConfig')
        else CommunicationTimeConfig,
    },
  },
  setCommunicationLimitsOverride(CommunicationLimitsOverride): {
    Properties+::: {
      CommunicationLimitsOverride:
        if !std.isObject(CommunicationLimitsOverride) then (error 'CommunicationLimitsOverride must be an object')
        else CommunicationLimitsOverride,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
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
