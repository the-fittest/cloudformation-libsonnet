{
  new(
    ConnectorProfileName,
    ConnectionMode,
    ConnectorType,
  ): {
    local base = self,
    Properties: {
      assert std.isString(ConnectorProfileName) : 'ConnectorProfileName must be a string',
      ConnectorProfileName: ConnectorProfileName,
      assert std.isString(ConnectionMode) : 'ConnectionMode must be a string',
      ConnectionMode: ConnectionMode,
      assert std.isString(ConnectorType) : 'ConnectorType must be a string',
      ConnectorType: ConnectorType,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::AppFlow::ConnectorProfile',
  },
  withConnectorProfileArn(ConnectorProfileArn): {
    assert std.isString(ConnectorProfileArn) : 'ConnectorProfileArn must be a string',
    Properties+::: {
      ConnectorProfileArn: ConnectorProfileArn,
    },
  },
  withConnectorLabel(ConnectorLabel): {
    assert std.isString(ConnectorLabel) : 'ConnectorLabel must be a string',
    Properties+::: {
      ConnectorLabel: ConnectorLabel,
    },
  },
  withKMSArn(KMSArn): {
    assert std.isString(KMSArn) : 'KMSArn must be a string',
    Properties+::: {
      KMSArn: KMSArn,
    },
  },
  withConnectorProfileConfig(ConnectorProfileConfig): {
    assert std.isObject(ConnectorProfileConfig) : 'ConnectorProfileConfig must be a object',
    Properties+::: {
      ConnectorProfileConfig: ConnectorProfileConfig,
    },
  },
  withCredentialsArn(CredentialsArn): {
    assert std.isString(CredentialsArn) : 'CredentialsArn must be a string',
    Properties+::: {
      CredentialsArn: CredentialsArn,
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
