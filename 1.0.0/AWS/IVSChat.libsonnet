local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  LoggingConfiguration: {
    '#': d.pkg(
      name='LoggingConfiguration',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/IVSChat.libsonnet',
      help='Resource type definition for AWS::IVSChat::LoggingConfiguration.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::IVSChat::LoggingConfiguration Resource
        * DestinationConfiguration 
      |||,
      args=[
        d.arg('DestinationConfiguration', 'd.T.object'),
      ]
    ),
    new(
      DestinationConfiguration,
    ): {
      local base = self,
      Properties: {
        assert std.isObject(DestinationConfiguration) : 'DestinationConfiguration must be a object',
        DestinationConfiguration: DestinationConfiguration,
      },
      DependsOn:: [],
      Type: 'AWS::IVSChat::LoggingConfiguration',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
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
    '#withState': d.fn('`withState` State ', [d.arg('State', d.T.string)]),
    withState(State): {
      assert std.isString(State) : 'State must be a string',
      assert State == 'CREATING' || State == 'CREATE_FAILED' || State == 'DELETING' || State == 'DELETE_FAILED' || State == 'UPDATING' || State == 'UPDATING_FAILED' || State == 'ACTIVE' : "State must be either 'CREATING' or 'CREATE_FAILED' or 'DELETING' or 'DELETE_FAILED' or 'UPDATING' or 'UPDATING_FAILED' or 'ACTIVE'",
      Properties+::: { State: State },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  Room: {
    '#': d.pkg(
      name='Room',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/IVSChat.libsonnet',
      help='Resource type definition for AWS::IVSChat::Room.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::IVSChat::Room Resource
      |||,
      args=[
      ]
    ),
    new(
    ): {
      local base = self,
      Properties: {
      },
      DependsOn:: [],
      Type: 'AWS::IVSChat::Room',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
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
    '#withLoggingConfigurationIdentifiers': d.fn('`withLoggingConfigurationIdentifiers` LoggingConfigurationIdentifiers ', [d.arg('LoggingConfigurationIdentifiers', d.T.array)]),
    withLoggingConfigurationIdentifiers(LoggingConfigurationIdentifiers): {
      assert std.isArray(LoggingConfigurationIdentifiers) : 'LoggingConfigurationIdentifiers must be a array',
      Properties+::: { LoggingConfigurationIdentifiers: LoggingConfigurationIdentifiers },
    },
    '#withMaximumMessageLength': d.fn('`withMaximumMessageLength` MaximumMessageLength ', [d.arg('MaximumMessageLength', d.T.integer)]),
    withMaximumMessageLength(MaximumMessageLength): {
      assert std.isNumber(MaximumMessageLength) : 'MaximumMessageLength must be a integer',
      Properties+::: { MaximumMessageLength: MaximumMessageLength },
    },
    '#withMaximumMessageRatePerSecond': d.fn('`withMaximumMessageRatePerSecond` MaximumMessageRatePerSecond ', [d.arg('MaximumMessageRatePerSecond', d.T.integer)]),
    withMaximumMessageRatePerSecond(MaximumMessageRatePerSecond): {
      assert std.isNumber(MaximumMessageRatePerSecond) : 'MaximumMessageRatePerSecond must be a integer',
      Properties+::: { MaximumMessageRatePerSecond: MaximumMessageRatePerSecond },
    },
    '#withMessageReviewHandler': d.fn('`withMessageReviewHandler` MessageReviewHandler ', [d.arg('MessageReviewHandler', d.T.object)]),
    withMessageReviewHandler(MessageReviewHandler): {
      assert std.isObject(MessageReviewHandler) : 'MessageReviewHandler must be a object',
      Properties+::: { MessageReviewHandler: MessageReviewHandler },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
}
