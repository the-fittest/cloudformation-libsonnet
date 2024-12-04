{
  new(
    ApplicationId,
  ): {
    local base = self,
    Properties: {
      assert std.isString(ApplicationId) : 'ApplicationId must be a string',
      ApplicationId: ApplicationId,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Pinpoint::APNSVoipChannel',
  },
  withId(Id): {
    assert std.isString(Id) : 'Id must be a string',
    Properties+::: {
      Id: Id,
    },
  },
  withBundleId(BundleId): {
    assert std.isString(BundleId) : 'BundleId must be a string',
    Properties+::: {
      BundleId: BundleId,
    },
  },
  withPrivateKey(PrivateKey): {
    assert std.isString(PrivateKey) : 'PrivateKey must be a string',
    Properties+::: {
      PrivateKey: PrivateKey,
    },
  },
  withEnabled(Enabled): {
    assert std.isBoolean(Enabled) : 'Enabled must be a boolean',
    Properties+::: {
      Enabled: Enabled,
    },
  },
  withDefaultAuthenticationMethod(DefaultAuthenticationMethod): {
    assert std.isString(DefaultAuthenticationMethod) : 'DefaultAuthenticationMethod must be a string',
    Properties+::: {
      DefaultAuthenticationMethod: DefaultAuthenticationMethod,
    },
  },
  withTokenKey(TokenKey): {
    assert std.isString(TokenKey) : 'TokenKey must be a string',
    Properties+::: {
      TokenKey: TokenKey,
    },
  },
  withTeamId(TeamId): {
    assert std.isString(TeamId) : 'TeamId must be a string',
    Properties+::: {
      TeamId: TeamId,
    },
  },
  withCertificate(Certificate): {
    assert std.isString(Certificate) : 'Certificate must be a string',
    Properties+::: {
      Certificate: Certificate,
    },
  },
  withTokenKeyId(TokenKeyId): {
    assert std.isString(TokenKeyId) : 'TokenKeyId must be a string',
    Properties+::: {
      TokenKeyId: TokenKeyId,
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
