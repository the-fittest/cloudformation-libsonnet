{
  new(
    AppId,
    DomainName,
    SubDomainSettings,
  ): {
    local base = self,
    Properties: {
      AppId:
        if !std.isString(AppId) then (error 'AppId must be a string')
        else if std.isEmpty(AppId) then (error 'AppId must be not empty')
        else if std.length(AppId) < 1 then error ('AppId should have at least 1 characters')
        else if std.length(AppId) > 20 then error ('AppId should have not more than 20 characters')
        else AppId,
      DomainName:
        if !std.isString(DomainName) then (error 'DomainName must be a string')
        else if std.isEmpty(DomainName) then (error 'DomainName must be not empty')
        else if std.length(DomainName) > 255 then error ('DomainName should have not more than 255 characters')
        else DomainName,
      SubDomainSettings:
        if !std.isArray(SubDomainSettings) then (error 'SubDomainSettings must be an array')
        else if std.length(SubDomainSettings) > 255 then error ('SubDomainSettings cannot have more than 255 items')
        else SubDomainSettings,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Amplify::Domain',
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else if std.length(Arn) > 1000 then error ('Arn should have not more than 1000 characters')
        else Arn,
    },
  },
  setAutoSubDomainCreationPatterns(AutoSubDomainCreationPatterns): {
    Properties+::: {
      AutoSubDomainCreationPatterns:
        if !std.isArray(AutoSubDomainCreationPatterns) then (error 'AutoSubDomainCreationPatterns must be an array')
        else AutoSubDomainCreationPatterns,
    },
  },
  setAutoSubDomainCreationPatternsMixin(AutoSubDomainCreationPatterns): {
    Properties+::: {
      AutoSubDomainCreationPatterns+: AutoSubDomainCreationPatterns,
    },
  },
  setAutoSubDomainIAMRole(AutoSubDomainIAMRole): {
    Properties+::: {
      AutoSubDomainIAMRole:
        if !std.isString(AutoSubDomainIAMRole) then (error 'AutoSubDomainIAMRole must be a string')
        else if std.isEmpty(AutoSubDomainIAMRole) then (error 'AutoSubDomainIAMRole must be not empty')
        else if std.length(AutoSubDomainIAMRole) > 1000 then error ('AutoSubDomainIAMRole should have not more than 1000 characters')
        else AutoSubDomainIAMRole,
    },
  },
  setCertificateRecord(CertificateRecord): {
    Properties+::: {
      CertificateRecord:
        if !std.isString(CertificateRecord) then (error 'CertificateRecord must be a string')
        else if std.isEmpty(CertificateRecord) then (error 'CertificateRecord must be not empty')
        else if std.length(CertificateRecord) > 1000 then error ('CertificateRecord should have not more than 1000 characters')
        else CertificateRecord,
    },
  },
  setCertificate(Certificate): {
    Properties+::: {
      Certificate:
        if !std.isObject(Certificate) then (error 'Certificate must be an object')
        else Certificate,
    },
  },
  setCertificateSettings(CertificateSettings): {
    Properties+::: {
      CertificateSettings:
        if !std.isObject(CertificateSettings) then (error 'CertificateSettings must be an object')
        else CertificateSettings,
    },
  },
  setDomainStatus(DomainStatus): {
    Properties+::: {
      DomainStatus:
        if !std.isString(DomainStatus) then (error 'DomainStatus must be a string')
        else if std.isEmpty(DomainStatus) then (error 'DomainStatus must be not empty')
        else DomainStatus,
    },
  },
  setUpdateStatus(UpdateStatus): {
    Properties+::: {
      UpdateStatus:
        if !std.isString(UpdateStatus) then (error 'UpdateStatus must be a string')
        else if std.isEmpty(UpdateStatus) then (error 'UpdateStatus must be not empty')
        else UpdateStatus,
    },
  },
  setEnableAutoSubDomain(EnableAutoSubDomain): {
    Properties+::: {
      EnableAutoSubDomain:
        if !std.isBoolean(EnableAutoSubDomain) then (error 'EnableAutoSubDomain must be a boolean') else EnableAutoSubDomain,
    },
  },
  setStatusReason(StatusReason): {
    Properties+::: {
      StatusReason:
        if !std.isString(StatusReason) then (error 'StatusReason must be a string')
        else if std.isEmpty(StatusReason) then (error 'StatusReason must be not empty')
        else if std.length(StatusReason) > 1000 then error ('StatusReason should have not more than 1000 characters')
        else StatusReason,
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
