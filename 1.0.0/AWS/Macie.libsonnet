local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  AllowList: {
    '#': d.pkg(
      name='AllowList',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Macie.libsonnet',
      help='Macie AllowList resource schema',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Macie::AllowList Resource
        * Name Name of AllowList.
        * Criteria AllowList criteria.
      |||,
      args=[
        d.arg('Name', 'd.T.string'),
        d.arg('Criteria', 'd.T.object'),
      ]
    ),
    new(
      Name,
      Criteria,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isObject(Criteria) : 'Criteria must be a object',
        Criteria: Criteria,
      },
      DependsOn:: [],
      Type: 'AWS::Macie::AllowList',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
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
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withStatus': d.fn('`withStatus` Status ', [d.arg('Status', d.T.string)]),
    withStatus(Status): {
      assert std.isString(Status) : 'Status must be a string',
      Properties+::: { Status: Status },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  CustomDataIdentifier: {
    '#': d.pkg(
      name='CustomDataIdentifier',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Macie.libsonnet',
      help='Macie CustomDataIdentifier resource schema',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Macie::CustomDataIdentifier Resource
        * Name Name of custom data identifier.
        * Regex Regular expression for custom data identifier.
      |||,
      args=[
        d.arg('Name', 'd.T.string'),
        d.arg('Regex', 'd.T.string'),
      ]
    ),
    new(
      Name,
      Regex,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isString(Regex) : 'Regex must be a string',
        Regex: Regex,
      },
      DependsOn:: [],
      Type: 'AWS::Macie::CustomDataIdentifier',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withMaximumMatchDistance': d.fn('`withMaximumMatchDistance` MaximumMatchDistance ', [d.arg('MaximumMatchDistance', d.T.integer)]),
    withMaximumMatchDistance(MaximumMatchDistance): {
      assert std.isNumber(MaximumMatchDistance) : 'MaximumMatchDistance must be a integer',
      Properties+::: { MaximumMatchDistance: MaximumMatchDistance },
    },
    '#withKeywords': d.fn('`withKeywords` Keywords ', [d.arg('Keywords', d.T.array)]),
    withKeywords(Keywords): {
      assert std.isArray(Keywords) : 'Keywords must be a array',
      Properties+::: { Keywords: Keywords },
    },
    '#withIgnoreWords': d.fn('`withIgnoreWords` IgnoreWords ', [d.arg('IgnoreWords', d.T.array)]),
    withIgnoreWords(IgnoreWords): {
      assert std.isArray(IgnoreWords) : 'IgnoreWords must be a array',
      Properties+::: { IgnoreWords: IgnoreWords },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
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
  FindingsFilter: {
    '#': d.pkg(
      name='FindingsFilter',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Macie.libsonnet',
      help='Macie FindingsFilter resource schema.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Macie::FindingsFilter Resource
        * Name Findings filter name
        * FindingCriteria Findings filter criteria.
      |||,
      args=[
        d.arg('Name', 'd.T.string'),
        d.arg('FindingCriteria', 'd.T.object'),
      ]
    ),
    new(
      Name,
      FindingCriteria,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isObject(FindingCriteria) : 'FindingCriteria must be a object',
        FindingCriteria: FindingCriteria,
      },
      DependsOn:: [],
      Type: 'AWS::Macie::FindingsFilter',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withAction': d.fn('`withAction` Action ', [d.arg('Action', d.T.string)]),
    withAction(Action): {
      assert std.isString(Action) : 'Action must be a string',
      Properties+::: { Action: Action },
    },
    '#withPosition': d.fn('`withPosition` Position ', [d.arg('Position', d.T.integer)]),
    withPosition(Position): {
      assert std.isNumber(Position) : 'Position must be a integer',
      Properties+::: { Position: Position },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
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
  Session: {
    '#': d.pkg(
      name='Session',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Macie.libsonnet',
      help='The AWS::Macie::Session resource specifies a new Amazon Macie session. A session is an object that represents the Amazon Macie service. A session is required for Amazon Macie to become operational.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Macie::Session Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::Macie::Session',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withAwsAccountId': d.fn('`withAwsAccountId` AwsAccountId ', [d.arg('AwsAccountId', d.T.string)]),
    withAwsAccountId(AwsAccountId): {
      assert std.isString(AwsAccountId) : 'AwsAccountId must be a string',
      Properties+::: { AwsAccountId: AwsAccountId },
    },
    '#withStatus': d.fn('`withStatus` Status ', [d.arg('Status', d.T.string)]),
    withStatus(Status): {
      assert std.isString(Status) : 'Status must be a string',
      assert Status == 'ENABLED' || Status == 'PAUSED' : "Status must be either 'ENABLED' or 'PAUSED'",
      Properties+::: { Status: Status },
    },
    '#withFindingPublishingFrequency': d.fn('`withFindingPublishingFrequency` FindingPublishingFrequency ', [d.arg('FindingPublishingFrequency', d.T.string)]),
    withFindingPublishingFrequency(FindingPublishingFrequency): {
      assert std.isString(FindingPublishingFrequency) : 'FindingPublishingFrequency must be a string',
      assert FindingPublishingFrequency == 'FIFTEEN_MINUTES' || FindingPublishingFrequency == 'ONE_HOUR' || FindingPublishingFrequency == 'SIX_HOURS' : "FindingPublishingFrequency must be either 'FIFTEEN_MINUTES' or 'ONE_HOUR' or 'SIX_HOURS'",
      Properties+::: { FindingPublishingFrequency: FindingPublishingFrequency },
    },
    '#withServiceRole': d.fn('`withServiceRole` ServiceRole ', [d.arg('ServiceRole', d.T.string)]),
    withServiceRole(ServiceRole): {
      assert std.isString(ServiceRole) : 'ServiceRole must be a string',
      Properties+::: { ServiceRole: ServiceRole },
    },
  },
}
