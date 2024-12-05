{
  new(
    CACertificatePem,
    Status,
  ): {
    local base = self,
    Properties: {
      CACertificatePem:
        if !std.isString(CACertificatePem) then (error 'CACertificatePem must be a string')
        else if std.isEmpty(CACertificatePem) then (error 'CACertificatePem must be not empty')
        else if std.length(CACertificatePem) < 1 then error ('CACertificatePem should have at least 1 characters')
        else if std.length(CACertificatePem) > 65536 then error ('CACertificatePem should have not more than 65536 characters')
        else CACertificatePem,
      Status:
        if !std.isString(Status) then (error 'Status must be a string')
        else if std.isEmpty(Status) then (error 'Status must be not empty')
        else if Status != 'ACTIVE' && Status != 'INACTIVE' then (error "Status should be 'ACTIVE' or 'INACTIVE'")
        else Status,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::IoT::CACertificate',
  },
  setVerificationCertificatePem(VerificationCertificatePem): {
    Properties+::: {
      VerificationCertificatePem:
        if !std.isString(VerificationCertificatePem) then (error 'VerificationCertificatePem must be a string')
        else if std.isEmpty(VerificationCertificatePem) then (error 'VerificationCertificatePem must be not empty')
        else if std.length(VerificationCertificatePem) < 1 then error ('VerificationCertificatePem should have at least 1 characters')
        else if std.length(VerificationCertificatePem) > 65536 then error ('VerificationCertificatePem should have not more than 65536 characters')
        else VerificationCertificatePem,
    },
  },
  setCertificateMode(CertificateMode): {
    Properties+::: {
      CertificateMode:
        if !std.isString(CertificateMode) then (error 'CertificateMode must be a string')
        else if std.isEmpty(CertificateMode) then (error 'CertificateMode must be not empty')
        else if CertificateMode != 'DEFAULT' && CertificateMode != 'SNI_ONLY' then (error "CertificateMode should be 'DEFAULT' or 'SNI_ONLY'")
        else CertificateMode,
    },
  },
  setAutoRegistrationStatus(AutoRegistrationStatus): {
    Properties+::: {
      AutoRegistrationStatus:
        if !std.isString(AutoRegistrationStatus) then (error 'AutoRegistrationStatus must be a string')
        else if std.isEmpty(AutoRegistrationStatus) then (error 'AutoRegistrationStatus must be not empty')
        else if AutoRegistrationStatus != 'ENABLE' && AutoRegistrationStatus != 'DISABLE' then (error "AutoRegistrationStatus should be 'ENABLE' or 'DISABLE'")
        else AutoRegistrationStatus,
    },
  },
  setRemoveAutoRegistration(RemoveAutoRegistration): {
    Properties+::: {
      RemoveAutoRegistration:
        if !std.isBoolean(RemoveAutoRegistration) then (error 'RemoveAutoRegistration must be a boolean') else RemoveAutoRegistration,
    },
  },
  setRegistrationConfig(RegistrationConfig): {
    Properties+::: {
      RegistrationConfig:
        if !std.isObject(RegistrationConfig) then (error 'RegistrationConfig must be an object')
        else RegistrationConfig,
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
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else Arn,
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
