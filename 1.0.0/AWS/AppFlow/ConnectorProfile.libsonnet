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
      assert ConnectionMode == 'Public' || ConnectionMode == 'Private' : "ConnectionMode should be 'Public' or 'Private'",
      ConnectionMode: ConnectionMode,
      assert std.isString(ConnectorType) : 'ConnectorType must be a string',
      assert ConnectorType == 'Salesforce' || ConnectorType == 'Pardot' || ConnectorType == 'Singular' || ConnectorType == 'Slack' || ConnectorType == 'Redshift' || ConnectorType == 'Marketo' || ConnectorType == 'Googleanalytics' || ConnectorType == 'Zendesk' || ConnectorType == 'Servicenow' || ConnectorType == 'SAPOData' || ConnectorType == 'Datadog' || ConnectorType == 'Trendmicro' || ConnectorType == 'Snowflake' || ConnectorType == 'Dynatrace' || ConnectorType == 'Infornexus' || ConnectorType == 'Amplitude' || ConnectorType == 'Veeva' || ConnectorType == 'CustomConnector' : "ConnectorType should be 'Salesforce' or 'Pardot' or 'Singular' or 'Slack' or 'Redshift' or 'Marketo' or 'Googleanalytics' or 'Zendesk' or 'Servicenow' or 'SAPOData' or 'Datadog' or 'Trendmicro' or 'Snowflake' or 'Dynatrace' or 'Infornexus' or 'Amplitude' or 'Veeva' or 'CustomConnector'",
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
