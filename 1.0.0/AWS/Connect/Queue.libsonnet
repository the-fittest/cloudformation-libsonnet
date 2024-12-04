{
  new(
    InstanceArn,
    HoursOfOperationArn,
    Name,
  ): {
    local base = self,
    Properties: {
      assert std.isString(InstanceArn) : 'InstanceArn must be a string',
      InstanceArn: InstanceArn,
      assert std.isString(HoursOfOperationArn) : 'HoursOfOperationArn must be a string',
      HoursOfOperationArn: HoursOfOperationArn,
      assert std.isString(Name) : 'Name must be a string',
      Name: Name,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Connect::Queue',
  },
  withStatus(Status): {
    assert std.isString(Status) : 'Status must be a string',
    assert Status == 'ENABLED' || Status == 'DISABLED' : "Status should be 'ENABLED' or 'DISABLED'",
    Properties+::: {
      Status: Status,
    },
  },
  withType(Type): {
    assert std.isString(Type) : 'Type must be a string',
    assert Type == 'STANDARD' || Type == 'AGENT' : "Type should be 'STANDARD' or 'AGENT'",
    Properties+::: {
      Type: Type,
    },
  },
  withDescription(Description): {
    assert std.isString(Description) : 'Description must be a string',
    Properties+::: {
      Description: Description,
    },
  },
  withQuickConnectArns(QuickConnectArns): {
    Properties+::: {
      QuickConnectArns: (if std.isArray(QuickConnectArns) then QuickConnectArns else [QuickConnectArns]),
    },
  },
  withQuickConnectArnsMixin(QuickConnectArns): {
    Properties+::: {
      QuickConnectArns+: (if std.isArray(QuickConnectArns) then QuickConnectArns else [QuickConnectArns]),
    },
  },
  withOutboundCallerConfig(OutboundCallerConfig): {
    assert std.isObject(OutboundCallerConfig) : 'OutboundCallerConfig must be a object',
    Properties+::: {
      OutboundCallerConfig: OutboundCallerConfig,
    },
  },
  withQueueArn(QueueArn): {
    assert std.isString(QueueArn) : 'QueueArn must be a string',
    Properties+::: {
      QueueArn: QueueArn,
    },
  },
  withMaxContacts(MaxContacts): {
    assert std.isNumber(MaxContacts) : 'MaxContacts must be a number',
    Properties+::: {
      MaxContacts: MaxContacts,
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
