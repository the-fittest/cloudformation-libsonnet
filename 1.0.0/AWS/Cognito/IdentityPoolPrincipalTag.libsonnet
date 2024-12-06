{
  new(
    IdentityPoolId,
    IdentityProviderName,
  ): {
    local base = self,
    Properties: {
      IdentityPoolId:
        if !std.isString(IdentityPoolId) then (error 'IdentityPoolId must be a string')
        else if std.isEmpty(IdentityPoolId) then (error 'IdentityPoolId must be not empty')
        else IdentityPoolId,
      IdentityProviderName:
        if !std.isString(IdentityProviderName) then (error 'IdentityProviderName must be a string')
        else if std.isEmpty(IdentityProviderName) then (error 'IdentityProviderName must be not empty')
        else IdentityProviderName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Cognito::IdentityPoolPrincipalTag',
  },
  setUseDefaults(UseDefaults): {
    Properties+::: {
      UseDefaults:
        if !std.isBoolean(UseDefaults) then (error 'UseDefaults must be a boolean') else UseDefaults,
    },
  },
  setPrincipalTags(PrincipalTags): {
    Properties+::: {
      PrincipalTags:
        if !std.isObject(PrincipalTags) then (error 'PrincipalTags must be an object')
        else PrincipalTags,
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
