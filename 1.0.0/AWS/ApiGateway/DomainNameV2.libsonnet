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
    Type: 'AWS::ApiGateway::DomainNameV2',
  },
  withCertificateArn(CertificateArn): {
    assert std.isString(CertificateArn) : 'CertificateArn must be a string',
    Properties+::: {
      CertificateArn: CertificateArn,
    },
  },
  withDomainName(DomainName): {
    assert std.isString(DomainName) : 'DomainName must be a string',
    Properties+::: {
      DomainName: DomainName,
    },
  },
  withEndpointConfiguration(EndpointConfiguration): {
    assert std.isObject(EndpointConfiguration) : 'EndpointConfiguration must be a object',
    Properties+::: {
      EndpointConfiguration: EndpointConfiguration,
    },
  },
  withSecurityPolicy(SecurityPolicy): {
    assert std.isString(SecurityPolicy) : 'SecurityPolicy must be a string',
    Properties+::: {
      SecurityPolicy: SecurityPolicy,
    },
  },
  withPolicy(Policy): {
    Properties+::: {
      Policy: Policy,
    },
  },
  withManagementPolicy(ManagementPolicy): {
    Properties+::: {
      ManagementPolicy: ManagementPolicy,
    },
  },
  withDomainNameId(DomainNameId): {
    assert std.isString(DomainNameId) : 'DomainNameId must be a string',
    Properties+::: {
      DomainNameId: DomainNameId,
    },
  },
  withDomainNameArn(DomainNameArn): {
    assert std.isString(DomainNameArn) : 'DomainNameArn must be a string',
    Properties+::: {
      DomainNameArn: DomainNameArn,
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
