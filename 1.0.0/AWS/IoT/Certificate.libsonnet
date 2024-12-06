{
  new(
    Status,
  ): {
    local base = self,
    Properties: {
      Status:
        if !std.isString(Status) then (error 'Status must be a string')
        else if std.isEmpty(Status) then (error 'Status must be not empty')
        else if Status != 'ACTIVE' && Status != 'INACTIVE' && Status != 'REVOKED' && Status != 'PENDING_TRANSFER' && Status != 'PENDING_ACTIVATION' then (error "Status should be 'ACTIVE' or 'INACTIVE' or 'REVOKED' or 'PENDING_TRANSFER' or 'PENDING_ACTIVATION'")
        else Status,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::IoT::Certificate',
  },
  setCACertificatePem(CACertificatePem): {
    Properties+::: {
      CACertificatePem:
        if !std.isString(CACertificatePem) then (error 'CACertificatePem must be a string')
        else if std.isEmpty(CACertificatePem) then (error 'CACertificatePem must be not empty')
        else if std.length(CACertificatePem) < 1 then error ('CACertificatePem should have at least 1 characters')
        else if std.length(CACertificatePem) > 65536 then error ('CACertificatePem should have not more than 65536 characters')
        else CACertificatePem,
    },
  },
  setCertificatePem(CertificatePem): {
    Properties+::: {
      CertificatePem:
        if !std.isString(CertificatePem) then (error 'CertificatePem must be a string')
        else if std.isEmpty(CertificatePem) then (error 'CertificatePem must be not empty')
        else if std.length(CertificatePem) < 1 then error ('CertificatePem should have at least 1 characters')
        else if std.length(CertificatePem) > 65536 then error ('CertificatePem should have not more than 65536 characters')
        else CertificatePem,
    },
  },
  setCertificateSigningRequest(CertificateSigningRequest): {
    Properties+::: {
      CertificateSigningRequest:
        if !std.isString(CertificateSigningRequest) then (error 'CertificateSigningRequest must be a string')
        else if std.isEmpty(CertificateSigningRequest) then (error 'CertificateSigningRequest must be not empty')
        else CertificateSigningRequest,
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
