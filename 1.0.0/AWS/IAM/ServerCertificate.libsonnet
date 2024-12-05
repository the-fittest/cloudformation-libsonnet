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
    Type: 'AWS::IAM::ServerCertificate',
  },
  setCertificateBody(CertificateBody): {
    Properties+::: {
      CertificateBody:
        if !std.isString(CertificateBody) then (error 'CertificateBody must be a string')
        else if std.isEmpty(CertificateBody) then (error 'CertificateBody must be not empty')
        else if std.length(CertificateBody) < 1 then error ('CertificateBody should have at least 1 characters')
        else if std.length(CertificateBody) > 16384 then error ('CertificateBody should have not more than 16384 characters')
        else CertificateBody,
    },
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
  setServerCertificateName(ServerCertificateName): {
    Properties+::: {
      ServerCertificateName:
        if !std.isString(ServerCertificateName) then (error 'ServerCertificateName must be a string')
        else if std.isEmpty(ServerCertificateName) then (error 'ServerCertificateName must be not empty')
        else if std.length(ServerCertificateName) < 1 then error ('ServerCertificateName should have at least 1 characters')
        else if std.length(ServerCertificateName) > 128 then error ('ServerCertificateName should have not more than 128 characters')
        else ServerCertificateName,
    },
  },
  setPath(Path): {
    Properties+::: {
      Path:
        if !std.isString(Path) then (error 'Path must be a string')
        else if std.isEmpty(Path) then (error 'Path must be not empty')
        else if std.length(Path) < 1 then error ('Path should have at least 1 characters')
        else if std.length(Path) > 512 then error ('Path should have not more than 512 characters')
        else Path,
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
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else if std.length(Arn) < 1 then error ('Arn should have at least 1 characters')
        else if std.length(Arn) > 1600 then error ('Arn should have not more than 1600 characters')
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
