{
  new(
    ApplicationId,
  ): {
    local base = self,
    Properties: {
      ApplicationId:
        if !std.isString(ApplicationId) then (error 'ApplicationId must be a string')
        else if std.isEmpty(ApplicationId) then (error 'ApplicationId must be not empty')
        else ApplicationId,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Pinpoint::APNSVoipSandboxChannel',
  },
  setId(Id): {
    Properties+::: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else Id,
    },
  },
  setBundleId(BundleId): {
    Properties+::: {
      BundleId:
        if !std.isString(BundleId) then (error 'BundleId must be a string')
        else if std.isEmpty(BundleId) then (error 'BundleId must be not empty')
        else BundleId,
    },
  },
  setPrivateKey(PrivateKey): {
    Properties+::: {
      PrivateKey:
        if !std.isString(PrivateKey) then (error 'PrivateKey must be a string')
        else if std.isEmpty(PrivateKey) then (error 'PrivateKey must be not empty')
        else PrivateKey,
    },
  },
  setEnabled(Enabled): {
    Properties+::: {
      Enabled:
        if !std.isBoolean(Enabled) then (error 'Enabled must be a boolean') else Enabled,
    },
  },
  setDefaultAuthenticationMethod(DefaultAuthenticationMethod): {
    Properties+::: {
      DefaultAuthenticationMethod:
        if !std.isString(DefaultAuthenticationMethod) then (error 'DefaultAuthenticationMethod must be a string')
        else if std.isEmpty(DefaultAuthenticationMethod) then (error 'DefaultAuthenticationMethod must be not empty')
        else DefaultAuthenticationMethod,
    },
  },
  setTokenKey(TokenKey): {
    Properties+::: {
      TokenKey:
        if !std.isString(TokenKey) then (error 'TokenKey must be a string')
        else if std.isEmpty(TokenKey) then (error 'TokenKey must be not empty')
        else TokenKey,
    },
  },
  setTeamId(TeamId): {
    Properties+::: {
      TeamId:
        if !std.isString(TeamId) then (error 'TeamId must be a string')
        else if std.isEmpty(TeamId) then (error 'TeamId must be not empty')
        else TeamId,
    },
  },
  setCertificate(Certificate): {
    Properties+::: {
      Certificate:
        if !std.isString(Certificate) then (error 'Certificate must be a string')
        else if std.isEmpty(Certificate) then (error 'Certificate must be not empty')
        else Certificate,
    },
  },
  setTokenKeyId(TokenKeyId): {
    Properties+::: {
      TokenKeyId:
        if !std.isString(TokenKeyId) then (error 'TokenKeyId must be a string')
        else if std.isEmpty(TokenKeyId) then (error 'TokenKeyId must be not empty')
        else TokenKeyId,
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
