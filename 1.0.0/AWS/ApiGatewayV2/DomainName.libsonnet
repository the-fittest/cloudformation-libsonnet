{
  new(
    DomainName,
  ): {
    local base = self,
    Properties: {
      assert std.isString(DomainName) : 'DomainName must be a string',
      DomainName: DomainName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::ApiGatewayV2::DomainName',
  },
  withMutualTlsAuthentication(MutualTlsAuthentication): {
    assert std.isObject(MutualTlsAuthentication) : 'MutualTlsAuthentication must be a object',
    Properties+::: {
      MutualTlsAuthentication: MutualTlsAuthentication,
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
  withDomainNameConfigurations(DomainNameConfigurations): {
    Properties+::: {
      DomainNameConfigurations: (if std.isArray(DomainNameConfigurations) then DomainNameConfigurations else [DomainNameConfigurations]),
    },
  },
  withDomainNameConfigurationsMixin(DomainNameConfigurations): {
    Properties+::: {
      DomainNameConfigurations+: (if std.isArray(DomainNameConfigurations) then DomainNameConfigurations else [DomainNameConfigurations]),
    },
  },
  withTags(Tags): {
    assert std.isObject(Tags) : 'Tags must be a object',
    Properties+::: {
      Tags: Tags,
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
