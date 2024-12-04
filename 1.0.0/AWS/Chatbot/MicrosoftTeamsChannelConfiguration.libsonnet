{
  new(
    TeamId,
    TeamsChannelId,
    TeamsTenantId,
    ConfigurationName,
    IamRoleArn,
  ): {
    local base = self,
    Properties: {
      assert std.isString(TeamId) : 'TeamId must be a string',
      TeamId: TeamId,
      assert std.isString(TeamsChannelId) : 'TeamsChannelId must be a string',
      TeamsChannelId: TeamsChannelId,
      assert std.isString(TeamsTenantId) : 'TeamsTenantId must be a string',
      TeamsTenantId: TeamsTenantId,
      assert std.isString(ConfigurationName) : 'ConfigurationName must be a string',
      ConfigurationName: ConfigurationName,
      assert std.isString(IamRoleArn) : 'IamRoleArn must be a string',
      IamRoleArn: IamRoleArn,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Chatbot::MicrosoftTeamsChannelConfiguration',
  },
  withSnsTopicArns(SnsTopicArns): {
    Properties+::: {
      SnsTopicArns: (if std.isArray(SnsTopicArns) then SnsTopicArns else [SnsTopicArns]),
    },
  },
  withSnsTopicArnsMixin(SnsTopicArns): {
    Properties+::: {
      SnsTopicArns+: (if std.isArray(SnsTopicArns) then SnsTopicArns else [SnsTopicArns]),
    },
  },
  withLoggingLevel(LoggingLevel): {
    assert std.isString(LoggingLevel) : 'LoggingLevel must be a string',
    Properties+::: {
      LoggingLevel: LoggingLevel,
    },
  },
  withArn(Arn): {
    assert std.isString(Arn) : 'Arn must be a string',
    Properties+::: {
      Arn: Arn,
    },
  },
  withGuardrailPolicies(GuardrailPolicies): {
    Properties+::: {
      GuardrailPolicies: (if std.isArray(GuardrailPolicies) then GuardrailPolicies else [GuardrailPolicies]),
    },
  },
  withGuardrailPoliciesMixin(GuardrailPolicies): {
    Properties+::: {
      GuardrailPolicies+: (if std.isArray(GuardrailPolicies) then GuardrailPolicies else [GuardrailPolicies]),
    },
  },
  withUserRoleRequired(UserRoleRequired): {
    assert std.isBoolean(UserRoleRequired) : 'UserRoleRequired must be a boolean',
    Properties+::: {
      UserRoleRequired: UserRoleRequired,
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
  withCustomizationResourceArns(CustomizationResourceArns): {
    Properties+::: {
      CustomizationResourceArns: (if std.isArray(CustomizationResourceArns) then CustomizationResourceArns else [CustomizationResourceArns]),
    },
  },
  withCustomizationResourceArnsMixin(CustomizationResourceArns): {
    Properties+::: {
      CustomizationResourceArns+: (if std.isArray(CustomizationResourceArns) then CustomizationResourceArns else [CustomizationResourceArns]),
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
