local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  TestCase: {
    '#': d.pkg(
      name='TestCase',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/AppTest.libsonnet',
      help='Represents a Test Case that can be captured and executed',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::AppTest::TestCase Resource
        * Name 
        * Steps 
      |||,
      args=[
        d.arg('Name', 'd.T.string'),
        d.arg('Steps', 'd.T.array'),
      ]
    ),
    new(
      Name,
      Steps,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isArray(Steps) : 'Steps must be a array',
        Steps: Steps,
      },
      DependsOn:: [],
      Type: 'AWS::AppTest::TestCase',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withCreationTime': d.fn('`withCreationTime` CreationTime ', [d.arg('CreationTime', d.T.string)]),
    withCreationTime(CreationTime): {
      assert std.isString(CreationTime) : 'CreationTime must be a string',
      Properties+::: { CreationTime: CreationTime },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withLastUpdateTime': d.fn('`withLastUpdateTime` LastUpdateTime ', [d.arg('LastUpdateTime', d.T.string)]),
    withLastUpdateTime(LastUpdateTime): {
      assert std.isString(LastUpdateTime) : 'LastUpdateTime must be a string',
      Properties+::: { LastUpdateTime: LastUpdateTime },
    },
    '#withLatestVersion': d.fn('`withLatestVersion` LatestVersion ', [d.arg('LatestVersion', d.T.object)]),
    withLatestVersion(LatestVersion): {
      assert std.isObject(LatestVersion) : 'LatestVersion must be a object',
      Properties+::: { LatestVersion: LatestVersion },
    },
    '#withStatus': d.fn('`withStatus` Status ', [d.arg('Status', d.T.string)]),
    withStatus(Status): {
      assert std.isString(Status) : 'Status must be a string',
      Properties+::: { Status: Status },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.object)]),
    withTags(Tags): {
      assert std.isObject(Tags) : 'Tags must be a object',
      Properties+::: { Tags: Tags },
    },
    '#withTestCaseArn': d.fn('`withTestCaseArn` TestCaseArn ', [d.arg('TestCaseArn', d.T.string)]),
    withTestCaseArn(TestCaseArn): {
      assert std.isString(TestCaseArn) : 'TestCaseArn must be a string',
      Properties+::: { TestCaseArn: TestCaseArn },
    },
    '#withTestCaseId': d.fn('`withTestCaseId` TestCaseId ', [d.arg('TestCaseId', d.T.string)]),
    withTestCaseId(TestCaseId): {
      assert std.isString(TestCaseId) : 'TestCaseId must be a string',
      Properties+::: { TestCaseId: TestCaseId },
    },
    '#withTestCaseVersion': d.fn('`withTestCaseVersion` TestCaseVersion ', [d.arg('TestCaseVersion', d.T.integer)]),
    withTestCaseVersion(TestCaseVersion): {
      // Type: number
      Properties+::: { TestCaseVersion: TestCaseVersion },
    },
  },
}
