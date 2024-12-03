local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  Application: {
    '#': d.pkg(
      name='Application',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ApplicationInsights.libsonnet',
      help='Resource schema for AWS::ApplicationInsights::Application',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ApplicationInsights::Application Resource
        * ResourceGroupName The name of the resource group.
      |||,
      args=[
        d.arg('ResourceGroupName', 'd.T.string'),
      ]
    ),
    new(
      ResourceGroupName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ResourceGroupName) : 'ResourceGroupName must be a string',
        ResourceGroupName: ResourceGroupName,
      },
      DependsOn:: [],
      Type: 'AWS::ApplicationInsights::Application',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withApplicationARN': d.fn('`withApplicationARN` ApplicationARN ', [d.arg('ApplicationARN', d.T.string)]),
    withApplicationARN(ApplicationARN): {
      assert std.isString(ApplicationARN) : 'ApplicationARN must be a string',
      Properties+::: { ApplicationARN: ApplicationARN },
    },
    '#withCWEMonitorEnabled': d.fn('`withCWEMonitorEnabled` CWEMonitorEnabled ', [d.arg('CWEMonitorEnabled', d.T.boolean)]),
    withCWEMonitorEnabled(CWEMonitorEnabled): {
      assert std.isBoolean(CWEMonitorEnabled) : 'CWEMonitorEnabled must be a boolean',
      Properties+::: { CWEMonitorEnabled: CWEMonitorEnabled },
    },
    '#withOpsCenterEnabled': d.fn('`withOpsCenterEnabled` OpsCenterEnabled ', [d.arg('OpsCenterEnabled', d.T.boolean)]),
    withOpsCenterEnabled(OpsCenterEnabled): {
      assert std.isBoolean(OpsCenterEnabled) : 'OpsCenterEnabled must be a boolean',
      Properties+::: { OpsCenterEnabled: OpsCenterEnabled },
    },
    '#withOpsItemSNSTopicArn': d.fn('`withOpsItemSNSTopicArn` OpsItemSNSTopicArn ', [d.arg('OpsItemSNSTopicArn', d.T.string)]),
    withOpsItemSNSTopicArn(OpsItemSNSTopicArn): {
      assert std.isString(OpsItemSNSTopicArn) : 'OpsItemSNSTopicArn must be a string',
      Properties+::: { OpsItemSNSTopicArn: OpsItemSNSTopicArn },
    },
    '#withSNSNotificationArn': d.fn('`withSNSNotificationArn` SNSNotificationArn ', [d.arg('SNSNotificationArn', d.T.string)]),
    withSNSNotificationArn(SNSNotificationArn): {
      assert std.isString(SNSNotificationArn) : 'SNSNotificationArn must be a string',
      Properties+::: { SNSNotificationArn: SNSNotificationArn },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withCustomComponents': d.fn('`withCustomComponents` CustomComponents ', [d.arg('CustomComponents', d.T.array)]),
    withCustomComponents(CustomComponents): {
      assert std.isArray(CustomComponents) : 'CustomComponents must be a array',
      Properties+::: { CustomComponents: CustomComponents },
    },
    '#withLogPatternSets': d.fn('`withLogPatternSets` LogPatternSets ', [d.arg('LogPatternSets', d.T.array)]),
    withLogPatternSets(LogPatternSets): {
      assert std.isArray(LogPatternSets) : 'LogPatternSets must be a array',
      Properties+::: { LogPatternSets: LogPatternSets },
    },
    '#withAutoConfigurationEnabled': d.fn('`withAutoConfigurationEnabled` AutoConfigurationEnabled ', [d.arg('AutoConfigurationEnabled', d.T.boolean)]),
    withAutoConfigurationEnabled(AutoConfigurationEnabled): {
      assert std.isBoolean(AutoConfigurationEnabled) : 'AutoConfigurationEnabled must be a boolean',
      Properties+::: { AutoConfigurationEnabled: AutoConfigurationEnabled },
    },
    '#withComponentMonitoringSettings': d.fn('`withComponentMonitoringSettings` ComponentMonitoringSettings ', [d.arg('ComponentMonitoringSettings', d.T.array)]),
    withComponentMonitoringSettings(ComponentMonitoringSettings): {
      assert std.isArray(ComponentMonitoringSettings) : 'ComponentMonitoringSettings must be a array',
      Properties+::: { ComponentMonitoringSettings: ComponentMonitoringSettings },
    },
    '#withGroupingType': d.fn('`withGroupingType` GroupingType ', [d.arg('GroupingType', d.T.string)]),
    withGroupingType(GroupingType): {
      assert std.isString(GroupingType) : 'GroupingType must be a string',
      assert GroupingType == 'ACCOUNT_BASED' : "GroupingType must be either 'ACCOUNT_BASED'",
      Properties+::: { GroupingType: GroupingType },
    },
    '#withAttachMissingPermission': d.fn('`withAttachMissingPermission` AttachMissingPermission ', [d.arg('AttachMissingPermission', d.T.boolean)]),
    withAttachMissingPermission(AttachMissingPermission): {
      assert std.isBoolean(AttachMissingPermission) : 'AttachMissingPermission must be a boolean',
      Properties+::: { AttachMissingPermission: AttachMissingPermission },
    },
  },
}
