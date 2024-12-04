{
  new(
    DefaultAction,
    PolicyStatements,
  ): {
    local base = self,
    Properties: {
      assert std.isString(DefaultAction) : 'DefaultAction must be a string',
      assert DefaultAction == 'ALLOW' || DefaultAction == 'DENY' : "DefaultAction should be 'ALLOW' or 'DENY'",
      DefaultAction: DefaultAction,
      PolicyStatements: (if std.isArray(PolicyStatements) then PolicyStatements else [PolicyStatements]),
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::SES::MailManagerTrafficPolicy',
  },
  withMaxMessageSizeBytes(MaxMessageSizeBytes): {
    assert std.isNumber(MaxMessageSizeBytes) : 'MaxMessageSizeBytes must be a number',
    Properties+::: {
      MaxMessageSizeBytes: MaxMessageSizeBytes,
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
  withTrafficPolicyArn(TrafficPolicyArn): {
    assert std.isString(TrafficPolicyArn) : 'TrafficPolicyArn must be a string',
    Properties+::: {
      TrafficPolicyArn: TrafficPolicyArn,
    },
  },
  withTrafficPolicyId(TrafficPolicyId): {
    assert std.isString(TrafficPolicyId) : 'TrafficPolicyId must be a string',
    Properties+::: {
      TrafficPolicyId: TrafficPolicyId,
    },
  },
  withTrafficPolicyName(TrafficPolicyName): {
    assert std.isString(TrafficPolicyName) : 'TrafficPolicyName must be a string',
    Properties+::: {
      TrafficPolicyName: TrafficPolicyName,
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
