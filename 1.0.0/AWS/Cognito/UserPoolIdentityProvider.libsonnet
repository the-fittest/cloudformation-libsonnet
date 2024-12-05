{
  new(
    UserPoolId,
    ProviderName,
    ProviderType,
    ProviderDetails,
  ): {
    local base = self,
    Properties: {
      UserPoolId:
        if !std.isString(UserPoolId) then (error 'UserPoolId must be a string')
        else if std.isEmpty(UserPoolId) then (error 'UserPoolId must be not empty')
        else UserPoolId,
      ProviderName:
        if !std.isString(ProviderName) then (error 'ProviderName must be a string')
        else if std.isEmpty(ProviderName) then (error 'ProviderName must be not empty')
        else ProviderName,
      ProviderType:
        if !std.isString(ProviderType) then (error 'ProviderType must be a string')
        else if std.isEmpty(ProviderType) then (error 'ProviderType must be not empty')
        else ProviderType,
      ProviderDetails:
        if !std.isObject(ProviderDetails) then (error 'ProviderDetails must be an object')
        else ProviderDetails,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Cognito::UserPoolIdentityProvider',
  },
  setIdpIdentifiers(IdpIdentifiers): {
    Properties+::: {
      IdpIdentifiers:
        if !std.isArray(IdpIdentifiers) then (error 'IdpIdentifiers must be an array')
        else IdpIdentifiers,
    },
  },
  setIdpIdentifiersMixin(IdpIdentifiers): {
    Properties+::: {
      IdpIdentifiers+: IdpIdentifiers,
    },
  },
  setAttributeMapping(AttributeMapping): {
    Properties+::: {
      AttributeMapping:
        if !std.isObject(AttributeMapping) then (error 'AttributeMapping must be an object')
        else AttributeMapping,
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
