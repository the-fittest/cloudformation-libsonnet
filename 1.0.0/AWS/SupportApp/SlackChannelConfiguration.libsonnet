{
  new(
    TeamId,
    ChannelId,
    NotifyOnCaseSeverity,
    ChannelRoleArn,
  ): {
    local base = self,
    Properties: {
      assert std.isString(TeamId) : 'TeamId must be a string',
      TeamId: TeamId,
      assert std.isString(ChannelId) : 'ChannelId must be a string',
      ChannelId: ChannelId,
      assert std.isString(NotifyOnCaseSeverity) : 'NotifyOnCaseSeverity must be a string',
      NotifyOnCaseSeverity: NotifyOnCaseSeverity,
      assert std.isString(ChannelRoleArn) : 'ChannelRoleArn must be a string',
      ChannelRoleArn: ChannelRoleArn,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::SupportApp::SlackChannelConfiguration',
  },
  withChannelName(ChannelName): {
    assert std.isString(ChannelName) : 'ChannelName must be a string',
    Properties+::: {
      ChannelName: ChannelName,
    },
  },
  withNotifyOnCreateOrReopenCase(NotifyOnCreateOrReopenCase): {
    assert std.isBoolean(NotifyOnCreateOrReopenCase) : 'NotifyOnCreateOrReopenCase must be a boolean',
    Properties+::: {
      NotifyOnCreateOrReopenCase: NotifyOnCreateOrReopenCase,
    },
  },
  withNotifyOnAddCorrespondenceToCase(NotifyOnAddCorrespondenceToCase): {
    assert std.isBoolean(NotifyOnAddCorrespondenceToCase) : 'NotifyOnAddCorrespondenceToCase must be a boolean',
    Properties+::: {
      NotifyOnAddCorrespondenceToCase: NotifyOnAddCorrespondenceToCase,
    },
  },
  withNotifyOnResolveCase(NotifyOnResolveCase): {
    assert std.isBoolean(NotifyOnResolveCase) : 'NotifyOnResolveCase must be a boolean',
    Properties+::: {
      NotifyOnResolveCase: NotifyOnResolveCase,
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
