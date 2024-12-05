{
  new(
    CertificateName,
    DomainName,
  ): {
    local base = self,
    Properties: {
      CertificateName:
        if !std.isString(CertificateName) then (error 'CertificateName must be a string')
        else if std.isEmpty(CertificateName) then (error 'CertificateName must be not empty')
        else CertificateName,
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
    Type: 'AWS::Lightsail::Certificate',
  },
  setSubjectAlternativeNames(SubjectAlternativeNames): {
    Properties+::: {
      SubjectAlternativeNames:
        if !std.isArray(SubjectAlternativeNames) then (error 'SubjectAlternativeNames must be an array')
        else SubjectAlternativeNames,
    },
  },
  setSubjectAlternativeNamesMixin(SubjectAlternativeNames): {
    Properties+::: {
      SubjectAlternativeNames+: SubjectAlternativeNames,
    },
  },
  setCertificateArn(CertificateArn): {
    Properties+::: {
      CertificateArn:
        if !std.isString(CertificateArn) then (error 'CertificateArn must be a string')
        else if std.isEmpty(CertificateArn) then (error 'CertificateArn must be not empty')
        else CertificateArn,
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
