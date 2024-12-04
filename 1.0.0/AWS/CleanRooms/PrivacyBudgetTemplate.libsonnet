{
  new(
    AutoRefresh,
    PrivacyBudgetType,
    Parameters,
    MembershipIdentifier,
  ): {
    local base = self,
    Properties: {
      assert std.isString(AutoRefresh) : 'AutoRefresh must be a string',
      AutoRefresh: AutoRefresh,
      assert std.isString(PrivacyBudgetType) : 'PrivacyBudgetType must be a string',
      PrivacyBudgetType: PrivacyBudgetType,
      assert std.isObject(Parameters) : 'Parameters must be an object',
      Parameters: Parameters,
      assert std.isString(MembershipIdentifier) : 'MembershipIdentifier must be a string',
      MembershipIdentifier: MembershipIdentifier,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::CleanRooms::PrivacyBudgetTemplate',
  },
  withArn(Arn): {
    assert std.isString(Arn) : 'Arn must be a string',
    Properties+::: {
      Arn: Arn,
    },
  },
  withCollaborationArn(CollaborationArn): {
    assert std.isString(CollaborationArn) : 'CollaborationArn must be a string',
    Properties+::: {
      CollaborationArn: CollaborationArn,
    },
  },
  withCollaborationIdentifier(CollaborationIdentifier): {
    assert std.isString(CollaborationIdentifier) : 'CollaborationIdentifier must be a string',
    Properties+::: {
      CollaborationIdentifier: CollaborationIdentifier,
    },
  },
  withPrivacyBudgetTemplateIdentifier(PrivacyBudgetTemplateIdentifier): {
    assert std.isString(PrivacyBudgetTemplateIdentifier) : 'PrivacyBudgetTemplateIdentifier must be a string',
    Properties+::: {
      PrivacyBudgetTemplateIdentifier: PrivacyBudgetTemplateIdentifier,
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
  withMembershipArn(MembershipArn): {
    assert std.isString(MembershipArn) : 'MembershipArn must be a string',
    Properties+::: {
      MembershipArn: MembershipArn,
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
