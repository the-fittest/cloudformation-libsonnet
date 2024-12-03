local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  Application: {
    '#': d.pkg(
      name='Application',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/AppConfig.libsonnet',
      help='Resource Type definition for AWS::AppConfig::Application',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::AppConfig::Application Resource
        * Name A name for the application.
      |||,
      args=[
        d.arg('Name', 'd.T.string'),
      ]
    ),
    new(
      Name,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
      },
      DependsOn:: [],
      Type: 'AWS::AppConfig::Application',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withApplicationId': d.fn('`withApplicationId` ApplicationId ', [d.arg('ApplicationId', d.T.string)]),
    withApplicationId(ApplicationId): {
      assert std.isString(ApplicationId) : 'ApplicationId must be a string',
      Properties+::: { ApplicationId: ApplicationId },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  ConfigurationProfile: {
    '#': d.pkg(
      name='ConfigurationProfile',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/AppConfig.libsonnet',
      help='An example resource schema demonstrating some basic constructs and validation rules.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::AppConfig::ConfigurationProfile Resource
        * LocationUri A URI to locate the configuration. You can specify the AWS AppConfig hosted configuration store, Systems Manager (SSM) document, an SSM Parameter Store parameter, or an Amazon S3 object.
        * ApplicationId The application ID.
        * Name A name for the configuration profile.
      |||,
      args=[
        d.arg('LocationUri', 'd.T.string'),
        d.arg('ApplicationId', 'd.T.string'),
        d.arg('Name', 'd.T.string'),
      ]
    ),
    new(
      LocationUri,
      ApplicationId,
      Name,
    ): {
      local base = self,
      Properties: {
        assert std.isString(LocationUri) : 'LocationUri must be a string',
        LocationUri: LocationUri,
        assert std.isString(ApplicationId) : 'ApplicationId must be a string',
        ApplicationId: ApplicationId,
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
      },
      DependsOn:: [],
      Type: 'AWS::AppConfig::ConfigurationProfile',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withConfigurationProfileId': d.fn('`withConfigurationProfileId` ConfigurationProfileId ', [d.arg('ConfigurationProfileId', d.T.string)]),
    withConfigurationProfileId(ConfigurationProfileId): {
      assert std.isString(ConfigurationProfileId) : 'ConfigurationProfileId must be a string',
      Properties+::: { ConfigurationProfileId: ConfigurationProfileId },
    },
    '#withType': d.fn('`withType` Type ', [d.arg('Type', d.T.string)]),
    withType(Type): {
      assert std.isString(Type) : 'Type must be a string',
      Properties+::: { Type: Type },
    },
    '#withKmsKeyIdentifier': d.fn('`withKmsKeyIdentifier` KmsKeyIdentifier ', [d.arg('KmsKeyIdentifier', d.T.string)]),
    withKmsKeyIdentifier(KmsKeyIdentifier): {
      assert std.isString(KmsKeyIdentifier) : 'KmsKeyIdentifier must be a string',
      Properties+::: { KmsKeyIdentifier: KmsKeyIdentifier },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withKmsKeyArn': d.fn('`withKmsKeyArn` KmsKeyArn ', [d.arg('KmsKeyArn', d.T.string)]),
    withKmsKeyArn(KmsKeyArn): {
      assert std.isString(KmsKeyArn) : 'KmsKeyArn must be a string',
      Properties+::: { KmsKeyArn: KmsKeyArn },
    },
    '#withValidators': d.fn('`withValidators` Validators ', [d.arg('Validators', d.T.array)]),
    withValidators(Validators): {
      assert std.isArray(Validators) : 'Validators must be a array',
      Properties+::: { Validators: Validators },
    },
    '#withRetrievalRoleArn': d.fn('`withRetrievalRoleArn` RetrievalRoleArn ', [d.arg('RetrievalRoleArn', d.T.string)]),
    withRetrievalRoleArn(RetrievalRoleArn): {
      assert std.isString(RetrievalRoleArn) : 'RetrievalRoleArn must be a string',
      Properties+::: { RetrievalRoleArn: RetrievalRoleArn },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  Deployment: {
    '#': d.pkg(
      name='Deployment',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/AppConfig.libsonnet',
      help='Resource Type definition for AWS::AppConfig::Deployment',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::AppConfig::Deployment Resource
        * DeploymentStrategyId 
        * ConfigurationProfileId 
        * EnvironmentId 
        * ConfigurationVersion 
        * ApplicationId 
      |||,
      args=[
        d.arg('DeploymentStrategyId', 'd.T.string'),
        d.arg('ConfigurationProfileId', 'd.T.string'),
        d.arg('EnvironmentId', 'd.T.string'),
        d.arg('ConfigurationVersion', 'd.T.string'),
        d.arg('ApplicationId', 'd.T.string'),
      ]
    ),
    new(
      DeploymentStrategyId,
      ConfigurationProfileId,
      EnvironmentId,
      ConfigurationVersion,
      ApplicationId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(DeploymentStrategyId) : 'DeploymentStrategyId must be a string',
        DeploymentStrategyId: DeploymentStrategyId,
        assert std.isString(ConfigurationProfileId) : 'ConfigurationProfileId must be a string',
        ConfigurationProfileId: ConfigurationProfileId,
        assert std.isString(EnvironmentId) : 'EnvironmentId must be a string',
        EnvironmentId: EnvironmentId,
        assert std.isString(ConfigurationVersion) : 'ConfigurationVersion must be a string',
        ConfigurationVersion: ConfigurationVersion,
        assert std.isString(ApplicationId) : 'ApplicationId must be a string',
        ApplicationId: ApplicationId,
      },
      DependsOn:: [],
      Type: 'AWS::AppConfig::Deployment',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withKmsKeyIdentifier': d.fn('`withKmsKeyIdentifier` KmsKeyIdentifier ', [d.arg('KmsKeyIdentifier', d.T.string)]),
    withKmsKeyIdentifier(KmsKeyIdentifier): {
      assert std.isString(KmsKeyIdentifier) : 'KmsKeyIdentifier must be a string',
      Properties+::: { KmsKeyIdentifier: KmsKeyIdentifier },
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
    '#withDynamicExtensionParameters': d.fn('`withDynamicExtensionParameters` DynamicExtensionParameters ', [d.arg('DynamicExtensionParameters', d.T.array)]),
    withDynamicExtensionParameters(DynamicExtensionParameters): {
      assert std.isArray(DynamicExtensionParameters) : 'DynamicExtensionParameters must be a array',
      Properties+::: { DynamicExtensionParameters: DynamicExtensionParameters },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  DeploymentStrategy: {
    '#': d.pkg(
      name='DeploymentStrategy',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/AppConfig.libsonnet',
      help='Resource Type definition for AWS::AppConfig::DeploymentStrategy',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::AppConfig::DeploymentStrategy Resource
        * DeploymentDurationInMinutes Total amount of time for a deployment to last.
        * GrowthFactor The percentage of targets to receive a deployed configuration during each interval.
        * Name A name for the deployment strategy.
        * ReplicateTo Save the deployment strategy to a Systems Manager (SSM) document.
      |||,
      args=[
        d.arg('DeploymentDurationInMinutes', 'd.T.integer'),
        d.arg('GrowthFactor', 'd.T.integer'),
        d.arg('Name', 'd.T.string'),
        d.arg('ReplicateTo', 'd.T.string'),
      ]
    ),
    new(
      DeploymentDurationInMinutes,
      GrowthFactor,
      Name,
      ReplicateTo,
    ): {
      local base = self,
      Properties: {
        // Type: number
        DeploymentDurationInMinutes: DeploymentDurationInMinutes,
        // Type: number
        GrowthFactor: GrowthFactor,
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isString(ReplicateTo) : 'ReplicateTo must be a string',
        assert ReplicateTo == 'NONE' || ReplicateTo == 'SSM_DOCUMENT' : "ReplicateTo must be either 'NONE' or 'SSM_DOCUMENT'",
        ReplicateTo: ReplicateTo,
      },
      DependsOn:: [],
      Type: 'AWS::AppConfig::DeploymentStrategy',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withFinalBakeTimeInMinutes': d.fn('`withFinalBakeTimeInMinutes` FinalBakeTimeInMinutes ', [d.arg('FinalBakeTimeInMinutes', d.T.integer)]),
    withFinalBakeTimeInMinutes(FinalBakeTimeInMinutes): {
      // Type: number
      Properties+::: { FinalBakeTimeInMinutes: FinalBakeTimeInMinutes },
    },
    '#withGrowthType': d.fn('`withGrowthType` GrowthType ', [d.arg('GrowthType', d.T.string)]),
    withGrowthType(GrowthType): {
      assert std.isString(GrowthType) : 'GrowthType must be a string',
      assert GrowthType == 'EXPONENTIAL' || GrowthType == 'LINEAR' : "GrowthType must be either 'EXPONENTIAL' or 'LINEAR'",
      Properties+::: { GrowthType: GrowthType },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
  },
  Environment: {
    '#': d.pkg(
      name='Environment',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/AppConfig.libsonnet',
      help='Resource Type definition for AWS::AppConfig::Environment',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::AppConfig::Environment Resource
        * Name A name for the environment.
        * ApplicationId The application ID.
      |||,
      args=[
        d.arg('Name', 'd.T.string'),
        d.arg('ApplicationId', 'd.T.string'),
      ]
    ),
    new(
      Name,
      ApplicationId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isString(ApplicationId) : 'ApplicationId must be a string',
        ApplicationId: ApplicationId,
      },
      DependsOn:: [],
      Type: 'AWS::AppConfig::Environment',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withEnvironmentId': d.fn('`withEnvironmentId` EnvironmentId ', [d.arg('EnvironmentId', d.T.string)]),
    withEnvironmentId(EnvironmentId): {
      assert std.isString(EnvironmentId) : 'EnvironmentId must be a string',
      Properties+::: { EnvironmentId: EnvironmentId },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withMonitors': d.fn('`withMonitors` Monitors ', [d.arg('Monitors', d.T.array)]),
    withMonitors(Monitors): {
      assert std.isArray(Monitors) : 'Monitors must be a array',
      Properties+::: { Monitors: Monitors },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  Extension: {
    '#': d.pkg(
      name='Extension',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/AppConfig.libsonnet',
      help='Resource Type definition for AWS::AppConfig::Extension',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::AppConfig::Extension Resource
        * Name Name of the extension.
        * Actions 
      |||,
      args=[
        d.arg('Name', 'd.T.string'),
        d.arg('Actions', 'd.T.object'),
      ]
    ),
    new(
      Name,
      Actions,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isObject(Actions) : 'Actions must be a object',
        Actions: Actions,
      },
      DependsOn:: [],
      Type: 'AWS::AppConfig::Extension',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
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
    '#withVersionNumber': d.fn('`withVersionNumber` VersionNumber ', [d.arg('VersionNumber', d.T.integer)]),
    withVersionNumber(VersionNumber): {
      assert std.isNumber(VersionNumber) : 'VersionNumber must be a integer',
      Properties+::: { VersionNumber: VersionNumber },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withParameters': d.fn('`withParameters` Parameters ', [d.arg('Parameters', d.T.object)]),
    withParameters(Parameters): {
      assert std.isObject(Parameters) : 'Parameters must be a object',
      Properties+::: { Parameters: Parameters },
    },
    '#withLatestVersionNumber': d.fn('`withLatestVersionNumber` LatestVersionNumber ', [d.arg('LatestVersionNumber', d.T.integer)]),
    withLatestVersionNumber(LatestVersionNumber): {
      assert std.isNumber(LatestVersionNumber) : 'LatestVersionNumber must be a integer',
      Properties+::: { LatestVersionNumber: LatestVersionNumber },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  ExtensionAssociation: {
    '#': d.pkg(
      name='ExtensionAssociation',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/AppConfig.libsonnet',
      help='An example resource schema demonstrating some basic constructs and validation rules.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::AppConfig::ExtensionAssociation Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::AppConfig::ExtensionAssociation',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
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
    '#withExtensionArn': d.fn('`withExtensionArn` ExtensionArn ', [d.arg('ExtensionArn', d.T.string)]),
    withExtensionArn(ExtensionArn): {
      assert std.isString(ExtensionArn) : 'ExtensionArn must be a string',
      Properties+::: { ExtensionArn: ExtensionArn },
    },
    '#withResourceArn': d.fn('`withResourceArn` ResourceArn ', [d.arg('ResourceArn', d.T.string)]),
    withResourceArn(ResourceArn): {
      assert std.isString(ResourceArn) : 'ResourceArn must be a string',
      Properties+::: { ResourceArn: ResourceArn },
    },
    '#withExtensionIdentifier': d.fn('`withExtensionIdentifier` ExtensionIdentifier ', [d.arg('ExtensionIdentifier', d.T.string)]),
    withExtensionIdentifier(ExtensionIdentifier): {
      assert std.isString(ExtensionIdentifier) : 'ExtensionIdentifier must be a string',
      Properties+::: { ExtensionIdentifier: ExtensionIdentifier },
    },
    '#withResourceIdentifier': d.fn('`withResourceIdentifier` ResourceIdentifier ', [d.arg('ResourceIdentifier', d.T.string)]),
    withResourceIdentifier(ResourceIdentifier): {
      assert std.isString(ResourceIdentifier) : 'ResourceIdentifier must be a string',
      Properties+::: { ResourceIdentifier: ResourceIdentifier },
    },
    '#withExtensionVersionNumber': d.fn('`withExtensionVersionNumber` ExtensionVersionNumber ', [d.arg('ExtensionVersionNumber', d.T.integer)]),
    withExtensionVersionNumber(ExtensionVersionNumber): {
      assert std.isNumber(ExtensionVersionNumber) : 'ExtensionVersionNumber must be a integer',
      Properties+::: { ExtensionVersionNumber: ExtensionVersionNumber },
    },
    '#withParameters': d.fn('`withParameters` Parameters ', [d.arg('Parameters', d.T.object)]),
    withParameters(Parameters): {
      assert std.isObject(Parameters) : 'Parameters must be a object',
      Properties+::: { Parameters: Parameters },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  HostedConfigurationVersion: {
    '#': d.pkg(
      name='HostedConfigurationVersion',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/AppConfig.libsonnet',
      help='Resource Type definition for AWS::AppConfig::HostedConfigurationVersion',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::AppConfig::HostedConfigurationVersion Resource
        * ApplicationId The application ID.
        * ConfigurationProfileId The configuration profile ID.
        * Content The content of the configuration or the configuration data.
        * ContentType A standard MIME type describing the format of the configuration content.
      |||,
      args=[
        d.arg('ApplicationId', 'd.T.string'),
        d.arg('ConfigurationProfileId', 'd.T.string'),
        d.arg('Content', 'd.T.string'),
        d.arg('ContentType', 'd.T.string'),
      ]
    ),
    new(
      ApplicationId,
      ConfigurationProfileId,
      Content,
      ContentType,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ApplicationId) : 'ApplicationId must be a string',
        ApplicationId: ApplicationId,
        assert std.isString(ConfigurationProfileId) : 'ConfigurationProfileId must be a string',
        ConfigurationProfileId: ConfigurationProfileId,
        assert std.isString(Content) : 'Content must be a string',
        Content: Content,
        assert std.isString(ContentType) : 'ContentType must be a string',
        ContentType: ContentType,
      },
      DependsOn:: [],
      Type: 'AWS::AppConfig::HostedConfigurationVersion',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withLatestVersionNumber': d.fn('`withLatestVersionNumber` LatestVersionNumber ', [d.arg('LatestVersionNumber', d.T.integer)]),
    withLatestVersionNumber(LatestVersionNumber): {
      assert std.isNumber(LatestVersionNumber) : 'LatestVersionNumber must be a integer',
      Properties+::: { LatestVersionNumber: LatestVersionNumber },
    },
    '#withVersionLabel': d.fn('`withVersionLabel` VersionLabel ', [d.arg('VersionLabel', d.T.string)]),
    withVersionLabel(VersionLabel): {
      assert std.isString(VersionLabel) : 'VersionLabel must be a string',
      Properties+::: { VersionLabel: VersionLabel },
    },
    '#withVersionNumber': d.fn('`withVersionNumber` VersionNumber ', [d.arg('VersionNumber', d.T.string)]),
    withVersionNumber(VersionNumber): {
      assert std.isString(VersionNumber) : 'VersionNumber must be a string',
      Properties+::: { VersionNumber: VersionNumber },
    },
  },
}
