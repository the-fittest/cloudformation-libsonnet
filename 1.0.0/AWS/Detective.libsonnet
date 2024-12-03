local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  Graph: {
    '#': d.pkg(
      name='Graph',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Detective.libsonnet',
      help='Resource schema for AWS::Detective::Graph',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Detective::Graph Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::Detective::Graph',
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
    '#withAutoEnableMembers': d.fn('`withAutoEnableMembers` AutoEnableMembers ', [d.arg('AutoEnableMembers', d.T.boolean)]),
    withAutoEnableMembers(AutoEnableMembers): {
      assert std.isBoolean(AutoEnableMembers) : 'AutoEnableMembers must be a boolean',
      Properties+::: { AutoEnableMembers: AutoEnableMembers },
    },
  },
  MemberInvitation: {
    '#': d.pkg(
      name='MemberInvitation',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Detective.libsonnet',
      help='Resource schema for AWS::Detective::MemberInvitation',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Detective::MemberInvitation Resource
        * GraphArn The ARN of the graph to which the member account will be invited
        * MemberId The AWS account ID to be invited to join the graph as a member
        * MemberEmailAddress The root email address for the account to be invited, for validation. Updating this field has no effect.
      |||,
      args=[
        d.arg('GraphArn', 'd.T.string'),
        d.arg('MemberId', 'd.T.string'),
        d.arg('MemberEmailAddress', 'd.T.string'),
      ]
    ),
    new(
      GraphArn,
      MemberId,
      MemberEmailAddress,
    ): {
      local base = self,
      Properties: {
        assert std.isString(GraphArn) : 'GraphArn must be a string',
        GraphArn: GraphArn,
        assert std.isString(MemberId) : 'MemberId must be a string',
        MemberId: MemberId,
        assert std.isString(MemberEmailAddress) : 'MemberEmailAddress must be a string',
        MemberEmailAddress: MemberEmailAddress,
      },
      DependsOn:: [],
      Type: 'AWS::Detective::MemberInvitation',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDisableEmailNotification': d.fn('`withDisableEmailNotification` DisableEmailNotification ', [d.arg('DisableEmailNotification', d.T.boolean)]),
    withDisableEmailNotification(DisableEmailNotification): {
      assert std.isBoolean(DisableEmailNotification) : 'DisableEmailNotification must be a boolean',
      Properties+::: { DisableEmailNotification: DisableEmailNotification },
    },
    '#withMessage': d.fn('`withMessage` Message ', [d.arg('Message', d.T.string)]),
    withMessage(Message): {
      assert std.isString(Message) : 'Message must be a string',
      Properties+::: { Message: Message },
    },
  },
  OrganizationAdmin: {
    '#': d.pkg(
      name='OrganizationAdmin',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Detective.libsonnet',
      help='Resource schema for AWS::Detective::OrganizationAdmin',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Detective::OrganizationAdmin Resource
        * AccountId The account ID of the account that should be registered as your Organizations delegated administrator for Detective
      |||,
      args=[
        d.arg('AccountId', 'd.T.string'),
      ]
    ),
    new(
      AccountId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(AccountId) : 'AccountId must be a string',
        AccountId: AccountId,
      },
      DependsOn:: [],
      Type: 'AWS::Detective::OrganizationAdmin',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withGraphArn': d.fn('`withGraphArn` GraphArn ', [d.arg('GraphArn', d.T.string)]),
    withGraphArn(GraphArn): {
      assert std.isString(GraphArn) : 'GraphArn must be a string',
      Properties+::: { GraphArn: GraphArn },
    },
  },
}
