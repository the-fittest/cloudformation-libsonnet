{
  new(
    Certificate,
    Usage,
  ): {
    local base = self,
    Properties: {
      Certificate:
        if !std.isString(Certificate) then (error 'Certificate must be a string')
        else if std.isEmpty(Certificate) then (error 'Certificate must be not empty')
        else if std.length(Certificate) < 1 then error ('Certificate should have at least 1 characters')
        else if std.length(Certificate) > 16384 then error ('Certificate should have not more than 16384 characters')
        else Certificate,
      Usage:
        if !std.isString(Usage) then (error 'Usage must be a string')
        else if std.isEmpty(Usage) then (error 'Usage must be not empty')
        else if Usage != 'SIGNING' && Usage != 'ENCRYPTION' && Usage != 'TLS' then (error "Usage should be 'SIGNING' or 'ENCRYPTION' or 'TLS'")
        else Usage,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Transfer::Certificate',
  },
  setCertificateChain(CertificateChain): {
    Properties+::: {
      CertificateChain:
        if !std.isString(CertificateChain) then (error 'CertificateChain must be a string')
        else if std.isEmpty(CertificateChain) then (error 'CertificateChain must be not empty')
        else if std.length(CertificateChain) < 1 then error ('CertificateChain should have at least 1 characters')
        else if std.length(CertificateChain) > 2097152 then error ('CertificateChain should have not more than 2097152 characters')
        else CertificateChain,
    },
  },
  setPrivateKey(PrivateKey): {
    Properties+::: {
      PrivateKey:
        if !std.isString(PrivateKey) then (error 'PrivateKey must be a string')
        else if std.isEmpty(PrivateKey) then (error 'PrivateKey must be not empty')
        else if std.length(PrivateKey) < 1 then error ('PrivateKey should have at least 1 characters')
        else if std.length(PrivateKey) > 16384 then error ('PrivateKey should have not more than 16384 characters')
        else PrivateKey,
    },
  },
  setActiveDate(ActiveDate): {
    Properties+::: {
      ActiveDate:
        if !std.isString(ActiveDate) then (error 'ActiveDate must be a string')
        else if std.isEmpty(ActiveDate) then (error 'ActiveDate must be not empty')
        else ActiveDate,
    },
  },
  setInactiveDate(InactiveDate): {
    Properties+::: {
      InactiveDate:
        if !std.isString(InactiveDate) then (error 'InactiveDate must be a string')
        else if std.isEmpty(InactiveDate) then (error 'InactiveDate must be not empty')
        else InactiveDate,
    },
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else if std.length(Description) < 1 then error ('Description should have at least 1 characters')
        else if std.length(Description) > 200 then error ('Description should have not more than 200 characters')
        else Description,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else if std.length(Tags) > 50 then error ('Tags cannot have more than 50 items')
        else Tags,
    },
  },
  setTagsMixin(Tags): {
    Properties+::: {
      Tags+: Tags,
    },
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else if std.length(Arn) < 20 then error ('Arn should have at least 20 characters')
        else if std.length(Arn) > 1600 then error ('Arn should have not more than 1600 characters')
        else Arn,
    },
  },
  setCertificateId(CertificateId): {
    Properties+::: {
      CertificateId:
        if !std.isString(CertificateId) then (error 'CertificateId must be a string')
        else if std.isEmpty(CertificateId) then (error 'CertificateId must be not empty')
        else if std.length(CertificateId) < 22 then error ('CertificateId should have at least 22 characters')
        else if std.length(CertificateId) > 22 then error ('CertificateId should have not more than 22 characters')
        else CertificateId,
    },
  },
  setStatus(Status): {
    Properties+::: {
      Status:
        if !std.isString(Status) then (error 'Status must be a string')
        else if std.isEmpty(Status) then (error 'Status must be not empty')
        else if Status != 'ACTIVE' && Status != 'PENDING' && Status != 'INACTIVE' then (error "Status should be 'ACTIVE' or 'PENDING' or 'INACTIVE'")
        else Status,
    },
  },
  setType(Type): {
    Properties+::: {
      Type:
        if !std.isString(Type) then (error 'Type must be a string')
        else if std.isEmpty(Type) then (error 'Type must be not empty')
        else if Type != 'CERTIFICATE' && Type != 'CERTIFICATE_WITH_PRIVATE_KEY' then (error "Type should be 'CERTIFICATE' or 'CERTIFICATE_WITH_PRIVATE_KEY'")
        else Type,
    },
  },
  setSerial(Serial): {
    Properties+::: {
      Serial:
        if !std.isString(Serial) then (error 'Serial must be a string')
        else if std.isEmpty(Serial) then (error 'Serial must be not empty')
        else if std.length(Serial) > 48 then error ('Serial should have not more than 48 characters')
        else Serial,
    },
  },
  setNotBeforeDate(NotBeforeDate): {
    Properties+::: {
      NotBeforeDate:
        if !std.isString(NotBeforeDate) then (error 'NotBeforeDate must be a string')
        else if std.isEmpty(NotBeforeDate) then (error 'NotBeforeDate must be not empty')
        else NotBeforeDate,
    },
  },
  setNotAfterDate(NotAfterDate): {
    Properties+::: {
      NotAfterDate:
        if !std.isString(NotAfterDate) then (error 'NotAfterDate must be a string')
        else if std.isEmpty(NotAfterDate) then (error 'NotAfterDate must be not empty')
        else NotAfterDate,
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
