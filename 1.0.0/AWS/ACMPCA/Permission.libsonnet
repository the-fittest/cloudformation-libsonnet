{
  new(
    Actions,
    CertificateAuthorityArn,
    Principal,
  ): {
    local base = self,
    Properties: {
      Actions:
        if !std.isArray(Actions) then (error 'Actions must be an array')
        else Actions,
      CertificateAuthorityArn:
        if !std.isString(CertificateAuthorityArn) then (error 'CertificateAuthorityArn must be a string')
        else if std.isEmpty(CertificateAuthorityArn) then (error 'CertificateAuthorityArn must be not empty')
        else CertificateAuthorityArn,
      Principal:
        if !std.isString(Principal) then (error 'Principal must be a string')
        else if std.isEmpty(Principal) then (error 'Principal must be not empty')
        else Principal,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::ACMPCA::Permission',
  },
  setSourceAccount(SourceAccount): {
    Properties+::: {
      SourceAccount:
        if !std.isString(SourceAccount) then (error 'SourceAccount must be a string')
        else if std.isEmpty(SourceAccount) then (error 'SourceAccount must be not empty')
        else SourceAccount,
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
