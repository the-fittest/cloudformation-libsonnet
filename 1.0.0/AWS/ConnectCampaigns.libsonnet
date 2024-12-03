local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  Campaign: {
    '#': d.pkg(
      name='Campaign',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ConnectCampaigns.libsonnet',
      help='Definition of AWS::ConnectCampaigns::Campaign Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ConnectCampaigns::Campaign Resource
        * ConnectInstanceArn Amazon Connect Instance Arn
        * DialerConfig 
        * Name Amazon Connect Campaign Name
        * OutboundCallConfig 
      |||,
      args=[
        d.arg('ConnectInstanceArn', 'd.T.string'),
        d.arg('DialerConfig', 'd.T.object'),
        d.arg('Name', 'd.T.string'),
        d.arg('OutboundCallConfig', 'd.T.object'),
      ]
    ),
    new(
      ConnectInstanceArn,
      DialerConfig,
      Name,
      OutboundCallConfig,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ConnectInstanceArn) : 'ConnectInstanceArn must be a string',
        ConnectInstanceArn: ConnectInstanceArn,
        assert std.isObject(DialerConfig) : 'DialerConfig must be a object',
        DialerConfig: DialerConfig,
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isObject(OutboundCallConfig) : 'OutboundCallConfig must be a object',
        OutboundCallConfig: OutboundCallConfig,
      },
      DependsOn:: [],
      Type: 'AWS::ConnectCampaigns::Campaign',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
}
