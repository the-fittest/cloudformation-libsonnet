{
  new(
    AccessRole,
    Url,
  ): {
    local base = self,
    Properties: {
      AccessRole:
        if !std.isString(AccessRole) then (error 'AccessRole must be a string')
        else if std.isEmpty(AccessRole) then (error 'AccessRole must be not empty')
        else if std.length(AccessRole) < 20 then error ('AccessRole should have at least 20 characters')
        else if std.length(AccessRole) > 2048 then error ('AccessRole should have not more than 2048 characters')
        else AccessRole,
      Url:
        if !std.isString(Url) then (error 'Url must be a string')
        else if std.isEmpty(Url) then (error 'Url must be not empty')
        else if std.length(Url) > 255 then error ('Url should have not more than 255 characters')
        else Url,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Transfer::Connector',
  },
  setAs2Config(As2Config): {
    Properties+::: {
      As2Config:
        if !std.isObject(As2Config) then (error 'As2Config must be an object')
        else As2Config,
    },
  },
  setSftpConfig(SftpConfig): {
    Properties+::: {
      SftpConfig:
        if !std.isObject(SftpConfig) then (error 'SftpConfig must be an object')
        else SftpConfig,
    },
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else if std.length(Arn) < 20 then error ('Arn should have at least 20 characters')
        else if std.length(Arn) > 1600 then error ('Arn should have not more than 1600 characters')
        else Arn,
    },
  },
  setConnectorId(ConnectorId): {
    Properties+::: {
      ConnectorId:
        if !std.isString(ConnectorId) then (error 'ConnectorId must be a string')
        else if std.isEmpty(ConnectorId) then (error 'ConnectorId must be not empty')
        else if std.length(ConnectorId) < 19 then error ('ConnectorId should have at least 19 characters')
        else if std.length(ConnectorId) > 19 then error ('ConnectorId should have not more than 19 characters')
        else ConnectorId,
    },
  },
  setLoggingRole(LoggingRole): {
    Properties+::: {
      LoggingRole:
        if !std.isString(LoggingRole) then (error 'LoggingRole must be a string')
        else if std.isEmpty(LoggingRole) then (error 'LoggingRole must be not empty')
        else if std.length(LoggingRole) < 20 then error ('LoggingRole should have at least 20 characters')
        else if std.length(LoggingRole) > 2048 then error ('LoggingRole should have not more than 2048 characters')
        else LoggingRole,
    },
  },
  setServiceManagedEgressIpAddresses(ServiceManagedEgressIpAddresses): {
    Properties+::: {
      ServiceManagedEgressIpAddresses:
        if !std.isArray(ServiceManagedEgressIpAddresses) then (error 'ServiceManagedEgressIpAddresses must be an array')
        else ServiceManagedEgressIpAddresses,
    },
  },
  pushServiceManagedEgressIpAddresses(ServiceManagedEgressIpAddresses): {
    Properties+::: {
      ServiceManagedEgressIpAddresses+: ServiceManagedEgressIpAddresses,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else if std.length(Tags) > 50 then error ('Tags cannot have more than 50 items')
        else Tags,
    },
  },
  pushTags(Tags): {
    Properties+::: {
      Tags+: Tags,
    },
  },
  setSecurityPolicyName(SecurityPolicyName): {
    Properties+::: {
      SecurityPolicyName:
        if !std.isString(SecurityPolicyName) then (error 'SecurityPolicyName must be a string')
        else if std.isEmpty(SecurityPolicyName) then (error 'SecurityPolicyName must be not empty')
        else if std.length(SecurityPolicyName) > 50 then error ('SecurityPolicyName should have not more than 50 characters')
        else SecurityPolicyName,
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
