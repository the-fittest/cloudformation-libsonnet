{
  new(
    CollaborationIdentifier,
    QueryLogStatus,
  ): {
    local base = self,
    Properties: {
      assert std.isString(CollaborationIdentifier) : 'CollaborationIdentifier must be a string',
      CollaborationIdentifier: CollaborationIdentifier,
      assert std.isString(QueryLogStatus) : 'QueryLogStatus must be a string',
      assert QueryLogStatus == 'ENABLED' || QueryLogStatus == 'DISABLED' : "QueryLogStatus should be 'ENABLED' or 'DISABLED'",
      QueryLogStatus: QueryLogStatus,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::CleanRooms::Membership',
  },
  withArn(Arn): {
    assert std.isString(Arn) : 'Arn must be a string',
    Properties+::: {
      Arn: Arn,
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
  withCollaborationArn(CollaborationArn): {
    assert std.isString(CollaborationArn) : 'CollaborationArn must be a string',
    Properties+::: {
      CollaborationArn: CollaborationArn,
    },
  },
  withCollaborationCreatorAccountId(CollaborationCreatorAccountId): {
    assert std.isString(CollaborationCreatorAccountId) : 'CollaborationCreatorAccountId must be a string',
    Properties+::: {
      CollaborationCreatorAccountId: CollaborationCreatorAccountId,
    },
  },
  withMembershipIdentifier(MembershipIdentifier): {
    assert std.isString(MembershipIdentifier) : 'MembershipIdentifier must be a string',
    Properties+::: {
      MembershipIdentifier: MembershipIdentifier,
    },
  },
  withDefaultResultConfiguration(DefaultResultConfiguration): {
    assert std.isObject(DefaultResultConfiguration) : 'DefaultResultConfiguration must be a object',
    Properties+::: {
      DefaultResultConfiguration: DefaultResultConfiguration,
    },
  },
  withPaymentConfiguration(PaymentConfiguration): {
    assert std.isObject(PaymentConfiguration) : 'PaymentConfiguration must be a object',
    Properties+::: {
      PaymentConfiguration: PaymentConfiguration,
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
