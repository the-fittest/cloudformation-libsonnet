local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  ReplicationSet: {
    '#': d.pkg(
      name='ReplicationSet',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/SSMIncidents.libsonnet',
      help='Resource type definition for AWS::SSMIncidents::ReplicationSet',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::SSMIncidents::ReplicationSet Resource
        * Regions The ReplicationSet configuration.
      |||,
      args=[
        d.arg('Regions', 'd.T.array'),
      ]
    ),
    new(
      Regions,
    ): {
      local base = self,
      Properties: {
        assert std.isArray(Regions) : 'Regions must be a array',
        Regions: Regions,
      },
      DependsOn:: [],
      Type: 'AWS::SSMIncidents::ReplicationSet',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withDeletionProtected': d.fn('`withDeletionProtected` DeletionProtected ', [d.arg('DeletionProtected', d.T.boolean)]),
    withDeletionProtected(DeletionProtected): {
      assert std.isBoolean(DeletionProtected) : 'DeletionProtected must be a boolean',
      Properties+::: { DeletionProtected: DeletionProtected },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  ResponsePlan: {
    '#': d.pkg(
      name='ResponsePlan',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/SSMIncidents.libsonnet',
      help='Resource type definition for AWS::SSMIncidents::ResponsePlan',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::SSMIncidents::ResponsePlan Resource
        * Name The name of the response plan.
        * IncidentTemplate 
      |||,
      args=[
        d.arg('Name', 'd.T.string'),
        d.arg('IncidentTemplate', 'd.T.object'),
      ]
    ),
    new(
      Name,
      IncidentTemplate,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isObject(IncidentTemplate) : 'IncidentTemplate must be a object',
        IncidentTemplate: IncidentTemplate,
      },
      DependsOn:: [],
      Type: 'AWS::SSMIncidents::ResponsePlan',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withDisplayName': d.fn('`withDisplayName` DisplayName ', [d.arg('DisplayName', d.T.string)]),
    withDisplayName(DisplayName): {
      assert std.isString(DisplayName) : 'DisplayName must be a string',
      Properties+::: { DisplayName: DisplayName },
    },
    '#withChatChannel': d.fn('`withChatChannel` ChatChannel ', [d.arg('ChatChannel', d.T.object)]),
    withChatChannel(ChatChannel): {
      assert std.isObject(ChatChannel) : 'ChatChannel must be a object',
      Properties+::: { ChatChannel: ChatChannel },
    },
    '#withEngagements': d.fn('`withEngagements` Engagements ', [d.arg('Engagements', d.T.array)]),
    withEngagements(Engagements): {
      assert std.isArray(Engagements) : 'Engagements must be a array',
      Properties+::: { Engagements: Engagements },
    },
    '#withActions': d.fn('`withActions` Actions ', [d.arg('Actions', d.T.array)]),
    withActions(Actions): {
      assert std.isArray(Actions) : 'Actions must be a array',
      Properties+::: { Actions: Actions },
    },
    '#withIntegrations': d.fn('`withIntegrations` Integrations ', [d.arg('Integrations', d.T.array)]),
    withIntegrations(Integrations): {
      assert std.isArray(Integrations) : 'Integrations must be a array',
      Properties+::: { Integrations: Integrations },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
}
