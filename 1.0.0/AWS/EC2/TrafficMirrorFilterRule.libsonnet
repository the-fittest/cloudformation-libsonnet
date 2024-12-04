{
  new(
    RuleAction,
    SourceCidrBlock,
    RuleNumber,
    DestinationCidrBlock,
    TrafficMirrorFilterId,
    TrafficDirection,
  ): {
    local base = self,
    Properties: {
      assert std.isString(RuleAction) : 'RuleAction must be a string',
      RuleAction: RuleAction,
      assert std.isString(SourceCidrBlock) : 'SourceCidrBlock must be a string',
      SourceCidrBlock: SourceCidrBlock,
      assert std.isNumber(RuleNumber) : 'RuleNumber must be a number',
      RuleNumber: RuleNumber,
      assert std.isString(DestinationCidrBlock) : 'DestinationCidrBlock must be a string',
      DestinationCidrBlock: DestinationCidrBlock,
      assert std.isString(TrafficMirrorFilterId) : 'TrafficMirrorFilterId must be a string',
      TrafficMirrorFilterId: TrafficMirrorFilterId,
      assert std.isString(TrafficDirection) : 'TrafficDirection must be a string',
      TrafficDirection: TrafficDirection,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::EC2::TrafficMirrorFilterRule',
  },
  withDestinationPortRange(DestinationPortRange): {
    assert std.isObject(DestinationPortRange) : 'DestinationPortRange must be a object',
    Properties+::: {
      DestinationPortRange: DestinationPortRange,
    },
  },
  withDescription(Description): {
    assert std.isString(Description) : 'Description must be a string',
    Properties+::: {
      Description: Description,
    },
  },
  withSourcePortRange(SourcePortRange): {
    assert std.isObject(SourcePortRange) : 'SourcePortRange must be a object',
    Properties+::: {
      SourcePortRange: SourcePortRange,
    },
  },
  withId(Id): {
    assert std.isString(Id) : 'Id must be a string',
    Properties+::: {
      Id: Id,
    },
  },
  withProtocol(Protocol): {
    assert std.isNumber(Protocol) : 'Protocol must be a number',
    Properties+::: {
      Protocol: Protocol,
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
