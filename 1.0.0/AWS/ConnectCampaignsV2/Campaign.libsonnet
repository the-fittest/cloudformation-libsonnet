{
  new(
    Name,
    ConnectInstanceId,
    ChannelSubtypeConfig,
  ): {
    local base = self,
    Properties: {
      assert std.isString(Name) : 'Name must be a string',
      Name: Name,
      assert std.isString(ConnectInstanceId) : 'ConnectInstanceId must be a string',
      ConnectInstanceId: ConnectInstanceId,
      assert std.isObject(ChannelSubtypeConfig) : 'ChannelSubtypeConfig must be an object',
      ChannelSubtypeConfig: ChannelSubtypeConfig,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::ConnectCampaignsV2::Campaign',
  },
  withArn(Arn): {
    assert std.isString(Arn) : 'Arn must be a string',
    Properties+::: {
      Arn: Arn,
    },
  },
  withSource(Source): {
    assert std.isObject(Source) : 'Source must be a object',
    Properties+::: {
      Source: Source,
    },
  },
  withConnectCampaignFlowArn(ConnectCampaignFlowArn): {
    assert std.isString(ConnectCampaignFlowArn) : 'ConnectCampaignFlowArn must be a string',
    Properties+::: {
      ConnectCampaignFlowArn: ConnectCampaignFlowArn,
    },
  },
  withSchedule(Schedule): {
    assert std.isObject(Schedule) : 'Schedule must be a object',
    Properties+::: {
      Schedule: Schedule,
    },
  },
  withCommunicationTimeConfig(CommunicationTimeConfig): {
    assert std.isObject(CommunicationTimeConfig) : 'CommunicationTimeConfig must be a object',
    Properties+::: {
      CommunicationTimeConfig: CommunicationTimeConfig,
    },
  },
  withCommunicationLimitsOverride(CommunicationLimitsOverride): {
    assert std.isObject(CommunicationLimitsOverride) : 'CommunicationLimitsOverride must be a object',
    Properties+::: {
      CommunicationLimitsOverride: CommunicationLimitsOverride,
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
