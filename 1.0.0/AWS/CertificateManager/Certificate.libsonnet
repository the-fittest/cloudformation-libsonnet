{
  new(
    DomainName,
  ): {
    local base = self,
    Properties: {
      DomainName:
        if !std.isString(DomainName) then (error 'DomainName must be a string')
        else if std.isEmpty(DomainName) then (error 'DomainName must be not empty')
        else DomainName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::CertificateManager::Certificate',
  },
  setCertificateAuthorityArn(CertificateAuthorityArn): {
    Properties+::: {
      CertificateAuthorityArn:
        if !std.isString(CertificateAuthorityArn) then (error 'CertificateAuthorityArn must be a string')
        else if std.isEmpty(CertificateAuthorityArn) then (error 'CertificateAuthorityArn must be not empty')
        else CertificateAuthorityArn,
    },
  },
  setDomainValidationOptions(DomainValidationOptions): {
    Properties+::: {
      DomainValidationOptions:
        if !std.isArray(DomainValidationOptions) then (error 'DomainValidationOptions must be an array')
        else DomainValidationOptions,
    },
  },
  pushDomainValidationOptions(DomainValidationOptions): {
    Properties+::: {
      DomainValidationOptions+: DomainValidationOptions,
    },
  },
  setCertificateTransparencyLoggingPreference(CertificateTransparencyLoggingPreference): {
    Properties+::: {
      CertificateTransparencyLoggingPreference:
        if !std.isString(CertificateTransparencyLoggingPreference) then (error 'CertificateTransparencyLoggingPreference must be a string')
        else if std.isEmpty(CertificateTransparencyLoggingPreference) then (error 'CertificateTransparencyLoggingPreference must be not empty')
        else CertificateTransparencyLoggingPreference,
    },
  },
  setValidationMethod(ValidationMethod): {
    Properties+::: {
      ValidationMethod:
        if !std.isString(ValidationMethod) then (error 'ValidationMethod must be a string')
        else if std.isEmpty(ValidationMethod) then (error 'ValidationMethod must be not empty')
        else ValidationMethod,
    },
  },
  setSubjectAlternativeNames(SubjectAlternativeNames): {
    Properties+::: {
      SubjectAlternativeNames:
        if !std.isArray(SubjectAlternativeNames) then (error 'SubjectAlternativeNames must be an array')
        else SubjectAlternativeNames,
    },
  },
  pushSubjectAlternativeNames(SubjectAlternativeNames): {
    Properties+::: {
      SubjectAlternativeNames+: SubjectAlternativeNames,
    },
  },
  setId(Id): {
    Properties+::: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else Id,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else Tags,
    },
  },
  pushTags(Tags): {
    Properties+::: {
      Tags+: Tags,
    },
  },
  setKeyAlgorithm(KeyAlgorithm): {
    Properties+::: {
      KeyAlgorithm:
        if !std.isString(KeyAlgorithm) then (error 'KeyAlgorithm must be a string')
        else if std.isEmpty(KeyAlgorithm) then (error 'KeyAlgorithm must be not empty')
        else KeyAlgorithm,
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
