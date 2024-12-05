{
  new(
    TeamId,
    ChannelId,
    NotifyOnCaseSeverity,
    ChannelRoleArn,
  ): {
    local base = self,
    Properties: {
      TeamId:
        if !std.isString(TeamId) then (error 'TeamId must be a string')
        else if std.isEmpty(TeamId) then (error 'TeamId must be not empty')
        else if std.length(TeamId) < 1 then error ('TeamId should have at least 1 characters')
        else if std.length(TeamId) > 256 then error ('TeamId should have not more than 256 characters')
        else TeamId,
      ChannelId:
        if !std.isString(ChannelId) then (error 'ChannelId must be a string')
        else if std.isEmpty(ChannelId) then (error 'ChannelId must be not empty')
        else if std.length(ChannelId) < 1 then error ('ChannelId should have at least 1 characters')
        else if std.length(ChannelId) > 256 then error ('ChannelId should have not more than 256 characters')
        else ChannelId,
      NotifyOnCaseSeverity:
        if !std.isString(NotifyOnCaseSeverity) then (error 'NotifyOnCaseSeverity must be a string')
        else if std.isEmpty(NotifyOnCaseSeverity) then (error 'NotifyOnCaseSeverity must be not empty')
        else if NotifyOnCaseSeverity != 'none' && NotifyOnCaseSeverity != 'all' && NotifyOnCaseSeverity != 'high' then (error "NotifyOnCaseSeverity should be 'none' or 'all' or 'high'")
        else NotifyOnCaseSeverity,
      ChannelRoleArn:
        if !std.isString(ChannelRoleArn) then (error 'ChannelRoleArn must be a string')
        else if std.isEmpty(ChannelRoleArn) then (error 'ChannelRoleArn must be not empty')
        else if std.length(ChannelRoleArn) < 31 then error ('ChannelRoleArn should have at least 31 characters')
        else if std.length(ChannelRoleArn) > 2048 then error ('ChannelRoleArn should have not more than 2048 characters')
        else ChannelRoleArn,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::SupportApp::SlackChannelConfiguration',
  },
  setChannelName(ChannelName): {
    Properties+::: {
      ChannelName:
        if !std.isString(ChannelName) then (error 'ChannelName must be a string')
        else if std.isEmpty(ChannelName) then (error 'ChannelName must be not empty')
        else if std.length(ChannelName) < 1 then error ('ChannelName should have at least 1 characters')
        else if std.length(ChannelName) > 256 then error ('ChannelName should have not more than 256 characters')
        else ChannelName,
    },
  },
  setNotifyOnCreateOrReopenCase(NotifyOnCreateOrReopenCase): {
    Properties+::: {
      NotifyOnCreateOrReopenCase:
        if !std.isBoolean(NotifyOnCreateOrReopenCase) then (error 'NotifyOnCreateOrReopenCase must be a boolean') else NotifyOnCreateOrReopenCase,
    },
  },
  setNotifyOnAddCorrespondenceToCase(NotifyOnAddCorrespondenceToCase): {
    Properties+::: {
      NotifyOnAddCorrespondenceToCase:
        if !std.isBoolean(NotifyOnAddCorrespondenceToCase) then (error 'NotifyOnAddCorrespondenceToCase must be a boolean') else NotifyOnAddCorrespondenceToCase,
    },
  },
  setNotifyOnResolveCase(NotifyOnResolveCase): {
    Properties+::: {
      NotifyOnResolveCase:
        if !std.isBoolean(NotifyOnResolveCase) then (error 'NotifyOnResolveCase must be a boolean') else NotifyOnResolveCase,
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
