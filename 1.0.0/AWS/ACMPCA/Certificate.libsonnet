{
  new(
    CertificateAuthorityArn,
    CertificateSigningRequest,
    SigningAlgorithm,
    Validity,
  ): {
    local base = self,
    Properties: {
      CertificateAuthorityArn:
        if !std.isString(CertificateAuthorityArn) then (error 'CertificateAuthorityArn must be a string')
        else if std.isEmpty(CertificateAuthorityArn) then (error 'CertificateAuthorityArn must be not empty')
        else CertificateAuthorityArn,
      CertificateSigningRequest:
        if !std.isString(CertificateSigningRequest) then (error 'CertificateSigningRequest must be a string')
        else if std.isEmpty(CertificateSigningRequest) then (error 'CertificateSigningRequest must be not empty')
        else if std.length(CertificateSigningRequest) < 1 then error ('CertificateSigningRequest should have at least 1 characters')
        else CertificateSigningRequest,
      SigningAlgorithm:
        if !std.isString(SigningAlgorithm) then (error 'SigningAlgorithm must be a string')
        else if std.isEmpty(SigningAlgorithm) then (error 'SigningAlgorithm must be not empty')
        else SigningAlgorithm,
      Validity:
        if !std.isObject(Validity) then (error 'Validity must be an object')
        else if !std.objectHas(Validity, 'Value') then (error ' have attribute Value')
        else if !std.objectHas(Validity, 'Type') then (error ' have attribute Type')
        else Validity,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::ACMPCA::Certificate',
  },
  setApiPassthrough(ApiPassthrough): {
    Properties+::: {
      ApiPassthrough:
        if !std.isObject(ApiPassthrough) then (error 'ApiPassthrough must be an object')
        else ApiPassthrough,
    },
  },
  setTemplateArn(TemplateArn): {
    Properties+::: {
      TemplateArn:
        if !std.isString(TemplateArn) then (error 'TemplateArn must be a string')
        else if std.isEmpty(TemplateArn) then (error 'TemplateArn must be not empty')
        else TemplateArn,
    },
  },
  setValidityNotBefore(ValidityNotBefore): {
    Properties+::: {
      ValidityNotBefore:
        if !std.isObject(ValidityNotBefore) then (error 'ValidityNotBefore must be an object')
        else if !std.objectHas(ValidityNotBefore, 'Value') then (error ' have attribute Value')
        else if !std.objectHas(ValidityNotBefore, 'Type') then (error ' have attribute Type')
        else ValidityNotBefore,
    },
  },
  setCertificate(Certificate): {
    Properties+::: {
      Certificate:
        if !std.isString(Certificate) then (error 'Certificate must be a string')
        else if std.isEmpty(Certificate) then (error 'Certificate must be not empty')
        else Certificate,
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
