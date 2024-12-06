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
  pushDomainNameConfigurations(DomainNameConfigurations): {
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
