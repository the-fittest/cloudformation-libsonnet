local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  Workspace: {
    '#': d.pkg(
      name='Workspace',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Grafana.libsonnet',
      help='Definition of AWS::Grafana::Workspace Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Grafana::Workspace Resource
        * AuthenticationProviders List of authentication providers to enable.
        * PermissionType 
        * AccountAccessType 
      |||,
      args=[
        d.arg('AuthenticationProviders', 'd.T.array'),
        d.arg('PermissionType', 'd.T.string'),
        d.arg('AccountAccessType', 'd.T.string'),
      ]
    ),
    new(
      AuthenticationProviders,
      PermissionType,
      AccountAccessType,
    ): {
      local base = self,
      Properties: {
        assert std.isArray(AuthenticationProviders) : 'AuthenticationProviders must be a array',
        AuthenticationProviders: AuthenticationProviders,
        assert std.isString(PermissionType) : 'PermissionType must be a string',
        PermissionType: PermissionType,
        assert std.isString(AccountAccessType) : 'AccountAccessType must be a string',
        AccountAccessType: AccountAccessType,
      },
      DependsOn:: [],
      Type: 'AWS::Grafana::Workspace',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withSsoClientId': d.fn('`withSsoClientId` SsoClientId ', [d.arg('SsoClientId', d.T.string)]),
    withSsoClientId(SsoClientId): {
      assert std.isString(SsoClientId) : 'SsoClientId must be a string',
      Properties+::: { SsoClientId: SsoClientId },
    },
    '#withSamlConfiguration': d.fn('`withSamlConfiguration` SamlConfiguration ', [d.arg('SamlConfiguration', d.T.object)]),
    withSamlConfiguration(SamlConfiguration): {
      assert std.isObject(SamlConfiguration) : 'SamlConfiguration must be a object',
      Properties+::: { SamlConfiguration: SamlConfiguration },
    },
    '#withNetworkAccessControl': d.fn('`withNetworkAccessControl` NetworkAccessControl ', [d.arg('NetworkAccessControl', d.T.object)]),
    withNetworkAccessControl(NetworkAccessControl): {
      assert std.isObject(NetworkAccessControl) : 'NetworkAccessControl must be a object',
      Properties+::: { NetworkAccessControl: NetworkAccessControl },
    },
    '#withVpcConfiguration': d.fn('`withVpcConfiguration` VpcConfiguration ', [d.arg('VpcConfiguration', d.T.object)]),
    withVpcConfiguration(VpcConfiguration): {
      assert std.isObject(VpcConfiguration) : 'VpcConfiguration must be a object',
      Properties+::: { VpcConfiguration: VpcConfiguration },
    },
    '#withSamlConfigurationStatus': d.fn('`withSamlConfigurationStatus` SamlConfigurationStatus ', [d.arg('SamlConfigurationStatus', d.T.string)]),
    withSamlConfigurationStatus(SamlConfigurationStatus): {
      assert std.isString(SamlConfigurationStatus) : 'SamlConfigurationStatus must be a string',
      Properties+::: { SamlConfigurationStatus: SamlConfigurationStatus },
    },
    '#withClientToken': d.fn('`withClientToken` ClientToken ', [d.arg('ClientToken', d.T.string)]),
    withClientToken(ClientToken): {
      assert std.isString(ClientToken) : 'ClientToken must be a string',
      Properties+::: { ClientToken: ClientToken },
    },
    '#withStatus': d.fn('`withStatus` Status ', [d.arg('Status', d.T.string)]),
    withStatus(Status): {
      assert std.isString(Status) : 'Status must be a string',
      Properties+::: { Status: Status },
    },
    '#withCreationTimestamp': d.fn('`withCreationTimestamp` CreationTimestamp ', [d.arg('CreationTimestamp', d.T.string)]),
    withCreationTimestamp(CreationTimestamp): {
      assert std.isString(CreationTimestamp) : 'CreationTimestamp must be a string',
      Properties+::: { CreationTimestamp: CreationTimestamp },
    },
    '#withModificationTimestamp': d.fn('`withModificationTimestamp` ModificationTimestamp ', [d.arg('ModificationTimestamp', d.T.string)]),
    withModificationTimestamp(ModificationTimestamp): {
      assert std.isString(ModificationTimestamp) : 'ModificationTimestamp must be a string',
      Properties+::: { ModificationTimestamp: ModificationTimestamp },
    },
    '#withGrafanaVersion': d.fn('`withGrafanaVersion` GrafanaVersion ', [d.arg('GrafanaVersion', d.T.string)]),
    withGrafanaVersion(GrafanaVersion): {
      assert std.isString(GrafanaVersion) : 'GrafanaVersion must be a string',
      Properties+::: { GrafanaVersion: GrafanaVersion },
    },
    '#withEndpoint': d.fn('`withEndpoint` Endpoint ', [d.arg('Endpoint', d.T.string)]),
    withEndpoint(Endpoint): {
      assert std.isString(Endpoint) : 'Endpoint must be a string',
      Properties+::: { Endpoint: Endpoint },
    },
    '#withOrganizationRoleName': d.fn('`withOrganizationRoleName` OrganizationRoleName ', [d.arg('OrganizationRoleName', d.T.string)]),
    withOrganizationRoleName(OrganizationRoleName): {
      assert std.isString(OrganizationRoleName) : 'OrganizationRoleName must be a string',
      Properties+::: { OrganizationRoleName: OrganizationRoleName },
    },
    '#withStackSetName': d.fn('`withStackSetName` StackSetName ', [d.arg('StackSetName', d.T.string)]),
    withStackSetName(StackSetName): {
      assert std.isString(StackSetName) : 'StackSetName must be a string',
      Properties+::: { StackSetName: StackSetName },
    },
    '#withDataSources': d.fn('`withDataSources` DataSources ', [d.arg('DataSources', d.T.array)]),
    withDataSources(DataSources): {
      assert std.isArray(DataSources) : 'DataSources must be a array',
      Properties+::: { DataSources: DataSources },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
    '#withNotificationDestinations': d.fn('`withNotificationDestinations` NotificationDestinations ', [d.arg('NotificationDestinations', d.T.array)]),
    withNotificationDestinations(NotificationDestinations): {
      assert std.isArray(NotificationDestinations) : 'NotificationDestinations must be a array',
      Properties+::: { NotificationDestinations: NotificationDestinations },
    },
    '#withOrganizationalUnits': d.fn('`withOrganizationalUnits` OrganizationalUnits ', [d.arg('OrganizationalUnits', d.T.array)]),
    withOrganizationalUnits(OrganizationalUnits): {
      assert std.isArray(OrganizationalUnits) : 'OrganizationalUnits must be a array',
      Properties+::: { OrganizationalUnits: OrganizationalUnits },
    },
    '#withRoleArn': d.fn('`withRoleArn` RoleArn ', [d.arg('RoleArn', d.T.string)]),
    withRoleArn(RoleArn): {
      assert std.isString(RoleArn) : 'RoleArn must be a string',
      Properties+::: { RoleArn: RoleArn },
    },
    '#withPluginAdminEnabled': d.fn('`withPluginAdminEnabled` PluginAdminEnabled ', [d.arg('PluginAdminEnabled', d.T.boolean)]),
    withPluginAdminEnabled(PluginAdminEnabled): {
      assert std.isBoolean(PluginAdminEnabled) : 'PluginAdminEnabled must be a boolean',
      Properties+::: { PluginAdminEnabled: PluginAdminEnabled },
    },
  },
}
