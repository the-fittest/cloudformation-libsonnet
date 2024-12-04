{
  new(
    AppId,
    DomainName,
    SubDomainSettings,
  ): {
    local base = self,
    Properties: {
      assert std.isString(AppId) : 'AppId must be a string',
      AppId: AppId,
      assert std.isString(DomainName) : 'DomainName must be a string',
      DomainName: DomainName,
      SubDomainSettings: (if std.isArray(SubDomainSettings) then SubDomainSettings else [SubDomainSettings]),
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Amplify::Domain',
  },
  withArn(Arn): {
    assert std.isString(Arn) : 'Arn must be a string',
    Properties+::: {
      Arn: Arn,
    },
  },
  withAutoSubDomainCreationPatterns(AutoSubDomainCreationPatterns): {
    Properties+::: {
      AutoSubDomainCreationPatterns: (if std.isArray(AutoSubDomainCreationPatterns) then AutoSubDomainCreationPatterns else [AutoSubDomainCreationPatterns]),
    },
  },
  withAutoSubDomainCreationPatternsMixin(AutoSubDomainCreationPatterns): {
    Properties+::: {
      AutoSubDomainCreationPatterns+: (if std.isArray(AutoSubDomainCreationPatterns) then AutoSubDomainCreationPatterns else [AutoSubDomainCreationPatterns]),
    },
  },
  withAutoSubDomainIAMRole(AutoSubDomainIAMRole): {
    assert std.isString(AutoSubDomainIAMRole) : 'AutoSubDomainIAMRole must be a string',
    Properties+::: {
      AutoSubDomainIAMRole: AutoSubDomainIAMRole,
    },
  },
  withCertificateRecord(CertificateRecord): {
    assert std.isString(CertificateRecord) : 'CertificateRecord must be a string',
    Properties+::: {
      CertificateRecord: CertificateRecord,
    },
  },
  withCertificate(Certificate): {
    assert std.isObject(Certificate) : 'Certificate must be a object',
    Properties+::: {
      Certificate: Certificate,
    },
  },
  withCertificateSettings(CertificateSettings): {
    assert std.isObject(CertificateSettings) : 'CertificateSettings must be a object',
    Properties+::: {
      CertificateSettings: CertificateSettings,
    },
  },
  withDomainStatus(DomainStatus): {
    assert std.isString(DomainStatus) : 'DomainStatus must be a string',
    Properties+::: {
      DomainStatus: DomainStatus,
    },
  },
  withUpdateStatus(UpdateStatus): {
    assert std.isString(UpdateStatus) : 'UpdateStatus must be a string',
    Properties+::: {
      UpdateStatus: UpdateStatus,
    },
  },
  withEnableAutoSubDomain(EnableAutoSubDomain): {
    assert std.isBoolean(EnableAutoSubDomain) : 'EnableAutoSubDomain must be a boolean',
    Properties+::: {
      EnableAutoSubDomain: EnableAutoSubDomain,
    },
  },
  withStatusReason(StatusReason): {
    assert std.isString(StatusReason) : 'StatusReason must be a string',
    Properties+::: {
      StatusReason: StatusReason,
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
