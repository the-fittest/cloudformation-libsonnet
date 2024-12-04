{
  new(
    Type,
    TrafficPolicyId,
    RuleSetId,
  ): {
    local base = self,
    Properties: {
      assert std.isString(Type) : 'Type must be a string',
      Type: Type,
      assert std.isString(TrafficPolicyId) : 'TrafficPolicyId must be a string',
      TrafficPolicyId: TrafficPolicyId,
      assert std.isString(RuleSetId) : 'RuleSetId must be a string',
      RuleSetId: RuleSetId,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::SES::MailManagerIngressPoint',
  },
  withARecord(ARecord): {
    assert std.isString(ARecord) : 'ARecord must be a string',
    Properties+::: {
      ARecord: ARecord,
    },
  },
  withIngressPointConfiguration(IngressPointConfiguration): {
    Properties+::: {
      IngressPointConfiguration: IngressPointConfiguration,
    },
  },
  withIngressPointArn(IngressPointArn): {
    assert std.isString(IngressPointArn) : 'IngressPointArn must be a string',
    Properties+::: {
      IngressPointArn: IngressPointArn,
    },
  },
  withIngressPointId(IngressPointId): {
    assert std.isString(IngressPointId) : 'IngressPointId must be a string',
    Properties+::: {
      IngressPointId: IngressPointId,
    },
  },
  withIngressPointName(IngressPointName): {
    assert std.isString(IngressPointName) : 'IngressPointName must be a string',
    Properties+::: {
      IngressPointName: IngressPointName,
    },
  },
  withStatus(Status): {
    assert std.isString(Status) : 'Status must be a string',
    Properties+::: {
      Status: Status,
    },
  },
  withStatusToUpdate(StatusToUpdate): {
    assert std.isString(StatusToUpdate) : 'StatusToUpdate must be a string',
    Properties+::: {
      StatusToUpdate: StatusToUpdate,
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
