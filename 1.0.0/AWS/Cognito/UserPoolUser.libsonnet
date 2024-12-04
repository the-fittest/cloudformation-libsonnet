{
  new(
    UserPoolId,
  ): {
    local base = self,
    Properties: {
      assert std.isString(UserPoolId) : 'UserPoolId must be a string',
      UserPoolId: UserPoolId,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Cognito::UserPoolUser',
  },
  withDesiredDeliveryMediums(DesiredDeliveryMediums): {
    Properties+::: {
      DesiredDeliveryMediums: (if std.isArray(DesiredDeliveryMediums) then DesiredDeliveryMediums else [DesiredDeliveryMediums]),
    },
  },
  withDesiredDeliveryMediumsMixin(DesiredDeliveryMediums): {
    Properties+::: {
      DesiredDeliveryMediums+: (if std.isArray(DesiredDeliveryMediums) then DesiredDeliveryMediums else [DesiredDeliveryMediums]),
    },
  },
  withForceAliasCreation(ForceAliasCreation): {
    assert std.isBoolean(ForceAliasCreation) : 'ForceAliasCreation must be a boolean',
    Properties+::: {
      ForceAliasCreation: ForceAliasCreation,
    },
  },
  withUserAttributes(UserAttributes): {
    Properties+::: {
      UserAttributes: (if std.isArray(UserAttributes) then UserAttributes else [UserAttributes]),
    },
  },
  withUserAttributesMixin(UserAttributes): {
    Properties+::: {
      UserAttributes+: (if std.isArray(UserAttributes) then UserAttributes else [UserAttributes]),
    },
  },
  withMessageAction(MessageAction): {
    assert std.isString(MessageAction) : 'MessageAction must be a string',
    Properties+::: {
      MessageAction: MessageAction,
    },
  },
  withUsername(Username): {
    assert std.isString(Username) : 'Username must be a string',
    Properties+::: {
      Username: Username,
    },
  },
  withValidationData(ValidationData): {
    Properties+::: {
      ValidationData: (if std.isArray(ValidationData) then ValidationData else [ValidationData]),
    },
  },
  withValidationDataMixin(ValidationData): {
    Properties+::: {
      ValidationData+: (if std.isArray(ValidationData) then ValidationData else [ValidationData]),
    },
  },
  withClientMetadata(ClientMetadata): {
    assert std.isObject(ClientMetadata) : 'ClientMetadata must be a object',
    Properties+::: {
      ClientMetadata: ClientMetadata,
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
