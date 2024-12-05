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
    Type: 'AWS::Cognito::ManagedLoginBranding',
  },
  setClientId(ClientId): {
    Properties+::: {
      ClientId:
        if !std.isString(ClientId) then (error 'ClientId must be a string')
        else if std.isEmpty(ClientId) then (error 'ClientId must be not empty')
        else ClientId,
    },
  },
  setUseCognitoProvidedValues(UseCognitoProvidedValues): {
    Properties+::: {
      UseCognitoProvidedValues:
        if !std.isBoolean(UseCognitoProvidedValues) then (error 'UseCognitoProvidedValues must be a boolean') else UseCognitoProvidedValues,
    },
  },
  setSettings(Settings): {
    Properties+::: {
      Settings:
        if !std.isObject(Settings) then (error 'Settings must be an object')
        else Settings,
    },
  },
  setAssets(Assets): {
    Properties+::: {
      Assets:
        if !std.isArray(Assets) then (error 'Assets must be an array')
        else Assets,
    },
  },
  setAssetsMixin(Assets): {
    Properties+::: {
      Assets+: Assets,
    },
  },
  setManagedLoginBrandingId(ManagedLoginBrandingId): {
    Properties+::: {
      ManagedLoginBrandingId:
        if !std.isString(ManagedLoginBrandingId) then (error 'ManagedLoginBrandingId must be a string')
        else if std.isEmpty(ManagedLoginBrandingId) then (error 'ManagedLoginBrandingId must be not empty')
        else ManagedLoginBrandingId,
    },
  },
  setReturnMergedResources(ReturnMergedResources): {
    Properties+::: {
      ReturnMergedResources:
        if !std.isBoolean(ReturnMergedResources) then (error 'ReturnMergedResources must be a boolean') else ReturnMergedResources,
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
