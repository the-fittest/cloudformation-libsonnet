{
  new(
    CertificateAuthorityArn,
    Certificate,
  ): {
    local base = self,
    Properties: {
      CertificateAuthorityArn:
        if !std.isString(CertificateAuthorityArn) then (error 'CertificateAuthorityArn must be a string')
        else if std.isEmpty(CertificateAuthorityArn) then (error 'CertificateAuthorityArn must be not empty')
        else CertificateAuthorityArn,
      Certificate:
        if !std.isString(Certificate) then (error 'Certificate must be a string')
        else if std.isEmpty(Certificate) then (error 'Certificate must be not empty')
        else Certificate,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::ACMPCA::CertificateAuthorityActivation',
  },
  setCertificateChain(CertificateChain): {
    Properties+::: {
      CertificateChain:
        if !std.isString(CertificateChain) then (error 'CertificateChain must be a string')
        else if std.isEmpty(CertificateChain) then (error 'CertificateChain must be not empty')
        else CertificateChain,
    },
  },
  setStatus(Status): {
    Properties+::: {
      Status:
        if !std.isString(Status) then (error 'Status must be a string')
        else if std.isEmpty(Status) then (error 'Status must be not empty')
        else Status,
    },
  },
  setCompleteCertificateChain(CompleteCertificateChain): {
    Properties+::: {
      CompleteCertificateChain:
        if !std.isString(CompleteCertificateChain) then (error 'CompleteCertificateChain must be a string')
        else if std.isEmpty(CompleteCertificateChain) then (error 'CompleteCertificateChain must be not empty')
        else CompleteCertificateChain,
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
