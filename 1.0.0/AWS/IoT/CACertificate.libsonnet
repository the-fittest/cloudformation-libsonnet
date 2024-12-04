{
  new(
    CACertificatePem,
    Status,
  ): {
    local base = self,
    Properties: {
      assert std.isString(CACertificatePem) : 'CACertificatePem must be a string',
      CACertificatePem: CACertificatePem,
      assert std.isString(Status) : 'Status must be a string',
      assert Status == 'ACTIVE' || Status == 'INACTIVE' : "Status should be 'ACTIVE' or 'INACTIVE'",
      Status: Status,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::IoT::CACertificate',
  },
  withVerificationCertificatePem(VerificationCertificatePem): {
    assert std.isString(VerificationCertificatePem) : 'VerificationCertificatePem must be a string',
    Properties+::: {
      VerificationCertificatePem: VerificationCertificatePem,
    },
  },
  withCertificateMode(CertificateMode): {
    assert std.isString(CertificateMode) : 'CertificateMode must be a string',
    assert CertificateMode == 'DEFAULT' || CertificateMode == 'SNI_ONLY' : "CertificateMode should be 'DEFAULT' or 'SNI_ONLY'",
    Properties+::: {
      CertificateMode: CertificateMode,
    },
  },
  withAutoRegistrationStatus(AutoRegistrationStatus): {
    assert std.isString(AutoRegistrationStatus) : 'AutoRegistrationStatus must be a string',
    assert AutoRegistrationStatus == 'ENABLE' || AutoRegistrationStatus == 'DISABLE' : "AutoRegistrationStatus should be 'ENABLE' or 'DISABLE'",
    Properties+::: {
      AutoRegistrationStatus: AutoRegistrationStatus,
    },
  },
  withRemoveAutoRegistration(RemoveAutoRegistration): {
    assert std.isBoolean(RemoveAutoRegistration) : 'RemoveAutoRegistration must be a boolean',
    Properties+::: {
      RemoveAutoRegistration: RemoveAutoRegistration,
    },
  },
  withRegistrationConfig(RegistrationConfig): {
    assert std.isObject(RegistrationConfig) : 'RegistrationConfig must be a object',
    Properties+::: {
      RegistrationConfig: RegistrationConfig,
    },
  },
  withId(Id): {
    assert std.isString(Id) : 'Id must be a string',
    Properties+::: {
      Id: Id,
    },
  },
  withArn(Arn): {
    assert std.isString(Arn) : 'Arn must be a string',
    Properties+::: {
      Arn: Arn,
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
