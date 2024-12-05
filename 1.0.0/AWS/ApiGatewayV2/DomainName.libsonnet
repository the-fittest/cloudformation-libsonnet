{
  new(
    DomainName,
  ): {
    local base = self,
    Properties: {
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
    Type: 'AWS::ApiGatewayV2::DomainName',
  },
  setMutualTlsAuthentication(MutualTlsAuthentication): {
    Properties+::: {
      MutualTlsAuthentication:
        if !std.isObject(MutualTlsAuthentication) then (error 'MutualTlsAuthentication must be an object')
        else MutualTlsAuthentication,
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
  setDomainNameConfigurations(DomainNameConfigurations): {
    Properties+::: {
      DomainNameConfigurations:
        if !std.isArray(DomainNameConfigurations) then (error 'DomainNameConfigurations must be an array')
        else DomainNameConfigurations,
    },
  },
  setDomainNameConfigurationsMixin(DomainNameConfigurations): {
    Properties+::: {
      DomainNameConfigurations+: DomainNameConfigurations,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isObject(Tags) then (error 'Tags must be an object')
        else Tags,
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
