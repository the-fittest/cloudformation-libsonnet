{
  new(
    ConnectorProvisioningType,
    ConnectorProvisioningConfig,
  ): {
    local base = self,
    Properties: {
      ConnectorProvisioningType:
        if !std.isString(ConnectorProvisioningType) then (error 'ConnectorProvisioningType must be a string')
        else if std.isEmpty(ConnectorProvisioningType) then (error 'ConnectorProvisioningType must be not empty')
        else if std.length(ConnectorProvisioningType) < 1 then error ('ConnectorProvisioningType should have at least 1 characters')
        else if std.length(ConnectorProvisioningType) > 256 then error ('ConnectorProvisioningType should have not more than 256 characters')
        else ConnectorProvisioningType,
      ConnectorProvisioningConfig:
        if !std.isObject(ConnectorProvisioningConfig) then (error 'ConnectorProvisioningConfig must be an object')
        else ConnectorProvisioningConfig,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::AppFlow::Connector',
  },
  setConnectorLabel(ConnectorLabel): {
    Properties+::: {
      ConnectorLabel:
        if !std.isString(ConnectorLabel) then (error 'ConnectorLabel must be a string')
        else if std.isEmpty(ConnectorLabel) then (error 'ConnectorLabel must be not empty')
        else if std.length(ConnectorLabel) > 512 then error ('ConnectorLabel should have not more than 512 characters')
        else ConnectorLabel,
    },
  },
  setConnectorArn(ConnectorArn): {
    Properties+::: {
      ConnectorArn:
        if !std.isString(ConnectorArn) then (error 'ConnectorArn must be a string')
        else if std.isEmpty(ConnectorArn) then (error 'ConnectorArn must be not empty')
        else if std.length(ConnectorArn) > 512 then error ('ConnectorArn should have not more than 512 characters')
        else ConnectorArn,
    },
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else if std.length(Description) > 2048 then error ('Description should have not more than 2048 characters')
        else Description,
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
