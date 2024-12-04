{
  new(
  ): {
    local base = self,
    Properties: {
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::ApiGateway::DomainName',
  },
  withMutualTlsAuthentication(MutualTlsAuthentication): {
    assert std.isObject(MutualTlsAuthentication) : 'MutualTlsAuthentication must be a object',
    Properties+::: {
      MutualTlsAuthentication: MutualTlsAuthentication,
    },
  },
  withOwnershipVerificationCertificateArn(OwnershipVerificationCertificateArn): {
    assert std.isString(OwnershipVerificationCertificateArn) : 'OwnershipVerificationCertificateArn must be a string',
    Properties+::: {
      OwnershipVerificationCertificateArn: OwnershipVerificationCertificateArn,
    },
  },
  withRegionalHostedZoneId(RegionalHostedZoneId): {
    assert std.isString(RegionalHostedZoneId) : 'RegionalHostedZoneId must be a string',
    Properties+::: {
      RegionalHostedZoneId: RegionalHostedZoneId,
    },
  },
  withRegionalDomainName(RegionalDomainName): {
    assert std.isString(RegionalDomainName) : 'RegionalDomainName must be a string',
    Properties+::: {
      RegionalDomainName: RegionalDomainName,
    },
  },
  withDomainName(DomainName): {
    assert std.isString(DomainName) : 'DomainName must be a string',
    Properties+::: {
      DomainName: DomainName,
    },
  },
  withSecurityPolicy(SecurityPolicy): {
    assert std.isString(SecurityPolicy) : 'SecurityPolicy must be a string',
    Properties+::: {
      SecurityPolicy: SecurityPolicy,
    },
  },
  withDistributionHostedZoneId(DistributionHostedZoneId): {
    assert std.isString(DistributionHostedZoneId) : 'DistributionHostedZoneId must be a string',
    Properties+::: {
      DistributionHostedZoneId: DistributionHostedZoneId,
    },
  },
  withEndpointConfiguration(EndpointConfiguration): {
    assert std.isObject(EndpointConfiguration) : 'EndpointConfiguration must be a object',
    Properties+::: {
      EndpointConfiguration: EndpointConfiguration,
    },
  },
  withDistributionDomainName(DistributionDomainName): {
    assert std.isString(DistributionDomainName) : 'DistributionDomainName must be a string',
    Properties+::: {
      DistributionDomainName: DistributionDomainName,
    },
  },
  withRegionalCertificateArn(RegionalCertificateArn): {
    assert std.isString(RegionalCertificateArn) : 'RegionalCertificateArn must be a string',
    Properties+::: {
      RegionalCertificateArn: RegionalCertificateArn,
    },
  },
  withTags(Tags): {
    Properties+::: {
      Tags: (if std.isArray(Tags) then Tags else [Tags]),
    },
  },
  withTagsMixin(Tags): {
    Properties+::: {
      Tags+: (if std.isArray(Tags) then Tags else [Tags]),
    },
  },
  withCertificateArn(CertificateArn): {
    assert std.isString(CertificateArn) : 'CertificateArn must be a string',
    Properties+::: {
      CertificateArn: CertificateArn,
    },
  },
  withDependsOn(DependsOn): {
    Properties+::: {
      DependsOn: (if std.isArray(DependsOn) then DependsOn else [DependsOn]),
    },
  },
  withDependsOnMixin(DependsOn): {
    Properties+::: {
      DependsOn+: (if std.isArray(DependsOn) then DependsOn else [DependsOn]),
    },
  },
  withCreationPolicy(CreationPolicy): {
    Properties+::: {
      CreationPolicy: (if std.isArray(CreationPolicy) then CreationPolicy else [CreationPolicy]),
    },
  },
  withCreationPolicyMixin(CreationPolicy): {
    Properties+::: {
      CreationPolicy+: (if std.isArray(CreationPolicy) then CreationPolicy else [CreationPolicy]),
    },
  },
  withDeletionPolicy(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy: (if std.isArray(DeletionPolicy) then DeletionPolicy else [DeletionPolicy]),
    },
  },
  withDeletionPolicyMixin(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy+: (if std.isArray(DeletionPolicy) then DeletionPolicy else [DeletionPolicy]),
    },
  },
  withUpdatePolicy(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy: (if std.isArray(UpdatePolicy) then UpdatePolicy else [UpdatePolicy]),
    },
  },
  withUpdatePolicyMixin(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy+: (if std.isArray(UpdatePolicy) then UpdatePolicy else [UpdatePolicy]),
    },
  },
  withUpdateReplacePolicy(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy: (if std.isArray(UpdateReplacePolicy) then UpdateReplacePolicy else [UpdateReplacePolicy]),
    },
  },
  withUpdateReplacePolicyMixin(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy+: (if std.isArray(UpdateReplacePolicy) then UpdateReplacePolicy else [UpdateReplacePolicy]),
    },
  },
  withMetadata(Metadata): {
    Properties+::: {
      Metadata: (if std.isArray(Metadata) then Metadata else [Metadata]),
    },
  },
  withMetadataMixin(Metadata): {
    Properties+::: {
      Metadata+: (if std.isArray(Metadata) then Metadata else [Metadata]),
    },
  },
}
