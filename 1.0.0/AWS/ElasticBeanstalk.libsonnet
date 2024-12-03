local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  Application: {
    '#': d.pkg(
      name='Application',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ElasticBeanstalk.libsonnet',
      help='The AWS::ElasticBeanstalk::Application resource specifies an Elastic Beanstalk application.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ElasticBeanstalk::Application Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::ElasticBeanstalk::Application',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withApplicationName': d.fn('`withApplicationName` ApplicationName ', [d.arg('ApplicationName', d.T.string)]),
    withApplicationName(ApplicationName): {
      assert std.isString(ApplicationName) : 'ApplicationName must be a string',
      Properties+::: { ApplicationName: ApplicationName },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withResourceLifecycleConfig': d.fn('`withResourceLifecycleConfig` ResourceLifecycleConfig ', [d.arg('ResourceLifecycleConfig', d.T.object)]),
    withResourceLifecycleConfig(ResourceLifecycleConfig): {
      assert std.isObject(ResourceLifecycleConfig) : 'ResourceLifecycleConfig must be a object',
      Properties+::: { ResourceLifecycleConfig: ResourceLifecycleConfig },
    },
  },
  ApplicationVersion: {
    '#': d.pkg(
      name='ApplicationVersion',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ElasticBeanstalk.libsonnet',
      help='Resource Type definition for AWS::ElasticBeanstalk::ApplicationVersion',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ElasticBeanstalk::ApplicationVersion Resource
        * ApplicationName The name of the Elastic Beanstalk application that is associated with this application version. 
        * SourceBundle The Amazon S3 bucket and key that identify the location of the source bundle for this version. 
      |||,
      args=[
        d.arg('ApplicationName', 'd.T.string'),
        d.arg('SourceBundle', 'd.T.object'),
      ]
    ),
    new(
      ApplicationName,
      SourceBundle,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ApplicationName) : 'ApplicationName must be a string',
        ApplicationName: ApplicationName,
        assert std.isObject(SourceBundle) : 'SourceBundle must be a object',
        SourceBundle: SourceBundle,
      },
      DependsOn:: [],
      Type: 'AWS::ElasticBeanstalk::ApplicationVersion',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
  },
  ConfigurationTemplate: {
    '#': d.pkg(
      name='ConfigurationTemplate',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ElasticBeanstalk.libsonnet',
      help='Resource Type definition for AWS::ElasticBeanstalk::ConfigurationTemplate',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ElasticBeanstalk::ConfigurationTemplate Resource
        * ApplicationName The name of the Elastic Beanstalk application to associate with this configuration template. 
      |||,
      args=[
        d.arg('ApplicationName', 'd.T.string'),
      ]
    ),
    new(
      ApplicationName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ApplicationName) : 'ApplicationName must be a string',
        ApplicationName: ApplicationName,
      },
      DependsOn:: [],
      Type: 'AWS::ElasticBeanstalk::ConfigurationTemplate',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withEnvironmentId': d.fn('`withEnvironmentId` EnvironmentId ', [d.arg('EnvironmentId', d.T.string)]),
    withEnvironmentId(EnvironmentId): {
      assert std.isString(EnvironmentId) : 'EnvironmentId must be a string',
      Properties+::: { EnvironmentId: EnvironmentId },
    },
    '#withOptionSettings': d.fn('`withOptionSettings` OptionSettings ', [d.arg('OptionSettings', d.T.array)]),
    withOptionSettings(OptionSettings): {
      assert std.isArray(OptionSettings) : 'OptionSettings must be a array',
      Properties+::: { OptionSettings: OptionSettings },
    },
    '#withPlatformArn': d.fn('`withPlatformArn` PlatformArn ', [d.arg('PlatformArn', d.T.string)]),
    withPlatformArn(PlatformArn): {
      assert std.isString(PlatformArn) : 'PlatformArn must be a string',
      Properties+::: { PlatformArn: PlatformArn },
    },
    '#withSolutionStackName': d.fn('`withSolutionStackName` SolutionStackName ', [d.arg('SolutionStackName', d.T.string)]),
    withSolutionStackName(SolutionStackName): {
      assert std.isString(SolutionStackName) : 'SolutionStackName must be a string',
      Properties+::: { SolutionStackName: SolutionStackName },
    },
    '#withSourceConfiguration': d.fn('`withSourceConfiguration` SourceConfiguration ', [d.arg('SourceConfiguration', d.T.object)]),
    withSourceConfiguration(SourceConfiguration): {
      assert std.isObject(SourceConfiguration) : 'SourceConfiguration must be a object',
      Properties+::: { SourceConfiguration: SourceConfiguration },
    },
    '#withTemplateName': d.fn('`withTemplateName` TemplateName ', [d.arg('TemplateName', d.T.string)]),
    withTemplateName(TemplateName): {
      assert std.isString(TemplateName) : 'TemplateName must be a string',
      Properties+::: { TemplateName: TemplateName },
    },
  },
  Environment: {
    '#': d.pkg(
      name='Environment',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ElasticBeanstalk.libsonnet',
      help='Resource Type definition for AWS::ElasticBeanstalk::Environment',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ElasticBeanstalk::Environment Resource
        * ApplicationName The name of the application that is associated with this environment.
      |||,
      args=[
        d.arg('ApplicationName', 'd.T.string'),
      ]
    ),
    new(
      ApplicationName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ApplicationName) : 'ApplicationName must be a string',
        ApplicationName: ApplicationName,
      },
      DependsOn:: [],
      Type: 'AWS::ElasticBeanstalk::Environment',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withPlatformArn': d.fn('`withPlatformArn` PlatformArn ', [d.arg('PlatformArn', d.T.string)]),
    withPlatformArn(PlatformArn): {
      assert std.isString(PlatformArn) : 'PlatformArn must be a string',
      Properties+::: { PlatformArn: PlatformArn },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withEnvironmentName': d.fn('`withEnvironmentName` EnvironmentName ', [d.arg('EnvironmentName', d.T.string)]),
    withEnvironmentName(EnvironmentName): {
      assert std.isString(EnvironmentName) : 'EnvironmentName must be a string',
      Properties+::: { EnvironmentName: EnvironmentName },
    },
    '#withOperationsRole': d.fn('`withOperationsRole` OperationsRole ', [d.arg('OperationsRole', d.T.string)]),
    withOperationsRole(OperationsRole): {
      assert std.isString(OperationsRole) : 'OperationsRole must be a string',
      Properties+::: { OperationsRole: OperationsRole },
    },
    '#withTier': d.fn('`withTier` Tier ', [d.arg('Tier', d.T.object)]),
    withTier(Tier): {
      assert std.isObject(Tier) : 'Tier must be a object',
      Properties+::: { Tier: Tier },
    },
    '#withVersionLabel': d.fn('`withVersionLabel` VersionLabel ', [d.arg('VersionLabel', d.T.string)]),
    withVersionLabel(VersionLabel): {
      assert std.isString(VersionLabel) : 'VersionLabel must be a string',
      Properties+::: { VersionLabel: VersionLabel },
    },
    '#withEndpointURL': d.fn('`withEndpointURL` EndpointURL ', [d.arg('EndpointURL', d.T.string)]),
    withEndpointURL(EndpointURL): {
      assert std.isString(EndpointURL) : 'EndpointURL must be a string',
      Properties+::: { EndpointURL: EndpointURL },
    },
    '#withOptionSettings': d.fn('`withOptionSettings` OptionSettings ', [d.arg('OptionSettings', d.T.array)]),
    withOptionSettings(OptionSettings): {
      assert std.isArray(OptionSettings) : 'OptionSettings must be a array',
      Properties+::: { OptionSettings: OptionSettings },
    },
    '#withTemplateName': d.fn('`withTemplateName` TemplateName ', [d.arg('TemplateName', d.T.string)]),
    withTemplateName(TemplateName): {
      assert std.isString(TemplateName) : 'TemplateName must be a string',
      Properties+::: { TemplateName: TemplateName },
    },
    '#withSolutionStackName': d.fn('`withSolutionStackName` SolutionStackName ', [d.arg('SolutionStackName', d.T.string)]),
    withSolutionStackName(SolutionStackName): {
      assert std.isString(SolutionStackName) : 'SolutionStackName must be a string',
      Properties+::: { SolutionStackName: SolutionStackName },
    },
    '#withCNAMEPrefix': d.fn('`withCNAMEPrefix` CNAMEPrefix ', [d.arg('CNAMEPrefix', d.T.string)]),
    withCNAMEPrefix(CNAMEPrefix): {
      assert std.isString(CNAMEPrefix) : 'CNAMEPrefix must be a string',
      Properties+::: { CNAMEPrefix: CNAMEPrefix },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
}
