{
  new(
    UserPoolId,
    ClientId,
  ): {
    local base = self,
    Properties: {
      UserPoolId:
        if !std.isString(UserPoolId) then (error 'UserPoolId must be a string')
        else if std.isEmpty(UserPoolId) then (error 'UserPoolId must be not empty')
        else UserPoolId,
      ClientId:
        if !std.isString(ClientId) then (error 'ClientId must be a string')
        else if std.isEmpty(ClientId) then (error 'ClientId must be not empty')
        else ClientId,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Cognito::UserPoolRiskConfigurationAttachment',
  },
  setRiskExceptionConfiguration(RiskExceptionConfiguration): {
    Properties+::: {
      RiskExceptionConfiguration:
        if !std.isObject(RiskExceptionConfiguration) then (error 'RiskExceptionConfiguration must be an object')
        else RiskExceptionConfiguration,
    },
  },
  setCompromisedCredentialsRiskConfiguration(CompromisedCredentialsRiskConfiguration): {
    Properties+::: {
      CompromisedCredentialsRiskConfiguration:
        if !std.isObject(CompromisedCredentialsRiskConfiguration) then (error 'CompromisedCredentialsRiskConfiguration must be an object')
        else if !std.objectHas(CompromisedCredentialsRiskConfiguration, 'Actions') then (error ' have attribute Actions')
        else CompromisedCredentialsRiskConfiguration,
    },
  },
  setAccountTakeoverRiskConfiguration(AccountTakeoverRiskConfiguration): {
    Properties+::: {
      AccountTakeoverRiskConfiguration:
        if !std.isObject(AccountTakeoverRiskConfiguration) then (error 'AccountTakeoverRiskConfiguration must be an object')
        else if !std.objectHas(AccountTakeoverRiskConfiguration, 'Actions') then (error ' have attribute Actions')
        else AccountTakeoverRiskConfiguration,
    },
  },
  setDependsOn(DependsOn): {
    Properties+::: {
      DependsOn: DependsOn,
    },
  },
  setDependsOnMixin(DependsOn): {
    Properties+::: {
      DependsOn+: DependsOn,
    },
  },
  setCreationPolicy(CreationPolicy): {
    Properties+::: {
      CreationPolicy: CreationPolicy,
    },
  },
  setCreationPolicyMixin(CreationPolicy): {
    Properties+::: {
      CreationPolicy+: CreationPolicy,
    },
  },
  setDeletionPolicy(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy: DeletionPolicy,
    },
  },
  setDeletionPolicyMixin(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy+: DeletionPolicy,
    },
  },
  setUpdatePolicy(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy: UpdatePolicy,
    },
  },
  setUpdatePolicyMixin(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy+: UpdatePolicy,
    },
  },
  setUpdateReplacePolicy(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy: UpdateReplacePolicy,
    },
  },
  setUpdateReplacePolicyMixin(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy+: UpdateReplacePolicy,
    },
  },
  setMetadata(Metadata): {
    Properties+::: {
      Metadata: Metadata,
    },
  },
  setMetadataMixin(Metadata): {
    Properties+::: {
      Metadata+: Metadata,
    },
  },
}
