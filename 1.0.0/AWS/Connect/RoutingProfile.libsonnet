{
  new(
    InstanceArn,
    Name,
    Description,
    MediaConcurrencies,
    DefaultOutboundQueueArn,
  ): {
    local base = self,
    Properties: {
      InstanceArn:
        if !std.isString(InstanceArn) then (error 'InstanceArn must be a string')
        else if std.isEmpty(InstanceArn) then (error 'InstanceArn must be not empty')
        else InstanceArn,
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else if std.length(Name) < 1 then error ('Name should have at least 1 characters')
        else if std.length(Name) > 127 then error ('Name should have not more than 127 characters')
        else Name,
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else if std.length(Description) < 1 then error ('Description should have at least 1 characters')
        else if std.length(Description) > 250 then error ('Description should have not more than 250 characters')
        else Description,
      MediaConcurrencies:
        if !std.isArray(MediaConcurrencies) then (error 'MediaConcurrencies must be an array')
        else MediaConcurrencies,
      DefaultOutboundQueueArn:
        if !std.isString(DefaultOutboundQueueArn) then (error 'DefaultOutboundQueueArn must be a string')
        else if std.isEmpty(DefaultOutboundQueueArn) then (error 'DefaultOutboundQueueArn must be not empty')
        else DefaultOutboundQueueArn,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Connect::RoutingProfile',
  },
  setRoutingProfileArn(RoutingProfileArn): {
    Properties+::: {
      RoutingProfileArn:
        if !std.isString(RoutingProfileArn) then (error 'RoutingProfileArn must be a string')
        else if std.isEmpty(RoutingProfileArn) then (error 'RoutingProfileArn must be not empty')
        else RoutingProfileArn,
    },
  },
  setQueueConfigs(QueueConfigs): {
    Properties+::: {
      QueueConfigs:
        if !std.isArray(QueueConfigs) then (error 'QueueConfigs must be an array')
        else if std.length(QueueConfigs) < 1 then error ('QueueConfigs cannot have less than 1 items')
        else QueueConfigs,
    },
  },
  setQueueConfigsMixin(QueueConfigs): {
    Properties+::: {
      QueueConfigs+: QueueConfigs,
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
  setTagsMixin(Tags): {
    Properties+::: {
      Tags+: Tags,
    },
  },
  setAgentAvailabilityTimer(AgentAvailabilityTimer): {
    Properties+::: {
      AgentAvailabilityTimer:
        if !std.isString(AgentAvailabilityTimer) then (error 'AgentAvailabilityTimer must be a string')
        else if std.isEmpty(AgentAvailabilityTimer) then (error 'AgentAvailabilityTimer must be not empty')
        else if AgentAvailabilityTimer != 'TIME_SINCE_LAST_ACTIVITY' && AgentAvailabilityTimer != 'TIME_SINCE_LAST_INBOUND' then (error "AgentAvailabilityTimer should be 'TIME_SINCE_LAST_ACTIVITY' or 'TIME_SINCE_LAST_INBOUND'")
        else AgentAvailabilityTimer,
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
