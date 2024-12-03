local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  AccessPolicy: {
    '#': d.pkg(
      name='AccessPolicy',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/IoTSiteWise.libsonnet',
      help='Resource schema for AWS::IoTSiteWise::AccessPolicy',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::IoTSiteWise::AccessPolicy Resource
        * AccessPolicyIdentity The identity for this access policy. Choose either a user or a group but not both.
        * AccessPolicyPermission The permission level for this access policy. Valid values are ADMINISTRATOR or VIEWER.
        * AccessPolicyResource The AWS IoT SiteWise Monitor resource for this access policy. Choose either portal or project but not both.
      |||,
      args=[
        d.arg('AccessPolicyIdentity', 'd.T.object'),
        d.arg('AccessPolicyPermission', 'd.T.string'),
        d.arg('AccessPolicyResource', 'd.T.object'),
      ]
    ),
    new(
      AccessPolicyIdentity,
      AccessPolicyPermission,
      AccessPolicyResource,
    ): {
      local base = self,
      Properties: {
        assert std.isObject(AccessPolicyIdentity) : 'AccessPolicyIdentity must be a object',
        AccessPolicyIdentity: AccessPolicyIdentity,
        assert std.isString(AccessPolicyPermission) : 'AccessPolicyPermission must be a string',
        AccessPolicyPermission: AccessPolicyPermission,
        assert std.isObject(AccessPolicyResource) : 'AccessPolicyResource must be a object',
        AccessPolicyResource: AccessPolicyResource,
      },
      DependsOn:: [],
      Type: 'AWS::IoTSiteWise::AccessPolicy',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withAccessPolicyId': d.fn('`withAccessPolicyId` AccessPolicyId ', [d.arg('AccessPolicyId', d.T.string)]),
    withAccessPolicyId(AccessPolicyId): {
      assert std.isString(AccessPolicyId) : 'AccessPolicyId must be a string',
      Properties+::: { AccessPolicyId: AccessPolicyId },
    },
    '#withAccessPolicyArn': d.fn('`withAccessPolicyArn` AccessPolicyArn ', [d.arg('AccessPolicyArn', d.T.string)]),
    withAccessPolicyArn(AccessPolicyArn): {
      assert std.isString(AccessPolicyArn) : 'AccessPolicyArn must be a string',
      Properties+::: { AccessPolicyArn: AccessPolicyArn },
    },
  },
  Asset: {
    '#': d.pkg(
      name='Asset',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/IoTSiteWise.libsonnet',
      help='Resource schema for AWS::IoTSiteWise::Asset',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::IoTSiteWise::Asset Resource
        * AssetName A unique, friendly name for the asset.
        * AssetModelId The ID of the asset model from which to create the asset.
      |||,
      args=[
        d.arg('AssetName', 'd.T.string'),
        d.arg('AssetModelId', 'd.T.string'),
      ]
    ),
    new(
      AssetName,
      AssetModelId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(AssetName) : 'AssetName must be a string',
        AssetName: AssetName,
        assert std.isString(AssetModelId) : 'AssetModelId must be a string',
        AssetModelId: AssetModelId,
      },
      DependsOn:: [],
      Type: 'AWS::IoTSiteWise::Asset',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withAssetId': d.fn('`withAssetId` AssetId ', [d.arg('AssetId', d.T.string)]),
    withAssetId(AssetId): {
      assert std.isString(AssetId) : 'AssetId must be a string',
      Properties+::: { AssetId: AssetId },
    },
    '#withAssetExternalId': d.fn('`withAssetExternalId` AssetExternalId ', [d.arg('AssetExternalId', d.T.string)]),
    withAssetExternalId(AssetExternalId): {
      assert std.isString(AssetExternalId) : 'AssetExternalId must be a string',
      Properties+::: { AssetExternalId: AssetExternalId },
    },
    '#withAssetArn': d.fn('`withAssetArn` AssetArn ', [d.arg('AssetArn', d.T.string)]),
    withAssetArn(AssetArn): {
      assert std.isString(AssetArn) : 'AssetArn must be a string',
      Properties+::: { AssetArn: AssetArn },
    },
    '#withAssetDescription': d.fn('`withAssetDescription` AssetDescription ', [d.arg('AssetDescription', d.T.string)]),
    withAssetDescription(AssetDescription): {
      assert std.isString(AssetDescription) : 'AssetDescription must be a string',
      Properties+::: { AssetDescription: AssetDescription },
    },
    '#withAssetProperties': d.fn('`withAssetProperties` AssetProperties ', [d.arg('AssetProperties', d.T.array)]),
    withAssetProperties(AssetProperties): {
      assert std.isArray(AssetProperties) : 'AssetProperties must be a array',
      Properties+::: { AssetProperties: AssetProperties },
    },
    '#withAssetHierarchies': d.fn('`withAssetHierarchies` AssetHierarchies ', [d.arg('AssetHierarchies', d.T.array)]),
    withAssetHierarchies(AssetHierarchies): {
      assert std.isArray(AssetHierarchies) : 'AssetHierarchies must be a array',
      Properties+::: { AssetHierarchies: AssetHierarchies },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  AssetModel: {
    '#': d.pkg(
      name='AssetModel',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/IoTSiteWise.libsonnet',
      help='Resource schema for AWS::IoTSiteWise::AssetModel',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::IoTSiteWise::AssetModel Resource
        * AssetModelName A unique, friendly name for the asset model.
      |||,
      args=[
        d.arg('AssetModelName', 'd.T.string'),
      ]
    ),
    new(
      AssetModelName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(AssetModelName) : 'AssetModelName must be a string',
        AssetModelName: AssetModelName,
      },
      DependsOn:: [],
      Type: 'AWS::IoTSiteWise::AssetModel',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withAssetModelId': d.fn('`withAssetModelId` AssetModelId ', [d.arg('AssetModelId', d.T.string)]),
    withAssetModelId(AssetModelId): {
      assert std.isString(AssetModelId) : 'AssetModelId must be a string',
      Properties+::: { AssetModelId: AssetModelId },
    },
    '#withAssetModelType': d.fn('`withAssetModelType` AssetModelType ', [d.arg('AssetModelType', d.T.string)]),
    withAssetModelType(AssetModelType): {
      assert std.isString(AssetModelType) : 'AssetModelType must be a string',
      Properties+::: { AssetModelType: AssetModelType },
    },
    '#withAssetModelExternalId': d.fn('`withAssetModelExternalId` AssetModelExternalId ', [d.arg('AssetModelExternalId', d.T.string)]),
    withAssetModelExternalId(AssetModelExternalId): {
      assert std.isString(AssetModelExternalId) : 'AssetModelExternalId must be a string',
      Properties+::: { AssetModelExternalId: AssetModelExternalId },
    },
    '#withAssetModelArn': d.fn('`withAssetModelArn` AssetModelArn ', [d.arg('AssetModelArn', d.T.string)]),
    withAssetModelArn(AssetModelArn): {
      assert std.isString(AssetModelArn) : 'AssetModelArn must be a string',
      Properties+::: { AssetModelArn: AssetModelArn },
    },
    '#withAssetModelDescription': d.fn('`withAssetModelDescription` AssetModelDescription ', [d.arg('AssetModelDescription', d.T.string)]),
    withAssetModelDescription(AssetModelDescription): {
      assert std.isString(AssetModelDescription) : 'AssetModelDescription must be a string',
      Properties+::: { AssetModelDescription: AssetModelDescription },
    },
    '#withAssetModelProperties': d.fn('`withAssetModelProperties` AssetModelProperties ', [d.arg('AssetModelProperties', d.T.array)]),
    withAssetModelProperties(AssetModelProperties): {
      assert std.isArray(AssetModelProperties) : 'AssetModelProperties must be a array',
      Properties+::: { AssetModelProperties: AssetModelProperties },
    },
    '#withAssetModelCompositeModels': d.fn('`withAssetModelCompositeModels` AssetModelCompositeModels ', [d.arg('AssetModelCompositeModels', d.T.array)]),
    withAssetModelCompositeModels(AssetModelCompositeModels): {
      assert std.isArray(AssetModelCompositeModels) : 'AssetModelCompositeModels must be a array',
      Properties+::: { AssetModelCompositeModels: AssetModelCompositeModels },
    },
    '#withAssetModelHierarchies': d.fn('`withAssetModelHierarchies` AssetModelHierarchies ', [d.arg('AssetModelHierarchies', d.T.array)]),
    withAssetModelHierarchies(AssetModelHierarchies): {
      assert std.isArray(AssetModelHierarchies) : 'AssetModelHierarchies must be a array',
      Properties+::: { AssetModelHierarchies: AssetModelHierarchies },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  Dashboard: {
    '#': d.pkg(
      name='Dashboard',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/IoTSiteWise.libsonnet',
      help='Resource schema for AWS::IoTSiteWise::Dashboard',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::IoTSiteWise::Dashboard Resource
        * DashboardDefinition The dashboard definition specified in a JSON literal.
        * DashboardDescription A description for the dashboard.
        * DashboardName A friendly name for the dashboard.
      |||,
      args=[
        d.arg('DashboardDefinition', 'd.T.string'),
        d.arg('DashboardDescription', 'd.T.string'),
        d.arg('DashboardName', 'd.T.string'),
      ]
    ),
    new(
      DashboardDefinition,
      DashboardDescription,
      DashboardName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(DashboardDefinition) : 'DashboardDefinition must be a string',
        DashboardDefinition: DashboardDefinition,
        assert std.isString(DashboardDescription) : 'DashboardDescription must be a string',
        DashboardDescription: DashboardDescription,
        assert std.isString(DashboardName) : 'DashboardName must be a string',
        DashboardName: DashboardName,
      },
      DependsOn:: [],
      Type: 'AWS::IoTSiteWise::Dashboard',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withProjectId': d.fn('`withProjectId` ProjectId ', [d.arg('ProjectId', d.T.string)]),
    withProjectId(ProjectId): {
      assert std.isString(ProjectId) : 'ProjectId must be a string',
      Properties+::: { ProjectId: ProjectId },
    },
    '#withDashboardId': d.fn('`withDashboardId` DashboardId ', [d.arg('DashboardId', d.T.string)]),
    withDashboardId(DashboardId): {
      assert std.isString(DashboardId) : 'DashboardId must be a string',
      Properties+::: { DashboardId: DashboardId },
    },
    '#withDashboardArn': d.fn('`withDashboardArn` DashboardArn ', [d.arg('DashboardArn', d.T.string)]),
    withDashboardArn(DashboardArn): {
      assert std.isString(DashboardArn) : 'DashboardArn must be a string',
      Properties+::: { DashboardArn: DashboardArn },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  Gateway: {
    '#': d.pkg(
      name='Gateway',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/IoTSiteWise.libsonnet',
      help='Resource schema for AWS::IoTSiteWise::Gateway',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::IoTSiteWise::Gateway Resource
        * GatewayName A unique, friendly name for the gateway.
        * GatewayPlatform The gateways platform. You can only specify one platform in a gateway.
      |||,
      args=[
        d.arg('GatewayName', 'd.T.string'),
        d.arg('GatewayPlatform', 'd.T.object'),
      ]
    ),
    new(
      GatewayName,
      GatewayPlatform,
    ): {
      local base = self,
      Properties: {
        assert std.isString(GatewayName) : 'GatewayName must be a string',
        GatewayName: GatewayName,
        assert std.isObject(GatewayPlatform) : 'GatewayPlatform must be a object',
        GatewayPlatform: GatewayPlatform,
      },
      DependsOn:: [],
      Type: 'AWS::IoTSiteWise::Gateway',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withGatewayId': d.fn('`withGatewayId` GatewayId ', [d.arg('GatewayId', d.T.string)]),
    withGatewayId(GatewayId): {
      assert std.isString(GatewayId) : 'GatewayId must be a string',
      Properties+::: { GatewayId: GatewayId },
    },
    '#withGatewayCapabilitySummaries': d.fn('`withGatewayCapabilitySummaries` GatewayCapabilitySummaries ', [d.arg('GatewayCapabilitySummaries', d.T.array)]),
    withGatewayCapabilitySummaries(GatewayCapabilitySummaries): {
      assert std.isArray(GatewayCapabilitySummaries) : 'GatewayCapabilitySummaries must be a array',
      Properties+::: { GatewayCapabilitySummaries: GatewayCapabilitySummaries },
    },
  },
  Portal: {
    '#': d.pkg(
      name='Portal',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/IoTSiteWise.libsonnet',
      help='Resource schema for AWS::IoTSiteWise::Portal',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::IoTSiteWise::Portal Resource
        * PortalContactEmail The AWS administrators contact email address.
        * PortalName A friendly name for the portal.
        * RoleArn The ARN of a service role that allows the portals users to access your AWS IoT SiteWise resources on your behalf.
      |||,
      args=[
        d.arg('PortalContactEmail', 'd.T.string'),
        d.arg('PortalName', 'd.T.string'),
        d.arg('RoleArn', 'd.T.string'),
      ]
    ),
    new(
      PortalContactEmail,
      PortalName,
      RoleArn,
    ): {
      local base = self,
      Properties: {
        assert std.isString(PortalContactEmail) : 'PortalContactEmail must be a string',
        PortalContactEmail: PortalContactEmail,
        assert std.isString(PortalName) : 'PortalName must be a string',
        PortalName: PortalName,
        assert std.isString(RoleArn) : 'RoleArn must be a string',
        RoleArn: RoleArn,
      },
      DependsOn:: [],
      Type: 'AWS::IoTSiteWise::Portal',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withPortalAuthMode': d.fn('`withPortalAuthMode` PortalAuthMode ', [d.arg('PortalAuthMode', d.T.string)]),
    withPortalAuthMode(PortalAuthMode): {
      assert std.isString(PortalAuthMode) : 'PortalAuthMode must be a string',
      Properties+::: { PortalAuthMode: PortalAuthMode },
    },
    '#withPortalArn': d.fn('`withPortalArn` PortalArn ', [d.arg('PortalArn', d.T.string)]),
    withPortalArn(PortalArn): {
      assert std.isString(PortalArn) : 'PortalArn must be a string',
      Properties+::: { PortalArn: PortalArn },
    },
    '#withPortalClientId': d.fn('`withPortalClientId` PortalClientId ', [d.arg('PortalClientId', d.T.string)]),
    withPortalClientId(PortalClientId): {
      assert std.isString(PortalClientId) : 'PortalClientId must be a string',
      Properties+::: { PortalClientId: PortalClientId },
    },
    '#withPortalDescription': d.fn('`withPortalDescription` PortalDescription ', [d.arg('PortalDescription', d.T.string)]),
    withPortalDescription(PortalDescription): {
      assert std.isString(PortalDescription) : 'PortalDescription must be a string',
      Properties+::: { PortalDescription: PortalDescription },
    },
    '#withPortalId': d.fn('`withPortalId` PortalId ', [d.arg('PortalId', d.T.string)]),
    withPortalId(PortalId): {
      assert std.isString(PortalId) : 'PortalId must be a string',
      Properties+::: { PortalId: PortalId },
    },
    '#withPortalStartUrl': d.fn('`withPortalStartUrl` PortalStartUrl ', [d.arg('PortalStartUrl', d.T.string)]),
    withPortalStartUrl(PortalStartUrl): {
      assert std.isString(PortalStartUrl) : 'PortalStartUrl must be a string',
      Properties+::: { PortalStartUrl: PortalStartUrl },
    },
    '#withNotificationSenderEmail': d.fn('`withNotificationSenderEmail` NotificationSenderEmail ', [d.arg('NotificationSenderEmail', d.T.string)]),
    withNotificationSenderEmail(NotificationSenderEmail): {
      assert std.isString(NotificationSenderEmail) : 'NotificationSenderEmail must be a string',
      Properties+::: { NotificationSenderEmail: NotificationSenderEmail },
    },
    '#withAlarms': d.fn('`withAlarms` Alarms ', [d.arg('Alarms', d.T.object)]),
    withAlarms(Alarms): {
      assert std.isObject(Alarms) : 'Alarms must be a object',
      Properties+::: { Alarms: Alarms },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  Project: {
    '#': d.pkg(
      name='Project',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/IoTSiteWise.libsonnet',
      help='Resource schema for AWS::IoTSiteWise::Project',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::IoTSiteWise::Project Resource
        * PortalId The ID of the portal in which to create the project.
        * ProjectName A friendly name for the project.
      |||,
      args=[
        d.arg('PortalId', 'd.T.string'),
        d.arg('ProjectName', 'd.T.string'),
      ]
    ),
    new(
      PortalId,
      ProjectName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(PortalId) : 'PortalId must be a string',
        PortalId: PortalId,
        assert std.isString(ProjectName) : 'ProjectName must be a string',
        ProjectName: ProjectName,
      },
      DependsOn:: [],
      Type: 'AWS::IoTSiteWise::Project',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withProjectId': d.fn('`withProjectId` ProjectId ', [d.arg('ProjectId', d.T.string)]),
    withProjectId(ProjectId): {
      assert std.isString(ProjectId) : 'ProjectId must be a string',
      Properties+::: { ProjectId: ProjectId },
    },
    '#withProjectDescription': d.fn('`withProjectDescription` ProjectDescription ', [d.arg('ProjectDescription', d.T.string)]),
    withProjectDescription(ProjectDescription): {
      assert std.isString(ProjectDescription) : 'ProjectDescription must be a string',
      Properties+::: { ProjectDescription: ProjectDescription },
    },
    '#withProjectArn': d.fn('`withProjectArn` ProjectArn ', [d.arg('ProjectArn', d.T.string)]),
    withProjectArn(ProjectArn): {
      assert std.isString(ProjectArn) : 'ProjectArn must be a string',
      Properties+::: { ProjectArn: ProjectArn },
    },
    '#withAssetIds': d.fn('`withAssetIds` AssetIds ', [d.arg('AssetIds', d.T.array)]),
    withAssetIds(AssetIds): {
      assert std.isArray(AssetIds) : 'AssetIds must be a array',
      Properties+::: { AssetIds: AssetIds },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
}
