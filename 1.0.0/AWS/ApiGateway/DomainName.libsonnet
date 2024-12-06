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
    Type: 'AWS::ApiGateway::DomainName',
  },
  setMutualTlsAuthentication(MutualTlsAuthentication): {
    Properties+::: {
      MutualTlsAuthentication:
        if !std.isObject(MutualTlsAuthentication) then (error 'MutualTlsAuthentication must be an object')
        else MutualTlsAuthentication,
    },
  },
  setOwnershipVerificationCertificateArn(OwnershipVerificationCertificateArn): {
    Properties+::: {
      OwnershipVerificationCertificateArn:
        if !std.isString(OwnershipVerificationCertificateArn) then (error 'OwnershipVerificationCertificateArn must be a string')
        else if std.isEmpty(OwnershipVerificationCertificateArn) then (error 'OwnershipVerificationCertificateArn must be not empty')
        else OwnershipVerificationCertificateArn,
    },
  },
  setRegionalHostedZoneId(RegionalHostedZoneId): {
    Properties+::: {
      RegionalHostedZoneId:
        if !std.isString(RegionalHostedZoneId) then (error 'RegionalHostedZoneId must be a string')
        else if std.isEmpty(RegionalHostedZoneId) then (error 'RegionalHostedZoneId must be not empty')
        else RegionalHostedZoneId,
    },
  },
  setRegionalDomainName(RegionalDomainName): {
    Properties+::: {
      RegionalDomainName:
        if !std.isString(RegionalDomainName) then (error 'RegionalDomainName must be a string')
        else if std.isEmpty(RegionalDomainName) then (error 'RegionalDomainName must be not empty')
        else RegionalDomainName,
    },
  },
  setDomainName(DomainName): {
    Properties+::: {
      DomainName:
        if !std.isString(DomainName) then (error 'DomainName must be a string')
        else if std.isEmpty(DomainName) then (error 'DomainName must be not empty')
        else DomainName,
    },
  },
  setSecurityPolicy(SecurityPolicy): {
    Properties+::: {
      SecurityPolicy:
        if !std.isString(SecurityPolicy) then (error 'SecurityPolicy must be a string')
        else if std.isEmpty(SecurityPolicy) then (error 'SecurityPolicy must be not empty')
        else SecurityPolicy,
    },
  },
  setDistributionHostedZoneId(DistributionHostedZoneId): {
    Properties+::: {
      DistributionHostedZoneId:
        if !std.isString(DistributionHostedZoneId) then (error 'DistributionHostedZoneId must be a string')
        else if std.isEmpty(DistributionHostedZoneId) then (error 'DistributionHostedZoneId must be not empty')
        else DistributionHostedZoneId,
    },
  },
  setEndpointConfiguration(EndpointConfiguration): {
    Properties+::: {
      EndpointConfiguration:
        if !std.isObject(EndpointConfiguration) then (error 'EndpointConfiguration must be an object')
        else EndpointConfiguration,
    },
  },
  setDistributionDomainName(DistributionDomainName): {
    Properties+::: {
      DistributionDomainName:
        if !std.isString(DistributionDomainName) then (error 'DistributionDomainName must be a string')
        else if std.isEmpty(DistributionDomainName) then (error 'DistributionDomainName must be not empty')
        else DistributionDomainName,
    },
  },
  setRegionalCertificateArn(RegionalCertificateArn): {
    Properties+::: {
      RegionalCertificateArn:
        if !std.isString(RegionalCertificateArn) then (error 'RegionalCertificateArn must be a string')
        else if std.isEmpty(RegionalCertificateArn) then (error 'RegionalCertificateArn must be not empty')
        else RegionalCertificateArn,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else Tags,
    },
  },
  pushTags(Tags): {
    Properties+::: {
      Tags+: Tags,
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
