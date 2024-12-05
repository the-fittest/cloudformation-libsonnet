{
  new(
    Type,
    KeyAlgorithm,
    SigningAlgorithm,
    Subject,
  ): {
    local base = self,
    Properties: {
      Type:
        if !std.isString(Type) then (error 'Type must be a string')
        else if std.isEmpty(Type) then (error 'Type must be not empty')
        else Type,
      KeyAlgorithm:
        if !std.isString(KeyAlgorithm) then (error 'KeyAlgorithm must be a string')
        else if std.isEmpty(KeyAlgorithm) then (error 'KeyAlgorithm must be not empty')
        else KeyAlgorithm,
      SigningAlgorithm:
        if !std.isString(SigningAlgorithm) then (error 'SigningAlgorithm must be a string')
        else if std.isEmpty(SigningAlgorithm) then (error 'SigningAlgorithm must be not empty')
        else SigningAlgorithm,
      Subject:
        if !std.isObject(Subject) then (error 'Subject must be an object')
        else Subject,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::ACMPCA::CertificateAuthority',
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else Arn,
    },
  },
  setRevocationConfiguration(RevocationConfiguration): {
    Properties+::: {
      RevocationConfiguration:
        if !std.isObject(RevocationConfiguration) then (error 'RevocationConfiguration must be an object')
        else RevocationConfiguration,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else Tags,
    },
  },
  setTagsMixin(Tags): {
    Properties+::: {
      Tags+: Tags,
    },
  },
  setCertificateSigningRequest(CertificateSigningRequest): {
    Properties+::: {
      CertificateSigningRequest:
        if !std.isString(CertificateSigningRequest) then (error 'CertificateSigningRequest must be a string')
        else if std.isEmpty(CertificateSigningRequest) then (error 'CertificateSigningRequest must be not empty')
        else CertificateSigningRequest,
    },
  },
  setCsrExtensions(CsrExtensions): {
    Properties+::: {
      CsrExtensions:
        if !std.isObject(CsrExtensions) then (error 'CsrExtensions must be an object')
        else CsrExtensions,
    },
  },
  setKeyStorageSecurityStandard(KeyStorageSecurityStandard): {
    Properties+::: {
      KeyStorageSecurityStandard:
        if !std.isString(KeyStorageSecurityStandard) then (error 'KeyStorageSecurityStandard must be a string')
        else if std.isEmpty(KeyStorageSecurityStandard) then (error 'KeyStorageSecurityStandard must be not empty')
        else KeyStorageSecurityStandard,
    },
  },
  setUsageMode(UsageMode): {
    Properties+::: {
      UsageMode:
        if !std.isString(UsageMode) then (error 'UsageMode must be a string')
        else if std.isEmpty(UsageMode) then (error 'UsageMode must be not empty')
        else UsageMode,
    },
  },
  setDependsOn(DependsOn): {
    Properties+::: {
      DependsOn: DependsOn,
    },
  },
  setDependsOnMixin(DependsOn): {
    Properties+::: {
      DependsOn+: DependsOn,
    },
  },
  setCreationPolicy(CreationPolicy): {
    Properties+::: {
      CreationPolicy: CreationPolicy,
    },
  },
  setCreationPolicyMixin(CreationPolicy): {
    Properties+::: {
      CreationPolicy+: CreationPolicy,
    },
  },
  setDeletionPolicy(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy: DeletionPolicy,
    },
  },
  setDeletionPolicyMixin(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy+: DeletionPolicy,
    },
  },
  setUpdatePolicy(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy: UpdatePolicy,
    },
  },
  setUpdatePolicyMixin(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy+: UpdatePolicy,
    },
  },
  setUpdateReplacePolicy(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy: UpdateReplacePolicy,
    },
  },
  setUpdateReplacePolicyMixin(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy+: UpdateReplacePolicy,
    },
  },
  setMetadata(Metadata): {
    Properties+::: {
      Metadata: Metadata,
    },
  },
  setMetadataMixin(Metadata): {
    Properties+::: {
      Metadata+: Metadata,
    },
  },
}
