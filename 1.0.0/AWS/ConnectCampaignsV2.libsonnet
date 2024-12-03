local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  Campaign: {
    '#': d.pkg(
      name='Campaign',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ConnectCampaignsV2.libsonnet',
      help='Definition of AWS::ConnectCampaignsV2::Campaign Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ConnectCampaignsV2::Campaign Resource
        * Name 
        * ConnectInstanceId 
        * ChannelSubtypeConfig 
      |||,
      args=[
        d.arg('Name', 'd.T.string'),
        d.arg('ConnectInstanceId', 'd.T.string'),
        d.arg('ChannelSubtypeConfig', 'd.T.object'),
      ]
    ),
    new(
      Name,
      ConnectInstanceId,
      ChannelSubtypeConfig,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isString(ConnectInstanceId) : 'ConnectInstanceId must be a string',
        ConnectInstanceId: ConnectInstanceId,
        assert std.isObject(ChannelSubtypeConfig) : 'ChannelSubtypeConfig must be a object',
        ChannelSubtypeConfig: ChannelSubtypeConfig,
      },
      DependsOn:: [],
      Type: 'AWS::ConnectCampaignsV2::Campaign',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withSource': d.fn('`withSource` Source ', [d.arg('Source', d.T.object)]),
    withSource(Source): {
      assert std.isObject(Source) : 'Source must be a object',
      Properties+::: { Source: Source },
    },
    '#withConnectCampaignFlowArn': d.fn('`withConnectCampaignFlowArn` ConnectCampaignFlowArn ', [d.arg('ConnectCampaignFlowArn', d.T.string)]),
    withConnectCampaignFlowArn(ConnectCampaignFlowArn): {
      assert std.isString(ConnectCampaignFlowArn) : 'ConnectCampaignFlowArn must be a string',
      Properties+::: { ConnectCampaignFlowArn: ConnectCampaignFlowArn },
    },
    '#withSchedule': d.fn('`withSchedule` Schedule ', [d.arg('Schedule', d.T.object)]),
    withSchedule(Schedule): {
      assert std.isObject(Schedule) : 'Schedule must be a object',
      Properties+::: { Schedule: Schedule },
    },
    '#withCommunicationTimeConfig': d.fn('`withCommunicationTimeConfig` CommunicationTimeConfig ', [d.arg('CommunicationTimeConfig', d.T.object)]),
    withCommunicationTimeConfig(CommunicationTimeConfig): {
      assert std.isObject(CommunicationTimeConfig) : 'CommunicationTimeConfig must be a object',
      Properties+::: { CommunicationTimeConfig: CommunicationTimeConfig },
    },
    '#withCommunicationLimitsOverride': d.fn('`withCommunicationLimitsOverride` CommunicationLimitsOverride ', [d.arg('CommunicationLimitsOverride', d.T.object)]),
    withCommunicationLimitsOverride(CommunicationLimitsOverride): {
      assert std.isObject(CommunicationLimitsOverride) : 'CommunicationLimitsOverride must be a object',
      Properties+::: { CommunicationLimitsOverride: CommunicationLimitsOverride },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
}
