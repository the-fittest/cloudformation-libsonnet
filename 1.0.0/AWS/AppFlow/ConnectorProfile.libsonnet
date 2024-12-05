{
  new(
    ConnectorProfileName,
    ConnectionMode,
    ConnectorType,
  ): {
    local base = self,
    Properties: {
      ConnectorProfileName:
        if !std.isString(ConnectorProfileName) then (error 'ConnectorProfileName must be a string')
        else if std.isEmpty(ConnectorProfileName) then (error 'ConnectorProfileName must be not empty')
        else if std.length(ConnectorProfileName) > 256 then error ('ConnectorProfileName should have not more than 256 characters')
        else ConnectorProfileName,
      ConnectionMode:
        if !std.isString(ConnectionMode) then (error 'ConnectionMode must be a string')
        else if std.isEmpty(ConnectionMode) then (error 'ConnectionMode must be not empty')
        else if ConnectionMode != 'Public' && ConnectionMode != 'Private' then (error "ConnectionMode should be 'Public' or 'Private'")
        else ConnectionMode,
      ConnectorType:
        if !std.isString(ConnectorType) then (error 'ConnectorType must be a string')
        else if std.isEmpty(ConnectorType) then (error 'ConnectorType must be not empty')
        else if ConnectorType != 'Salesforce' && ConnectorType != 'Pardot' && ConnectorType != 'Singular' && ConnectorType != 'Slack' && ConnectorType != 'Redshift' && ConnectorType != 'Marketo' && ConnectorType != 'Googleanalytics' && ConnectorType != 'Zendesk' && ConnectorType != 'Servicenow' && ConnectorType != 'SAPOData' && ConnectorType != 'Datadog' && ConnectorType != 'Trendmicro' && ConnectorType != 'Snowflake' && ConnectorType != 'Dynatrace' && ConnectorType != 'Infornexus' && ConnectorType != 'Amplitude' && ConnectorType != 'Veeva' && ConnectorType != 'CustomConnector' then (error "ConnectorType should be 'Salesforce' or 'Pardot' or 'Singular' or 'Slack' or 'Redshift' or 'Marketo' or 'Googleanalytics' or 'Zendesk' or 'Servicenow' or 'SAPOData' or 'Datadog' or 'Trendmicro' or 'Snowflake' or 'Dynatrace' or 'Infornexus' or 'Amplitude' or 'Veeva' or 'CustomConnector'")
        else ConnectorType,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::AppFlow::ConnectorProfile',
  },
  setConnectorProfileArn(ConnectorProfileArn): {
    Properties+::: {
      ConnectorProfileArn:
        if !std.isString(ConnectorProfileArn) then (error 'ConnectorProfileArn must be a string')
        else if std.isEmpty(ConnectorProfileArn) then (error 'ConnectorProfileArn must be not empty')
        else if std.length(ConnectorProfileArn) > 512 then error ('ConnectorProfileArn should have not more than 512 characters')
        else ConnectorProfileArn,
    },
  },
  setConnectorLabel(ConnectorLabel): {
    Properties+::: {
      ConnectorLabel:
        if !std.isString(ConnectorLabel) then (error 'ConnectorLabel must be a string')
        else if std.isEmpty(ConnectorLabel) then (error 'ConnectorLabel must be not empty')
        else if std.length(ConnectorLabel) > 256 then error ('ConnectorLabel should have not more than 256 characters')
        else ConnectorLabel,
    },
  },
  setKMSArn(KMSArn): {
    Properties+::: {
      KMSArn:
        if !std.isString(KMSArn) then (error 'KMSArn must be a string')
        else if std.isEmpty(KMSArn) then (error 'KMSArn must be not empty')
        else if std.length(KMSArn) < 20 then error ('KMSArn should have at least 20 characters')
        else if std.length(KMSArn) > 2048 then error ('KMSArn should have not more than 2048 characters')
        else KMSArn,
    },
  },
  setConnectorProfileConfig(ConnectorProfileConfig): {
    Properties+::: {
      ConnectorProfileConfig:
        if !std.isObject(ConnectorProfileConfig) then (error 'ConnectorProfileConfig must be an object')
        else ConnectorProfileConfig,
    },
  },
  setCredentialsArn(CredentialsArn): {
    Properties+::: {
      CredentialsArn:
        if !std.isString(CredentialsArn) then (error 'CredentialsArn must be a string')
        else if std.isEmpty(CredentialsArn) then (error 'CredentialsArn must be not empty')
        else if std.length(CredentialsArn) > 512 then error ('CredentialsArn should have not more than 512 characters')
        else CredentialsArn,
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
