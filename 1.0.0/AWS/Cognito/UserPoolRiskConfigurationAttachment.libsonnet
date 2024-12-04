{
  new(
    UserPoolId,
    ClientId,
  ): {
    local base = self,
    Properties: {
      assert std.isString(UserPoolId) : 'UserPoolId must be a string',
      UserPoolId: UserPoolId,
      assert std.isString(ClientId) : 'ClientId must be a string',
      ClientId: ClientId,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Cognito::UserPoolRiskConfigurationAttachment',
  },
  withRiskExceptionConfiguration(RiskExceptionConfiguration): {
    assert std.isObject(RiskExceptionConfiguration) : 'RiskExceptionConfiguration must be a object',
    Properties+::: {
      RiskExceptionConfiguration: RiskExceptionConfiguration,
    },
  },
  withCompromisedCredentialsRiskConfiguration(CompromisedCredentialsRiskConfiguration): {
    assert std.isObject(CompromisedCredentialsRiskConfiguration) : 'CompromisedCredentialsRiskConfiguration must be a object',
    Properties+::: {
      CompromisedCredentialsRiskConfiguration: CompromisedCredentialsRiskConfiguration,
    },
  },
  withAccountTakeoverRiskConfiguration(AccountTakeoverRiskConfiguration): {
    assert std.isObject(AccountTakeoverRiskConfiguration) : 'AccountTakeoverRiskConfiguration must be a object',
    Properties+::: {
      AccountTakeoverRiskConfiguration: AccountTakeoverRiskConfiguration,
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
