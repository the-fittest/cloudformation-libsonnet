{
  new(
    AccessRole,
    Url,
  ): {
    local base = self,
    Properties: {
      assert std.isString(AccessRole) : 'AccessRole must be a string',
      AccessRole: AccessRole,
      assert std.isString(Url) : 'Url must be a string',
      Url: Url,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Transfer::Connector',
  },
  withAs2Config(As2Config): {
    assert std.isObject(As2Config) : 'As2Config must be a object',
    Properties+::: {
      As2Config: As2Config,
    },
  },
  withSftpConfig(SftpConfig): {
    assert std.isObject(SftpConfig) : 'SftpConfig must be a object',
    Properties+::: {
      SftpConfig: SftpConfig,
    },
  },
  withArn(Arn): {
    assert std.isString(Arn) : 'Arn must be a string',
    Properties+::: {
      Arn: Arn,
    },
  },
  withConnectorId(ConnectorId): {
    assert std.isString(ConnectorId) : 'ConnectorId must be a string',
    Properties+::: {
      ConnectorId: ConnectorId,
    },
  },
  withLoggingRole(LoggingRole): {
    assert std.isString(LoggingRole) : 'LoggingRole must be a string',
    Properties+::: {
      LoggingRole: LoggingRole,
    },
  },
  withServiceManagedEgressIpAddresses(ServiceManagedEgressIpAddresses): {
    Properties+::: {
      ServiceManagedEgressIpAddresses: (if std.isArray(ServiceManagedEgressIpAddresses) then ServiceManagedEgressIpAddresses else [ServiceManagedEgressIpAddresses]),
    },
  },
  withServiceManagedEgressIpAddressesMixin(ServiceManagedEgressIpAddresses): {
    Properties+::: {
      ServiceManagedEgressIpAddresses+: (if std.isArray(ServiceManagedEgressIpAddresses) then ServiceManagedEgressIpAddresses else [ServiceManagedEgressIpAddresses]),
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
  withSecurityPolicyName(SecurityPolicyName): {
    assert std.isString(SecurityPolicyName) : 'SecurityPolicyName must be a string',
    Properties+::: {
      SecurityPolicyName: SecurityPolicyName,
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
