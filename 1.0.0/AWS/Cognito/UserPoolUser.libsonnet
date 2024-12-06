{
  new(
    UserPoolId,
  ): {
    local base = self,
    Properties: {
      UserPoolId:
        if !std.isString(UserPoolId) then (error 'UserPoolId must be a string')
        else if std.isEmpty(UserPoolId) then (error 'UserPoolId must be not empty')
        else UserPoolId,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Cognito::UserPoolUser',
  },
  setDesiredDeliveryMediums(DesiredDeliveryMediums): {
    Properties+::: {
      DesiredDeliveryMediums:
        if !std.isArray(DesiredDeliveryMediums) then (error 'DesiredDeliveryMediums must be an array')
        else DesiredDeliveryMediums,
    },
  },
  pushDesiredDeliveryMediums(DesiredDeliveryMediums): {
    Properties+::: {
      DesiredDeliveryMediums+: DesiredDeliveryMediums,
    },
  },
  setForceAliasCreation(ForceAliasCreation): {
    Properties+::: {
      ForceAliasCreation:
        if !std.isBoolean(ForceAliasCreation) then (error 'ForceAliasCreation must be a boolean') else ForceAliasCreation,
    },
  },
  setUserAttributes(UserAttributes): {
    Properties+::: {
      UserAttributes:
        if !std.isArray(UserAttributes) then (error 'UserAttributes must be an array')
        else UserAttributes,
    },
  },
  pushUserAttributes(UserAttributes): {
    Properties+::: {
      UserAttributes+: UserAttributes,
    },
  },
  setMessageAction(MessageAction): {
    Properties+::: {
      MessageAction:
        if !std.isString(MessageAction) then (error 'MessageAction must be a string')
        else if std.isEmpty(MessageAction) then (error 'MessageAction must be not empty')
        else MessageAction,
    },
  },
  setUsername(Username): {
    Properties+::: {
      Username:
        if !std.isString(Username) then (error 'Username must be a string')
        else if std.isEmpty(Username) then (error 'Username must be not empty')
        else Username,
    },
  },
  setValidationData(ValidationData): {
    Properties+::: {
      ValidationData:
        if !std.isArray(ValidationData) then (error 'ValidationData must be an array')
        else ValidationData,
    },
  },
  pushValidationData(ValidationData): {
    Properties+::: {
      ValidationData+: ValidationData,
    },
  },
  setClientMetadata(ClientMetadata): {
    Properties+::: {
      ClientMetadata:
        if !std.isObject(ClientMetadata) then (error 'ClientMetadata must be an object')
        else ClientMetadata,
    },
  },
  setDependsOn(DependsOn): {
    Properties+::: {
      DependsOn: DependsOn,
    },
  },
  pushDependsOn(DependsOn): {
    Properties+::: {
      DependsOn+: DependsOn,
    },
  },
  setCreationPolicy(CreationPolicy): {
    Properties+::: {
      CreationPolicy: CreationPolicy,
    },
  },
  pushCreationPolicy(CreationPolicy): {
    Properties+::: {
      CreationPolicy+: CreationPolicy,
    },
  },
  setDeletionPolicy(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy: DeletionPolicy,
    },
  },
  pushDeletionPolicy(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy+: DeletionPolicy,
    },
  },
  setUpdatePolicy(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy: UpdatePolicy,
    },
  },
  pushUpdatePolicy(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy+: UpdatePolicy,
    },
  },
  setUpdateReplacePolicy(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy: UpdateReplacePolicy,
    },
  },
  pushUpdateReplacePolicy(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy+: UpdateReplacePolicy,
    },
  },
  setMetadata(Metadata): {
    Properties+::: {
      Metadata: Metadata,
    },
  },
  pushMetadata(Metadata): {
    Properties+::: {
      Metadata+: Metadata,
    },
  },
}
