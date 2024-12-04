{
  new(
    Type,
    KeyAlgorithm,
    SigningAlgorithm,
    Subject,
  ): {
    local base = self,
    Properties: {
      assert std.isString(Type) : 'Type must be a string',
      Type: Type,
      assert std.isString(KeyAlgorithm) : 'KeyAlgorithm must be a string',
      KeyAlgorithm: KeyAlgorithm,
      assert std.isString(SigningAlgorithm) : 'SigningAlgorithm must be a string',
      SigningAlgorithm: SigningAlgorithm,
      assert std.isObject(Subject) : 'Subject must be an object',
      Subject: Subject,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::ACMPCA::CertificateAuthority',
  },
  withArn(Arn): {
    assert std.isString(Arn) : 'Arn must be a string',
    Properties+::: {
      Arn: Arn,
    },
  },
  withRevocationConfiguration(RevocationConfiguration): {
    assert std.isObject(RevocationConfiguration) : 'RevocationConfiguration must be a object',
    Properties+::: {
      RevocationConfiguration: RevocationConfiguration,
    },
  },
  withTags(Tags): {
    Properties+::: {
      Tags: (if std.isArray(Tags) then Tags else [Tags]),
    },
  },
  withTagsMixin(Tags): {
    Properties+::: {
      Tags+: (if std.isArray(Tags) then Tags else [Tags]),
    },
  },
  withCertificateSigningRequest(CertificateSigningRequest): {
    assert std.isString(CertificateSigningRequest) : 'CertificateSigningRequest must be a string',
    Properties+::: {
      CertificateSigningRequest: CertificateSigningRequest,
    },
  },
  withCsrExtensions(CsrExtensions): {
    assert std.isObject(CsrExtensions) : 'CsrExtensions must be a object',
    Properties+::: {
      CsrExtensions: CsrExtensions,
    },
  },
  withKeyStorageSecurityStandard(KeyStorageSecurityStandard): {
    assert std.isString(KeyStorageSecurityStandard) : 'KeyStorageSecurityStandard must be a string',
    Properties+::: {
      KeyStorageSecurityStandard: KeyStorageSecurityStandard,
    },
  },
  withUsageMode(UsageMode): {
    assert std.isString(UsageMode) : 'UsageMode must be a string',
    Properties+::: {
      UsageMode: UsageMode,
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
