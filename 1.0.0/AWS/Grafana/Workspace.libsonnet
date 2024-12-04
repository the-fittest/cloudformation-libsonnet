{
  new(
    AuthenticationProviders,
    PermissionType,
    AccountAccessType,
  ): {
    local base = self,
    Properties: {
      AuthenticationProviders: (if std.isArray(AuthenticationProviders) then AuthenticationProviders else [AuthenticationProviders]),
      assert std.isString(PermissionType) : 'PermissionType must be a string',
      PermissionType: PermissionType,
      assert std.isString(AccountAccessType) : 'AccountAccessType must be a string',
      AccountAccessType: AccountAccessType,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Grafana::Workspace',
  },
  withSsoClientId(SsoClientId): {
    assert std.isString(SsoClientId) : 'SsoClientId must be a string',
    Properties+::: {
      SsoClientId: SsoClientId,
    },
  },
  withSamlConfiguration(SamlConfiguration): {
    assert std.isObject(SamlConfiguration) : 'SamlConfiguration must be a object',
    Properties+::: {
      SamlConfiguration: SamlConfiguration,
    },
  },
  withNetworkAccessControl(NetworkAccessControl): {
    assert std.isObject(NetworkAccessControl) : 'NetworkAccessControl must be a object',
    Properties+::: {
      NetworkAccessControl: NetworkAccessControl,
    },
  },
  withVpcConfiguration(VpcConfiguration): {
    assert std.isObject(VpcConfiguration) : 'VpcConfiguration must be a object',
    Properties+::: {
      VpcConfiguration: VpcConfiguration,
    },
  },
  withSamlConfigurationStatus(SamlConfigurationStatus): {
    assert std.isString(SamlConfigurationStatus) : 'SamlConfigurationStatus must be a string',
    Properties+::: {
      SamlConfigurationStatus: SamlConfigurationStatus,
    },
  },
  withClientToken(ClientToken): {
    assert std.isString(ClientToken) : 'ClientToken must be a string',
    Properties+::: {
      ClientToken: ClientToken,
    },
  },
  withStatus(Status): {
    assert std.isString(Status) : 'Status must be a string',
    Properties+::: {
      Status: Status,
    },
  },
  withCreationTimestamp(CreationTimestamp): {
    assert std.isString(CreationTimestamp) : 'CreationTimestamp must be a string',
    Properties+::: {
      CreationTimestamp: CreationTimestamp,
    },
  },
  withModificationTimestamp(ModificationTimestamp): {
    assert std.isString(ModificationTimestamp) : 'ModificationTimestamp must be a string',
    Properties+::: {
      ModificationTimestamp: ModificationTimestamp,
    },
  },
  withGrafanaVersion(GrafanaVersion): {
    assert std.isString(GrafanaVersion) : 'GrafanaVersion must be a string',
    Properties+::: {
      GrafanaVersion: GrafanaVersion,
    },
  },
  withEndpoint(Endpoint): {
    assert std.isString(Endpoint) : 'Endpoint must be a string',
    Properties+::: {
      Endpoint: Endpoint,
    },
  },
  withOrganizationRoleName(OrganizationRoleName): {
    assert std.isString(OrganizationRoleName) : 'OrganizationRoleName must be a string',
    Properties+::: {
      OrganizationRoleName: OrganizationRoleName,
    },
  },
  withStackSetName(StackSetName): {
    assert std.isString(StackSetName) : 'StackSetName must be a string',
    Properties+::: {
      StackSetName: StackSetName,
    },
  },
  withDataSources(DataSources): {
    Properties+::: {
      DataSources: (if std.isArray(DataSources) then DataSources else [DataSources]),
    },
  },
  withDataSourcesMixin(DataSources): {
    Properties+::: {
      DataSources+: (if std.isArray(DataSources) then DataSources else [DataSources]),
    },
  },
  withDescription(Description): {
    assert std.isString(Description) : 'Description must be a string',
    Properties+::: {
      Description: Description,
    },
  },
  withId(Id): {
    assert std.isString(Id) : 'Id must be a string',
    Properties+::: {
      Id: Id,
    },
  },
  withName(Name): {
    assert std.isString(Name) : 'Name must be a string',
    Properties+::: {
      Name: Name,
    },
  },
  withNotificationDestinations(NotificationDestinations): {
    Properties+::: {
      NotificationDestinations: (if std.isArray(NotificationDestinations) then NotificationDestinations else [NotificationDestinations]),
    },
  },
  withNotificationDestinationsMixin(NotificationDestinations): {
    Properties+::: {
      NotificationDestinations+: (if std.isArray(NotificationDestinations) then NotificationDestinations else [NotificationDestinations]),
    },
  },
  withOrganizationalUnits(OrganizationalUnits): {
    Properties+::: {
      OrganizationalUnits: (if std.isArray(OrganizationalUnits) then OrganizationalUnits else [OrganizationalUnits]),
    },
  },
  withOrganizationalUnitsMixin(OrganizationalUnits): {
    Properties+::: {
      OrganizationalUnits+: (if std.isArray(OrganizationalUnits) then OrganizationalUnits else [OrganizationalUnits]),
    },
  },
  withRoleArn(RoleArn): {
    assert std.isString(RoleArn) : 'RoleArn must be a string',
    Properties+::: {
      RoleArn: RoleArn,
    },
  },
  withPluginAdminEnabled(PluginAdminEnabled): {
    assert std.isBoolean(PluginAdminEnabled) : 'PluginAdminEnabled must be a boolean',
    Properties+::: {
      PluginAdminEnabled: PluginAdminEnabled,
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
