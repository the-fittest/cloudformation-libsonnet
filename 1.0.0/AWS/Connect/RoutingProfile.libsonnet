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
      assert std.isString(InstanceArn) : 'InstanceArn must be a string',
      InstanceArn: InstanceArn,
      assert std.isString(Name) : 'Name must be a string',
      Name: Name,
      assert std.isString(Description) : 'Description must be a string',
      Description: Description,
      MediaConcurrencies: (if std.isArray(MediaConcurrencies) then MediaConcurrencies else [MediaConcurrencies]),
      assert std.isString(DefaultOutboundQueueArn) : 'DefaultOutboundQueueArn must be a string',
      DefaultOutboundQueueArn: DefaultOutboundQueueArn,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Connect::RoutingProfile',
  },
  withRoutingProfileArn(RoutingProfileArn): {
    assert std.isString(RoutingProfileArn) : 'RoutingProfileArn must be a string',
    Properties+::: {
      RoutingProfileArn: RoutingProfileArn,
    },
  },
  withQueueConfigs(QueueConfigs): {
    Properties+::: {
      QueueConfigs: (if std.isArray(QueueConfigs) then QueueConfigs else [QueueConfigs]),
    },
  },
  withQueueConfigsMixin(QueueConfigs): {
    Properties+::: {
      QueueConfigs+: (if std.isArray(QueueConfigs) then QueueConfigs else [QueueConfigs]),
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
  withAgentAvailabilityTimer(AgentAvailabilityTimer): {
    assert std.isString(AgentAvailabilityTimer) : 'AgentAvailabilityTimer must be a string',
    assert AgentAvailabilityTimer == 'TIME_SINCE_LAST_ACTIVITY' || AgentAvailabilityTimer == 'TIME_SINCE_LAST_INBOUND' : "AgentAvailabilityTimer should be 'TIME_SINCE_LAST_ACTIVITY' or 'TIME_SINCE_LAST_INBOUND'",
    Properties+::: {
      AgentAvailabilityTimer: AgentAvailabilityTimer,
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
