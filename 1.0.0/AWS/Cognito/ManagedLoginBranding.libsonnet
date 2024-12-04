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
    Type: 'AWS::Cognito::ManagedLoginBranding',
  },
  withClientId(ClientId): {
    assert std.isString(ClientId) : 'ClientId must be a string',
    Properties+::: {
      ClientId: ClientId,
    },
  },
  withUseCognitoProvidedValues(UseCognitoProvidedValues): {
    assert std.isBoolean(UseCognitoProvidedValues) : 'UseCognitoProvidedValues must be a boolean',
    Properties+::: {
      UseCognitoProvidedValues: UseCognitoProvidedValues,
    },
  },
  withSettings(Settings): {
    assert std.isObject(Settings) : 'Settings must be a object',
    Properties+::: {
      Settings: Settings,
    },
  },
  withAssets(Assets): {
    Properties+::: {
      Assets: (if std.isArray(Assets) then Assets else [Assets]),
    },
  },
  withAssetsMixin(Assets): {
    Properties+::: {
      Assets+: (if std.isArray(Assets) then Assets else [Assets]),
    },
  },
  withManagedLoginBrandingId(ManagedLoginBrandingId): {
    assert std.isString(ManagedLoginBrandingId) : 'ManagedLoginBrandingId must be a string',
    Properties+::: {
      ManagedLoginBrandingId: ManagedLoginBrandingId,
    },
  },
  withReturnMergedResources(ReturnMergedResources): {
    assert std.isBoolean(ReturnMergedResources) : 'ReturnMergedResources must be a boolean',
    Properties+::: {
      ReturnMergedResources: ReturnMergedResources,
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
