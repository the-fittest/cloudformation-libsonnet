{
  new(
    CertificateAuthorityArn,
    CertificateSigningRequest,
    SigningAlgorithm,
    Validity,
  ): {
    local base = self,
    Properties: {
      assert std.isString(CertificateAuthorityArn) : 'CertificateAuthorityArn must be a string',
      CertificateAuthorityArn: CertificateAuthorityArn,
      assert std.isString(CertificateSigningRequest) : 'CertificateSigningRequest must be a string',
      CertificateSigningRequest: CertificateSigningRequest,
      assert std.isString(SigningAlgorithm) : 'SigningAlgorithm must be a string',
      SigningAlgorithm: SigningAlgorithm,
      assert std.isObject(Validity) : 'Validity must be an object',
      Validity: Validity,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::ACMPCA::Certificate',
  },
  withApiPassthrough(ApiPassthrough): {
    assert std.isObject(ApiPassthrough) : 'ApiPassthrough must be a object',
    Properties+::: {
      ApiPassthrough: ApiPassthrough,
    },
  },
  withTemplateArn(TemplateArn): {
    assert std.isString(TemplateArn) : 'TemplateArn must be a string',
    Properties+::: {
      TemplateArn: TemplateArn,
    },
  },
  withValidityNotBefore(ValidityNotBefore): {
    assert std.isObject(ValidityNotBefore) : 'ValidityNotBefore must be a object',
    Properties+::: {
      ValidityNotBefore: ValidityNotBefore,
    },
  },
  withCertificate(Certificate): {
    assert std.isString(Certificate) : 'Certificate must be a string',
    Properties+::: {
      Certificate: Certificate,
    },
  },
  withArn(Arn): {
    assert std.isString(Arn) : 'Arn must be a string',
    Properties+::: {
      Arn: Arn,
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
