local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  ExperimentTemplate: {
    '#': d.pkg(
      name='ExperimentTemplate',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/FIS.libsonnet',
      help='Resource schema for AWS::FIS::ExperimentTemplate',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::FIS::ExperimentTemplate Resource
        * Description 
        * StopConditions 
        * Targets 
        * RoleArn 
        * Tags 
      |||,
      args=[
        d.arg('Description', 'd.T.string'),
        d.arg('StopConditions', 'd.T.array'),
        d.arg('Targets', 'd.T.object'),
        d.arg('RoleArn', 'd.T.string'),
        d.arg('Tags', 'd.T.object'),
      ]
    ),
    new(
      Description,
      StopConditions,
      Targets,
      RoleArn,
      Tags,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Description) : 'Description must be a string',
        Description: Description,
        assert std.isArray(StopConditions) : 'StopConditions must be a array',
        StopConditions: StopConditions,
        assert std.isObject(Targets) : 'Targets must be a object',
        Targets: Targets,
        assert std.isString(RoleArn) : 'RoleArn must be a string',
        RoleArn: RoleArn,
        assert std.isObject(Tags) : 'Tags must be a object',
        Tags: Tags,
      },
      DependsOn:: [],
      Type: 'AWS::FIS::ExperimentTemplate',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withActions': d.fn('`withActions` Actions ', [d.arg('Actions', d.T.object)]),
    withActions(Actions): {
      assert std.isObject(Actions) : 'Actions must be a object',
      Properties+::: { Actions: Actions },
    },
    '#withLogConfiguration': d.fn('`withLogConfiguration` LogConfiguration ', [d.arg('LogConfiguration', d.T.object)]),
    withLogConfiguration(LogConfiguration): {
      assert std.isObject(LogConfiguration) : 'LogConfiguration must be a object',
      Properties+::: { LogConfiguration: LogConfiguration },
    },
    '#withExperimentOptions': d.fn('`withExperimentOptions` ExperimentOptions ', [d.arg('ExperimentOptions', d.T.object)]),
    withExperimentOptions(ExperimentOptions): {
      assert std.isObject(ExperimentOptions) : 'ExperimentOptions must be a object',
      Properties+::: { ExperimentOptions: ExperimentOptions },
    },
    '#withExperimentReportConfiguration': d.fn('`withExperimentReportConfiguration` ExperimentReportConfiguration ', [d.arg('ExperimentReportConfiguration', d.T.object)]),
    withExperimentReportConfiguration(ExperimentReportConfiguration): {
      assert std.isObject(ExperimentReportConfiguration) : 'ExperimentReportConfiguration must be a object',
      Properties+::: { ExperimentReportConfiguration: ExperimentReportConfiguration },
    },
  },
  TargetAccountConfiguration: {
    '#': d.pkg(
      name='TargetAccountConfiguration',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/FIS.libsonnet',
      help='Resource schema for AWS::FIS::TargetAccountConfiguration',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::FIS::TargetAccountConfiguration Resource
        * ExperimentTemplateId 
        * AccountId 
        * RoleArn 
      |||,
      args=[
        d.arg('ExperimentTemplateId', 'd.T.string'),
        d.arg('AccountId', 'd.T.string'),
        d.arg('RoleArn', 'd.T.string'),
      ]
    ),
    new(
      ExperimentTemplateId,
      AccountId,
      RoleArn,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ExperimentTemplateId) : 'ExperimentTemplateId must be a string',
        ExperimentTemplateId: ExperimentTemplateId,
        assert std.isString(AccountId) : 'AccountId must be a string',
        AccountId: AccountId,
        assert std.isString(RoleArn) : 'RoleArn must be a string',
        RoleArn: RoleArn,
      },
      DependsOn:: [],
      Type: 'AWS::FIS::TargetAccountConfiguration',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
  },
}
