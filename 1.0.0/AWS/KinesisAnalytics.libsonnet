local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  Application: {
    '#': d.pkg(
      name='Application',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/KinesisAnalytics.libsonnet',
      help='Resource Type definition for AWS::KinesisAnalytics::Application',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::KinesisAnalytics::Application Resource
        * Inputs 
      |||,
      args=[
        d.arg('Inputs', 'd.T.array'),
      ]
    ),
    new(
      Inputs,
    ): {
      local base = self,
      Properties: {
        assert std.isArray(Inputs) : 'Inputs must be a array',
        Inputs: Inputs,
      },
      DependsOn:: [],
      Type: 'AWS::KinesisAnalytics::Application',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withApplicationName': d.fn('`withApplicationName` ApplicationName ', [d.arg('ApplicationName', d.T.string)]),
    withApplicationName(ApplicationName): {
      assert std.isString(ApplicationName) : 'ApplicationName must be a string',
      Properties+::: { ApplicationName: ApplicationName },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withApplicationDescription': d.fn('`withApplicationDescription` ApplicationDescription ', [d.arg('ApplicationDescription', d.T.string)]),
    withApplicationDescription(ApplicationDescription): {
      assert std.isString(ApplicationDescription) : 'ApplicationDescription must be a string',
      Properties+::: { ApplicationDescription: ApplicationDescription },
    },
    '#withApplicationCode': d.fn('`withApplicationCode` ApplicationCode ', [d.arg('ApplicationCode', d.T.string)]),
    withApplicationCode(ApplicationCode): {
      assert std.isString(ApplicationCode) : 'ApplicationCode must be a string',
      Properties+::: { ApplicationCode: ApplicationCode },
    },
  },
  ApplicationOutput: {
    '#': d.pkg(
      name='ApplicationOutput',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/KinesisAnalytics.libsonnet',
      help='Resource Type definition for AWS::KinesisAnalytics::ApplicationOutput',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::KinesisAnalytics::ApplicationOutput Resource
        * ApplicationName 
        * Output 
      |||,
      args=[
        d.arg('ApplicationName', 'd.T.string'),
        d.arg('Output', 'd.T.object'),
      ]
    ),
    new(
      ApplicationName,
      Output,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ApplicationName) : 'ApplicationName must be a string',
        ApplicationName: ApplicationName,
        assert std.isObject(Output) : 'Output must be a object',
        Output: Output,
      },
      DependsOn:: [],
      Type: 'AWS::KinesisAnalytics::ApplicationOutput',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
  },
  ApplicationReferenceDataSource: {
    '#': d.pkg(
      name='ApplicationReferenceDataSource',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/KinesisAnalytics.libsonnet',
      help='Resource Type definition for AWS::KinesisAnalytics::ApplicationReferenceDataSource',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::KinesisAnalytics::ApplicationReferenceDataSource Resource
        * ApplicationName 
        * ReferenceDataSource 
      |||,
      args=[
        d.arg('ApplicationName', 'd.T.string'),
        d.arg('ReferenceDataSource', 'd.T.object'),
      ]
    ),
    new(
      ApplicationName,
      ReferenceDataSource,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ApplicationName) : 'ApplicationName must be a string',
        ApplicationName: ApplicationName,
        assert std.isObject(ReferenceDataSource) : 'ReferenceDataSource must be a object',
        ReferenceDataSource: ReferenceDataSource,
      },
      DependsOn:: [],
      Type: 'AWS::KinesisAnalytics::ApplicationReferenceDataSource',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
  },
}
