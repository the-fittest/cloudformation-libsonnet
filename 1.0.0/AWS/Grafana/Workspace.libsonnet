{
  new(
    AuthenticationProviders,
    PermissionType,
    AccountAccessType,
  ): {
    local base = self,
    Properties: {
      AuthenticationProviders:
        if !std.isArray(AuthenticationProviders) then (error 'AuthenticationProviders must be an array')
        else if std.length(AuthenticationProviders) < 1 then error ('AuthenticationProviders cannot have less than 1 items')
        else AuthenticationProviders,
      PermissionType:
        if !std.isString(PermissionType) then (error 'PermissionType must be a string')
        else if std.isEmpty(PermissionType) then (error 'PermissionType must be not empty')
        else if PermissionType != 'CUSTOMER_MANAGED' && PermissionType != 'SERVICE_MANAGED' then (error "PermissionType should be 'CUSTOMER_MANAGED' or 'SERVICE_MANAGED'")
        else PermissionType,
      AccountAccessType:
        if !std.isString(AccountAccessType) then (error 'AccountAccessType must be a string')
        else if std.isEmpty(AccountAccessType) then (error 'AccountAccessType must be not empty')
        else if AccountAccessType != 'CURRENT_ACCOUNT' && AccountAccessType != 'ORGANIZATION' then (error "AccountAccessType should be 'CURRENT_ACCOUNT' or 'ORGANIZATION'")
        else AccountAccessType,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Grafana::Workspace',
  },
  setSsoClientId(SsoClientId): {
    Properties+::: {
      SsoClientId:
        if !std.isString(SsoClientId) then (error 'SsoClientId must be a string')
        else if std.isEmpty(SsoClientId) then (error 'SsoClientId must be not empty')
        else SsoClientId,
    },
  },
  setSamlConfiguration(SamlConfiguration): {
    Properties+::: {
      SamlConfiguration:
        if !std.isObject(SamlConfiguration) then (error 'SamlConfiguration must be an object')
        else if !std.objectHas(SamlConfiguration, 'IdpMetadata') then (error ' have attribute IdpMetadata')
        else SamlConfiguration,
    },
  },
  setNetworkAccessControl(NetworkAccessControl): {
    Properties+::: {
      NetworkAccessControl:
        if !std.isObject(NetworkAccessControl) then (error 'NetworkAccessControl must be an object')
        else NetworkAccessControl,
    },
  },
  setVpcConfiguration(VpcConfiguration): {
    Properties+::: {
      VpcConfiguration:
        if !std.isObject(VpcConfiguration) then (error 'VpcConfiguration must be an object')
        else if !std.objectHas(VpcConfiguration, 'SecurityGroupIds') then (error ' have attribute SecurityGroupIds')
        else if !std.objectHas(VpcConfiguration, 'SubnetIds') then (error ' have attribute SubnetIds')
        else VpcConfiguration,
    },
  },
  setSamlConfigurationStatus(SamlConfigurationStatus): {
    Properties+::: {
      SamlConfigurationStatus:
        if !std.isString(SamlConfigurationStatus) then (error 'SamlConfigurationStatus must be a string')
        else if std.isEmpty(SamlConfigurationStatus) then (error 'SamlConfigurationStatus must be not empty')
        else if SamlConfigurationStatus != 'CONFIGURED' && SamlConfigurationStatus != 'NOT_CONFIGURED' then (error "SamlConfigurationStatus should be 'CONFIGURED' or 'NOT_CONFIGURED'")
        else SamlConfigurationStatus,
    },
  },
  setClientToken(ClientToken): {
    Properties+::: {
      ClientToken:
        if !std.isString(ClientToken) then (error 'ClientToken must be a string')
        else if std.isEmpty(ClientToken) then (error 'ClientToken must be not empty')
        else ClientToken,
    },
  },
  setStatus(Status): {
    Properties+::: {
      Status:
        if !std.isString(Status) then (error 'Status must be a string')
        else if std.isEmpty(Status) then (error 'Status must be not empty')
        else if Status != 'ACTIVE' && Status != 'CREATING' && Status != 'DELETING' && Status != 'FAILED' && Status != 'UPDATING' && Status != 'UPGRADING' && Status != 'VERSION_UPDATING' && Status != 'DELETION_FAILED' && Status != 'CREATION_FAILED' && Status != 'UPDATE_FAILED' && Status != 'UPGRADE_FAILED' && Status != 'LICENSE_REMOVAL_FAILED' && Status != 'VERSION_UPDATE_FAILED' then (error "Status should be 'ACTIVE' or 'CREATING' or 'DELETING' or 'FAILED' or 'UPDATING' or 'UPGRADING' or 'VERSION_UPDATING' or 'DELETION_FAILED' or 'CREATION_FAILED' or 'UPDATE_FAILED' or 'UPGRADE_FAILED' or 'LICENSE_REMOVAL_FAILED' or 'VERSION_UPDATE_FAILED'")
        else Status,
    },
  },
  setCreationTimestamp(CreationTimestamp): {
    Properties+::: {
      CreationTimestamp:
        if !std.isString(CreationTimestamp) then (error 'CreationTimestamp must be a string')
        else if std.isEmpty(CreationTimestamp) then (error 'CreationTimestamp must be not empty')
        else CreationTimestamp,
    },
  },
  setModificationTimestamp(ModificationTimestamp): {
    Properties+::: {
      ModificationTimestamp:
        if !std.isString(ModificationTimestamp) then (error 'ModificationTimestamp must be a string')
        else if std.isEmpty(ModificationTimestamp) then (error 'ModificationTimestamp must be not empty')
        else ModificationTimestamp,
    },
  },
  setGrafanaVersion(GrafanaVersion): {
    Properties+::: {
      GrafanaVersion:
        if !std.isString(GrafanaVersion) then (error 'GrafanaVersion must be a string')
        else if std.isEmpty(GrafanaVersion) then (error 'GrafanaVersion must be not empty')
        else if std.length(GrafanaVersion) < 1 then error ('GrafanaVersion should have at least 1 characters')
        else if std.length(GrafanaVersion) > 255 then error ('GrafanaVersion should have not more than 255 characters')
        else GrafanaVersion,
    },
  },
  setEndpoint(Endpoint): {
    Properties+::: {
      Endpoint:
        if !std.isString(Endpoint) then (error 'Endpoint must be a string')
        else if std.isEmpty(Endpoint) then (error 'Endpoint must be not empty')
        else if std.length(Endpoint) < 1 then error ('Endpoint should have at least 1 characters')
        else if std.length(Endpoint) > 2048 then error ('Endpoint should have not more than 2048 characters')
        else Endpoint,
    },
  },
  setOrganizationRoleName(OrganizationRoleName): {
    Properties+::: {
      OrganizationRoleName:
        if !std.isString(OrganizationRoleName) then (error 'OrganizationRoleName must be a string')
        else if std.isEmpty(OrganizationRoleName) then (error 'OrganizationRoleName must be not empty')
        else if std.length(OrganizationRoleName) < 1 then error ('OrganizationRoleName should have at least 1 characters')
        else if std.length(OrganizationRoleName) > 2048 then error ('OrganizationRoleName should have not more than 2048 characters')
        else OrganizationRoleName,
    },
  },
  setStackSetName(StackSetName): {
    Properties+::: {
      StackSetName:
        if !std.isString(StackSetName) then (error 'StackSetName must be a string')
        else if std.isEmpty(StackSetName) then (error 'StackSetName must be not empty')
        else StackSetName,
    },
  },
  setDataSources(DataSources): {
    Properties+::: {
      DataSources:
        if !std.isArray(DataSources) then (error 'DataSources must be an array')
        else DataSources,
    },
  },
  pushDataSources(DataSources): {
    Properties+::: {
      DataSources+: DataSources,
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
  setId(Id): {
    Properties+::: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else Id,
    },
  },
  setName(Name): {
    Properties+::: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else Name,
    },
  },
  setNotificationDestinations(NotificationDestinations): {
    Properties+::: {
      NotificationDestinations:
        if !std.isArray(NotificationDestinations) then (error 'NotificationDestinations must be an array')
        else NotificationDestinations,
    },
  },
  pushNotificationDestinations(NotificationDestinations): {
    Properties+::: {
      NotificationDestinations+: NotificationDestinations,
    },
  },
  setOrganizationalUnits(OrganizationalUnits): {
    Properties+::: {
      OrganizationalUnits:
        if !std.isArray(OrganizationalUnits) then (error 'OrganizationalUnits must be an array')
        else OrganizationalUnits,
    },
  },
  pushOrganizationalUnits(OrganizationalUnits): {
    Properties+::: {
      OrganizationalUnits+: OrganizationalUnits,
    },
  },
  setRoleArn(RoleArn): {
    Properties+::: {
      RoleArn:
        if !std.isString(RoleArn) then (error 'RoleArn must be a string')
        else if std.isEmpty(RoleArn) then (error 'RoleArn must be not empty')
        else if std.length(RoleArn) < 1 then error ('RoleArn should have at least 1 characters')
        else if std.length(RoleArn) > 2048 then error ('RoleArn should have not more than 2048 characters')
        else RoleArn,
    },
  },
  setPluginAdminEnabled(PluginAdminEnabled): {
    Properties+::: {
      PluginAdminEnabled:
        if !std.isBoolean(PluginAdminEnabled) then (error 'PluginAdminEnabled must be a boolean') else PluginAdminEnabled,
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
