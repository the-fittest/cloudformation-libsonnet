{
  new(
    Certificate,
    Usage,
  ): {
    local base = self,
    Properties: {
      assert std.isString(Certificate) : 'Certificate must be a string',
      Certificate: Certificate,
      assert std.isString(Usage) : 'Usage must be a string',
      Usage: Usage,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Transfer::Certificate',
  },
  withCertificateChain(CertificateChain): {
    assert std.isString(CertificateChain) : 'CertificateChain must be a string',
    Properties+::: {
      CertificateChain: CertificateChain,
    },
  },
  withPrivateKey(PrivateKey): {
    assert std.isString(PrivateKey) : 'PrivateKey must be a string',
    Properties+::: {
      PrivateKey: PrivateKey,
    },
  },
  withActiveDate(ActiveDate): {
    assert std.isString(ActiveDate) : 'ActiveDate must be a string',
    Properties+::: {
      ActiveDate: ActiveDate,
    },
  },
  withInactiveDate(InactiveDate): {
    assert std.isString(InactiveDate) : 'InactiveDate must be a string',
    Properties+::: {
      InactiveDate: InactiveDate,
    },
  },
  withDescription(Description): {
    assert std.isString(Description) : 'Description must be a string',
    Properties+::: {
      Description: Description,
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
  withArn(Arn): {
    assert std.isString(Arn) : 'Arn must be a string',
    Properties+::: {
      Arn: Arn,
    },
  },
  withCertificateId(CertificateId): {
    assert std.isString(CertificateId) : 'CertificateId must be a string',
    Properties+::: {
      CertificateId: CertificateId,
    },
  },
  withStatus(Status): {
    assert std.isString(Status) : 'Status must be a string',
    Properties+::: {
      Status: Status,
    },
  },
  withType(Type): {
    assert std.isString(Type) : 'Type must be a string',
    Properties+::: {
      Type: Type,
    },
  },
  withSerial(Serial): {
    assert std.isString(Serial) : 'Serial must be a string',
    Properties+::: {
      Serial: Serial,
    },
  },
  withNotBeforeDate(NotBeforeDate): {
    assert std.isString(NotBeforeDate) : 'NotBeforeDate must be a string',
    Properties+::: {
      NotBeforeDate: NotBeforeDate,
    },
  },
  withNotAfterDate(NotAfterDate): {
    assert std.isString(NotAfterDate) : 'NotAfterDate must be a string',
    Properties+::: {
      NotAfterDate: NotAfterDate,
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
