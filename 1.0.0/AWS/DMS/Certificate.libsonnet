{
  new(): {
    local base = self,
    Properties:: {},
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::DMS::Certificate',
  },
  setId(Id): {
    Properties+::: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else Id,
    },
  },
  setCertificateIdentifier(CertificateIdentifier): {
    Properties+::: {
      CertificateIdentifier:
        if !std.isString(CertificateIdentifier) then (error 'CertificateIdentifier must be a string')
        else if std.isEmpty(CertificateIdentifier) then (error 'CertificateIdentifier must be not empty')
        else CertificateIdentifier,
    },
  },
  setCertificatePem(CertificatePem): {
    Properties+::: {
      CertificatePem:
        if !std.isString(CertificatePem) then (error 'CertificatePem must be a string')
        else if std.isEmpty(CertificatePem) then (error 'CertificatePem must be not empty')
        else CertificatePem,
    },
  },
  setCertificateWallet(CertificateWallet): {
    Properties+::: {
      CertificateWallet:
        if !std.isString(CertificateWallet) then (error 'CertificateWallet must be a string')
        else if std.isEmpty(CertificateWallet) then (error 'CertificateWallet must be not empty')
        else CertificateWallet,
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
