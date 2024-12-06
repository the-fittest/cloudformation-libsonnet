{
  new(
    FirewallArn,
    LoggingConfiguration,
  ): {
    local base = self,
    Properties: {
      FirewallArn:
        if !std.isString(FirewallArn) then (error 'FirewallArn must be a string')
        else if std.isEmpty(FirewallArn) then (error 'FirewallArn must be not empty')
        else if std.length(FirewallArn) < 1 then error ('FirewallArn should have at least 1 characters')
        else if std.length(FirewallArn) > 256 then error ('FirewallArn should have not more than 256 characters')
        else FirewallArn,
      LoggingConfiguration:
        if !std.isObject(LoggingConfiguration) then (error 'LoggingConfiguration must be an object')
        else if !std.objectHas(LoggingConfiguration, 'LogDestinationConfigs') then (error ' have attribute LogDestinationConfigs')
        else LoggingConfiguration,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::NetworkFirewall::LoggingConfiguration',
  },
  setFirewallName(FirewallName): {
    Properties+::: {
      FirewallName:
        if !std.isString(FirewallName) then (error 'FirewallName must be a string')
        else if std.isEmpty(FirewallName) then (error 'FirewallName must be not empty')
        else if std.length(FirewallName) < 1 then error ('FirewallName should have at least 1 characters')
        else if std.length(FirewallName) > 128 then error ('FirewallName should have not more than 128 characters')
        else FirewallName,
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
