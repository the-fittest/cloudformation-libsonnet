local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  Contact: {
    '#': d.pkg(
      name='Contact',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/SSMContacts.libsonnet',
      help='Resource Type definition for AWS::SSMContacts::Contact',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::SSMContacts::Contact Resource
        * Alias Alias of the contact. String value with 20 to 256 characters. Only alphabetical, numeric characters, dash, or underscore allowed.
        * DisplayName Name of the contact. String value with 3 to 256 characters. Only alphabetical, space, numeric characters, dash, or underscore allowed.
        * Type Contact type, which specify type of contact. Currently supported values: “PERSONAL”, “SHARED”, “OTHER“.
      |||,
      args=[
        d.arg('Alias', 'd.T.string'),
        d.arg('DisplayName', 'd.T.string'),
        d.arg('Type', 'd.T.string'),
      ]
    ),
    new(
      Alias,
      DisplayName,
      Type,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Alias) : 'Alias must be a string',
        Alias: Alias,
        assert std.isString(DisplayName) : 'DisplayName must be a string',
        DisplayName: DisplayName,
        assert std.isString(Type) : 'Type must be a string',
        assert Type == 'PERSONAL' || Type == 'ESCALATION' || Type == 'ONCALL_SCHEDULE' : "Type must be either 'PERSONAL' or 'ESCALATION' or 'ONCALL_SCHEDULE'",
        Type: Type,
      },
      DependsOn:: [],
      Type: 'AWS::SSMContacts::Contact',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withPlan': d.fn('`withPlan` Plan ', [d.arg('Plan', d.T.array)]),
    withPlan(Plan): {
      assert std.isArray(Plan) : 'Plan must be a array',
      Properties+::: { Plan: Plan },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
  },
  ContactChannel: {
    '#': d.pkg(
      name='ContactChannel',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/SSMContacts.libsonnet',
      help='Resource Type definition for AWS::SSMContacts::ContactChannel',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::SSMContacts::ContactChannel Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::SSMContacts::ContactChannel',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withContactId': d.fn('`withContactId` ContactId ', [d.arg('ContactId', d.T.string)]),
    withContactId(ContactId): {
      assert std.isString(ContactId) : 'ContactId must be a string',
      Properties+::: { ContactId: ContactId },
    },
    '#withChannelName': d.fn('`withChannelName` ChannelName ', [d.arg('ChannelName', d.T.string)]),
    withChannelName(ChannelName): {
      assert std.isString(ChannelName) : 'ChannelName must be a string',
      Properties+::: { ChannelName: ChannelName },
    },
    '#withChannelType': d.fn('`withChannelType` ChannelType ', [d.arg('ChannelType', d.T.string)]),
    withChannelType(ChannelType): {
      assert std.isString(ChannelType) : 'ChannelType must be a string',
      assert ChannelType == 'SMS' || ChannelType == 'VOICE' || ChannelType == 'EMAIL' : "ChannelType must be either 'SMS' or 'VOICE' or 'EMAIL'",
      Properties+::: { ChannelType: ChannelType },
    },
    '#withDeferActivation': d.fn('`withDeferActivation` DeferActivation ', [d.arg('DeferActivation', d.T.boolean)]),
    withDeferActivation(DeferActivation): {
      assert std.isBoolean(DeferActivation) : 'DeferActivation must be a boolean',
      Properties+::: { DeferActivation: DeferActivation },
    },
    '#withChannelAddress': d.fn('`withChannelAddress` ChannelAddress ', [d.arg('ChannelAddress', d.T.string)]),
    withChannelAddress(ChannelAddress): {
      assert std.isString(ChannelAddress) : 'ChannelAddress must be a string',
      Properties+::: { ChannelAddress: ChannelAddress },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
  },
  Plan: {
    '#': d.pkg(
      name='Plan',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/SSMContacts.libsonnet',
      help='Engagement Plan for a SSM Incident Manager Contact.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::SSMContacts::Plan Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::SSMContacts::Plan',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withContactId': d.fn('`withContactId` ContactId ', [d.arg('ContactId', d.T.string)]),
    withContactId(ContactId): {
      assert std.isString(ContactId) : 'ContactId must be a string',
      Properties+::: { ContactId: ContactId },
    },
    '#withStages': d.fn('`withStages` Stages ', [d.arg('Stages', d.T.array)]),
    withStages(Stages): {
      assert std.isArray(Stages) : 'Stages must be a array',
      Properties+::: { Stages: Stages },
    },
    '#withRotationIds': d.fn('`withRotationIds` RotationIds ', [d.arg('RotationIds', d.T.array)]),
    withRotationIds(RotationIds): {
      assert std.isArray(RotationIds) : 'RotationIds must be a array',
      Properties+::: { RotationIds: RotationIds },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
  },
  Rotation: {
    '#': d.pkg(
      name='Rotation',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/SSMContacts.libsonnet',
      help='Resource Type definition for AWS::SSMContacts::Rotation.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::SSMContacts::Rotation Resource
        * Name Name of the Rotation
        * ContactIds Members of the rotation
        * StartTime Start time of the first shift of Oncall Schedule
        * TimeZoneId TimeZone Identifier for the Oncall Schedule
        * Recurrence 
      |||,
      args=[
        d.arg('Name', 'd.T.string'),
        d.arg('ContactIds', 'd.T.array'),
        d.arg('StartTime', 'd.T.string'),
        d.arg('TimeZoneId', 'd.T.string'),
        d.arg('Recurrence', 'd.T.object'),
      ]
    ),
    new(
      Name,
      ContactIds,
      StartTime,
      TimeZoneId,
      Recurrence,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isArray(ContactIds) : 'ContactIds must be a array',
        ContactIds: ContactIds,
        assert std.isString(StartTime) : 'StartTime must be a string',
        StartTime: StartTime,
        assert std.isString(TimeZoneId) : 'TimeZoneId must be a string',
        TimeZoneId: TimeZoneId,
        assert std.isObject(Recurrence) : 'Recurrence must be a object',
        Recurrence: Recurrence,
      },
      DependsOn:: [],
      Type: 'AWS::SSMContacts::Rotation',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
  },
}
