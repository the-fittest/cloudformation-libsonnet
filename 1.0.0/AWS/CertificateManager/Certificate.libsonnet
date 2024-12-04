{
  new(
    DomainName,
  ): {
    local base = self,
    Properties: {
      assert std.isString(DomainName) : 'DomainName must be a string',
      DomainName: DomainName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::CertificateManager::Certificate',
  },
  withCertificateAuthorityArn(CertificateAuthorityArn): {
    assert std.isString(CertificateAuthorityArn) : 'CertificateAuthorityArn must be a string',
    Properties+::: {
      CertificateAuthorityArn: CertificateAuthorityArn,
    },
  },
  withDomainValidationOptions(DomainValidationOptions): {
    Properties+::: {
      DomainValidationOptions: (if std.isArray(DomainValidationOptions) then DomainValidationOptions else [DomainValidationOptions]),
    },
  },
  withDomainValidationOptionsMixin(DomainValidationOptions): {
    Properties+::: {
      DomainValidationOptions+: (if std.isArray(DomainValidationOptions) then DomainValidationOptions else [DomainValidationOptions]),
    },
  },
  withCertificateTransparencyLoggingPreference(CertificateTransparencyLoggingPreference): {
    assert std.isString(CertificateTransparencyLoggingPreference) : 'CertificateTransparencyLoggingPreference must be a string',
    Properties+::: {
      CertificateTransparencyLoggingPreference: CertificateTransparencyLoggingPreference,
    },
  },
  withValidationMethod(ValidationMethod): {
    assert std.isString(ValidationMethod) : 'ValidationMethod must be a string',
    Properties+::: {
      ValidationMethod: ValidationMethod,
    },
  },
  withSubjectAlternativeNames(SubjectAlternativeNames): {
    Properties+::: {
      SubjectAlternativeNames: (if std.isArray(SubjectAlternativeNames) then SubjectAlternativeNames else [SubjectAlternativeNames]),
    },
  },
  withSubjectAlternativeNamesMixin(SubjectAlternativeNames): {
    Properties+::: {
      SubjectAlternativeNames+: (if std.isArray(SubjectAlternativeNames) then SubjectAlternativeNames else [SubjectAlternativeNames]),
    },
  },
  withId(Id): {
    assert std.isString(Id) : 'Id must be a string',
    Properties+::: {
      Id: Id,
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
  withKeyAlgorithm(KeyAlgorithm): {
    assert std.isString(KeyAlgorithm) : 'KeyAlgorithm must be a string',
    Properties+::: {
      KeyAlgorithm: KeyAlgorithm,
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
