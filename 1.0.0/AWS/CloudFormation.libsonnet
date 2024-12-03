local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  CustomResource: {
    '#': d.pkg(
      name='CustomResource',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/CloudFormation.libsonnet',
      help='Resource Type definition for AWS::CloudFormation::CustomResource',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::CloudFormation::CustomResource Resource
        * ServiceToken 
      |||,
      args=[
        d.arg('ServiceToken', 'd.T.string'),
      ]
    ),
    new(
      ServiceToken,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ServiceToken) : 'ServiceToken must be a string',
        ServiceToken: ServiceToken,
      },
      DependsOn:: [],
      Type: 'AWS::CloudFormation::CustomResource',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withServiceTimeout': d.fn('`withServiceTimeout` ServiceTimeout ', [d.arg('ServiceTimeout', d.T.integer)]),
    withServiceTimeout(ServiceTimeout): {
      assert std.isNumber(ServiceTimeout) : 'ServiceTimeout must be a integer',
      Properties+::: { ServiceTimeout: ServiceTimeout },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
  },
  GuardHook: {
    '#': d.pkg(
      name='GuardHook',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/CloudFormation.libsonnet',
      help='This is a CloudFormation resource for activating the first-party AWS::Hooks::GuardHook.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::CloudFormation::GuardHook Resource
        * RuleLocation 
        * HookStatus Attribute to specify which stacks this hook applies to or should get invoked for
        * TargetOperations Which operations should this Hook run against? Resource changes, stacks or change sets.
        * FailureMode Attribute to specify CloudFormation behavior on hook failure.
        * Alias The typename alias for the hook.
        * ExecutionRole The execution role ARN assumed by hooks to read Guard rules from S3 and write Guard outputs to S3.
      |||,
      args=[
        d.arg('RuleLocation', 'd.T.object'),
        d.arg('HookStatus', 'd.T.string'),
        d.arg('TargetOperations', 'd.T.array'),
        d.arg('FailureMode', 'd.T.string'),
        d.arg('Alias', 'd.T.string'),
        d.arg('ExecutionRole', 'd.T.string'),
      ]
    ),
    new(
      RuleLocation,
      HookStatus,
      TargetOperations,
      FailureMode,
      Alias,
      ExecutionRole,
    ): {
      local base = self,
      Properties: {
        assert std.isObject(RuleLocation) : 'RuleLocation must be a object',
        RuleLocation: RuleLocation,
        assert std.isString(HookStatus) : 'HookStatus must be a string',
        assert HookStatus == 'ENABLED' || HookStatus == 'DISABLED' : "HookStatus must be either 'ENABLED' or 'DISABLED'",
        HookStatus: HookStatus,
        assert std.isArray(TargetOperations) : 'TargetOperations must be a array',
        TargetOperations: TargetOperations,
        assert std.isString(FailureMode) : 'FailureMode must be a string',
        assert FailureMode == 'FAIL' || FailureMode == 'WARN' : "FailureMode must be either 'FAIL' or 'WARN'",
        FailureMode: FailureMode,
        assert std.isString(Alias) : 'Alias must be a string',
        Alias: Alias,
        assert std.isString(ExecutionRole) : 'ExecutionRole must be a string',
        ExecutionRole: ExecutionRole,
      },
      DependsOn:: [],
      Type: 'AWS::CloudFormation::GuardHook',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withLogBucket': d.fn('`withLogBucket` LogBucket ', [d.arg('LogBucket', d.T.string)]),
    withLogBucket(LogBucket): {
      assert std.isString(LogBucket) : 'LogBucket must be a string',
      Properties+::: { LogBucket: LogBucket },
    },
    '#withTargetFilters': d.fn('`withTargetFilters` TargetFilters ', [d.arg('TargetFilters', d.T.object)]),
    withTargetFilters(TargetFilters): {
      assert std.isObject(TargetFilters) : 'TargetFilters must be a object',
      Properties+::: { TargetFilters: TargetFilters },
    },
    '#withStackFilters': d.fn('`withStackFilters` StackFilters ', [d.arg('StackFilters', d.T.object)]),
    withStackFilters(StackFilters): {
      assert std.isObject(StackFilters) : 'StackFilters must be a object',
      Properties+::: { StackFilters: StackFilters },
    },
    '#withHookArn': d.fn('`withHookArn` HookArn ', [d.arg('HookArn', d.T.string)]),
    withHookArn(HookArn): {
      assert std.isString(HookArn) : 'HookArn must be a string',
      Properties+::: { HookArn: HookArn },
    },
    '#withOptions': d.fn('`withOptions` Options ', [d.arg('Options')]),
    withOptions(Options): {
      // Type: undefined
      Properties+::: { Options: Options },
    },
  },
  HookDefaultVersion: {
    '#': d.pkg(
      name='HookDefaultVersion',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/CloudFormation.libsonnet',
      help='Set a version as default version for a hook in CloudFormation Registry.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::CloudFormation::HookDefaultVersion Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::CloudFormation::HookDefaultVersion',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withTypeVersionArn': d.fn('`withTypeVersionArn` TypeVersionArn ', [d.arg('TypeVersionArn', d.T.string)]),
    withTypeVersionArn(TypeVersionArn): {
      assert std.isString(TypeVersionArn) : 'TypeVersionArn must be a string',
      Properties+::: { TypeVersionArn: TypeVersionArn },
    },
    '#withTypeName': d.fn('`withTypeName` TypeName ', [d.arg('TypeName', d.T.string)]),
    withTypeName(TypeName): {
      assert std.isString(TypeName) : 'TypeName must be a string',
      Properties+::: { TypeName: TypeName },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withVersionId': d.fn('`withVersionId` VersionId ', [d.arg('VersionId', d.T.string)]),
    withVersionId(VersionId): {
      assert std.isString(VersionId) : 'VersionId must be a string',
      Properties+::: { VersionId: VersionId },
    },
  },
  HookTypeConfig: {
    '#': d.pkg(
      name='HookTypeConfig',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/CloudFormation.libsonnet',
      help='Specifies the configuration data for a registered hook in CloudFormation Registry.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::CloudFormation::HookTypeConfig Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::CloudFormation::HookTypeConfig',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withTypeArn': d.fn('`withTypeArn` TypeArn ', [d.arg('TypeArn', d.T.string)]),
    withTypeArn(TypeArn): {
      assert std.isString(TypeArn) : 'TypeArn must be a string',
      Properties+::: { TypeArn: TypeArn },
    },
    '#withTypeName': d.fn('`withTypeName` TypeName ', [d.arg('TypeName', d.T.string)]),
    withTypeName(TypeName): {
      assert std.isString(TypeName) : 'TypeName must be a string',
      Properties+::: { TypeName: TypeName },
    },
    '#withConfigurationArn': d.fn('`withConfigurationArn` ConfigurationArn ', [d.arg('ConfigurationArn', d.T.string)]),
    withConfigurationArn(ConfigurationArn): {
      assert std.isString(ConfigurationArn) : 'ConfigurationArn must be a string',
      Properties+::: { ConfigurationArn: ConfigurationArn },
    },
    '#withConfiguration': d.fn('`withConfiguration` Configuration ', [d.arg('Configuration', d.T.string)]),
    withConfiguration(Configuration): {
      assert std.isString(Configuration) : 'Configuration must be a string',
      Properties+::: { Configuration: Configuration },
    },
    '#withConfigurationAlias': d.fn('`withConfigurationAlias` ConfigurationAlias ', [d.arg('ConfigurationAlias', d.T.string)]),
    withConfigurationAlias(ConfigurationAlias): {
      assert std.isString(ConfigurationAlias) : 'ConfigurationAlias must be a string',
      assert ConfigurationAlias == 'default' : "ConfigurationAlias must be either 'default'",
      Properties+::: { ConfigurationAlias: ConfigurationAlias },
    },
  },
  HookVersion: {
    '#': d.pkg(
      name='HookVersion',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/CloudFormation.libsonnet',
      help='Publishes new or first hook version to AWS CloudFormation Registry.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::CloudFormation::HookVersion Resource
        * SchemaHandlerPackage A url to the S3 bucket containing the schema handler package that contains the schema, event handlers, and associated files for the type you want to register.For information on generating a schema handler package for the type you want to register, see submit in the CloudFormation CLI User Guide.
        * TypeName The name of the type being registered.We recommend that type names adhere to the following pattern: company_or_organization::service::type.
      |||,
      args=[
        d.arg('SchemaHandlerPackage', 'd.T.string'),
        d.arg('TypeName', 'd.T.string'),
      ]
    ),
    new(
      SchemaHandlerPackage,
      TypeName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(SchemaHandlerPackage) : 'SchemaHandlerPackage must be a string',
        SchemaHandlerPackage: SchemaHandlerPackage,
        assert std.isString(TypeName) : 'TypeName must be a string',
        TypeName: TypeName,
      },
      DependsOn:: [],
      Type: 'AWS::CloudFormation::HookVersion',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withTypeArn': d.fn('`withTypeArn` TypeArn ', [d.arg('TypeArn', d.T.string)]),
    withTypeArn(TypeArn): {
      assert std.isString(TypeArn) : 'TypeArn must be a string',
      Properties+::: { TypeArn: TypeArn },
    },
    '#withExecutionRoleArn': d.fn('`withExecutionRoleArn` ExecutionRoleArn ', [d.arg('ExecutionRoleArn', d.T.string)]),
    withExecutionRoleArn(ExecutionRoleArn): {
      assert std.isString(ExecutionRoleArn) : 'ExecutionRoleArn must be a string',
      Properties+::: { ExecutionRoleArn: ExecutionRoleArn },
    },
    '#withIsDefaultVersion': d.fn('`withIsDefaultVersion` IsDefaultVersion ', [d.arg('IsDefaultVersion', d.T.boolean)]),
    withIsDefaultVersion(IsDefaultVersion): {
      assert std.isBoolean(IsDefaultVersion) : 'IsDefaultVersion must be a boolean',
      Properties+::: { IsDefaultVersion: IsDefaultVersion },
    },
    '#withLoggingConfig': d.fn('`withLoggingConfig` LoggingConfig ', [d.arg('LoggingConfig', d.T.object)]),
    withLoggingConfig(LoggingConfig): {
      assert std.isObject(LoggingConfig) : 'LoggingConfig must be a object',
      Properties+::: { LoggingConfig: LoggingConfig },
    },
    '#withVersionId': d.fn('`withVersionId` VersionId ', [d.arg('VersionId', d.T.string)]),
    withVersionId(VersionId): {
      assert std.isString(VersionId) : 'VersionId must be a string',
      Properties+::: { VersionId: VersionId },
    },
    '#withVisibility': d.fn('`withVisibility` Visibility ', [d.arg('Visibility', d.T.string)]),
    withVisibility(Visibility): {
      assert std.isString(Visibility) : 'Visibility must be a string',
      assert Visibility == 'PUBLIC' || Visibility == 'PRIVATE' : "Visibility must be either 'PUBLIC' or 'PRIVATE'",
      Properties+::: { Visibility: Visibility },
    },
  },
  LambdaHook: {
    '#': d.pkg(
      name='LambdaHook',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/CloudFormation.libsonnet',
      help='This is a CloudFormation resource for the first-party AWS::Hooks::LambdaHook.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::CloudFormation::LambdaHook Resource
        * LambdaFunction Amazon Resource Name (ARN), Partial ARN, name, version, or alias of the Lambda function to invoke with this hook.
        * FailureMode Attribute to specify CloudFormation behavior on hook failure.
        * Alias The typename alias for the hook.
        * ExecutionRole The execution role ARN assumed by Hooks to invoke Lambda.
        * TargetOperations Which operations should this Hook run against? Resource changes, stacks or change sets.
        * HookStatus Attribute to specify which stacks this hook applies to or should get invoked for
      |||,
      args=[
        d.arg('LambdaFunction', 'd.T.string'),
        d.arg('FailureMode', 'd.T.string'),
        d.arg('Alias', 'd.T.string'),
        d.arg('ExecutionRole', 'd.T.string'),
        d.arg('TargetOperations', 'd.T.array'),
        d.arg('HookStatus', 'd.T.string'),
      ]
    ),
    new(
      LambdaFunction,
      FailureMode,
      Alias,
      ExecutionRole,
      TargetOperations,
      HookStatus,
    ): {
      local base = self,
      Properties: {
        assert std.isString(LambdaFunction) : 'LambdaFunction must be a string',
        LambdaFunction: LambdaFunction,
        assert std.isString(FailureMode) : 'FailureMode must be a string',
        assert FailureMode == 'FAIL' || FailureMode == 'WARN' : "FailureMode must be either 'FAIL' or 'WARN'",
        FailureMode: FailureMode,
        assert std.isString(Alias) : 'Alias must be a string',
        Alias: Alias,
        assert std.isString(ExecutionRole) : 'ExecutionRole must be a string',
        ExecutionRole: ExecutionRole,
        assert std.isArray(TargetOperations) : 'TargetOperations must be a array',
        TargetOperations: TargetOperations,
        assert std.isString(HookStatus) : 'HookStatus must be a string',
        assert HookStatus == 'ENABLED' || HookStatus == 'DISABLED' : "HookStatus must be either 'ENABLED' or 'DISABLED'",
        HookStatus: HookStatus,
      },
      DependsOn:: [],
      Type: 'AWS::CloudFormation::LambdaHook',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withTargetFilters': d.fn('`withTargetFilters` TargetFilters ', [d.arg('TargetFilters', d.T.object)]),
    withTargetFilters(TargetFilters): {
      assert std.isObject(TargetFilters) : 'TargetFilters must be a object',
      Properties+::: { TargetFilters: TargetFilters },
    },
    '#withStackFilters': d.fn('`withStackFilters` StackFilters ', [d.arg('StackFilters', d.T.object)]),
    withStackFilters(StackFilters): {
      assert std.isObject(StackFilters) : 'StackFilters must be a object',
      Properties+::: { StackFilters: StackFilters },
    },
    '#withHookArn': d.fn('`withHookArn` HookArn ', [d.arg('HookArn', d.T.string)]),
    withHookArn(HookArn): {
      assert std.isString(HookArn) : 'HookArn must be a string',
      Properties+::: { HookArn: HookArn },
    },
  },
  Macro: {
    '#': d.pkg(
      name='Macro',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/CloudFormation.libsonnet',
      help='Resource Type definition for AWS::CloudFormation::Macro',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::CloudFormation::Macro Resource
        * FunctionName 
        * Name 
      |||,
      args=[
        d.arg('FunctionName', 'd.T.string'),
        d.arg('Name', 'd.T.string'),
      ]
    ),
    new(
      FunctionName,
      Name,
    ): {
      local base = self,
      Properties: {
        assert std.isString(FunctionName) : 'FunctionName must be a string',
        FunctionName: FunctionName,
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
      },
      DependsOn:: [],
      Type: 'AWS::CloudFormation::Macro',
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
    '#withLogGroupName': d.fn('`withLogGroupName` LogGroupName ', [d.arg('LogGroupName', d.T.string)]),
    withLogGroupName(LogGroupName): {
      assert std.isString(LogGroupName) : 'LogGroupName must be a string',
      Properties+::: { LogGroupName: LogGroupName },
    },
    '#withLogRoleARN': d.fn('`withLogRoleARN` LogRoleARN ', [d.arg('LogRoleARN', d.T.string)]),
    withLogRoleARN(LogRoleARN): {
      assert std.isString(LogRoleARN) : 'LogRoleARN must be a string',
      Properties+::: { LogRoleARN: LogRoleARN },
    },
  },
  ModuleDefaultVersion: {
    '#': d.pkg(
      name='ModuleDefaultVersion',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/CloudFormation.libsonnet',
      help='A module that has been registered in the CloudFormation registry as the default version',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::CloudFormation::ModuleDefaultVersion Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::CloudFormation::ModuleDefaultVersion',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withModuleName': d.fn('`withModuleName` ModuleName ', [d.arg('ModuleName', d.T.string)]),
    withModuleName(ModuleName): {
      assert std.isString(ModuleName) : 'ModuleName must be a string',
      Properties+::: { ModuleName: ModuleName },
    },
    '#withVersionId': d.fn('`withVersionId` VersionId ', [d.arg('VersionId', d.T.string)]),
    withVersionId(VersionId): {
      assert std.isString(VersionId) : 'VersionId must be a string',
      Properties+::: { VersionId: VersionId },
    },
  },
  ModuleVersion: {
    '#': d.pkg(
      name='ModuleVersion',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/CloudFormation.libsonnet',
      help='A module that has been registered in the CloudFormation registry.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::CloudFormation::ModuleVersion Resource
        * ModuleName The name of the module being registered.Recommended module naming pattern: company_or_organization::service::type::MODULE.
        * ModulePackage The url to the S3 bucket containing the schema and template fragment for the module you want to register.
      |||,
      args=[
        d.arg('ModuleName', 'd.T.string'),
        d.arg('ModulePackage', 'd.T.string'),
      ]
    ),
    new(
      ModuleName,
      ModulePackage,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ModuleName) : 'ModuleName must be a string',
        ModuleName: ModuleName,
        assert std.isString(ModulePackage) : 'ModulePackage must be a string',
        ModulePackage: ModulePackage,
      },
      DependsOn:: [],
      Type: 'AWS::CloudFormation::ModuleVersion',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withDocumentationUrl': d.fn('`withDocumentationUrl` DocumentationUrl ', [d.arg('DocumentationUrl', d.T.string)]),
    withDocumentationUrl(DocumentationUrl): {
      assert std.isString(DocumentationUrl) : 'DocumentationUrl must be a string',
      Properties+::: { DocumentationUrl: DocumentationUrl },
    },
    '#withIsDefaultVersion': d.fn('`withIsDefaultVersion` IsDefaultVersion ', [d.arg('IsDefaultVersion', d.T.boolean)]),
    withIsDefaultVersion(IsDefaultVersion): {
      assert std.isBoolean(IsDefaultVersion) : 'IsDefaultVersion must be a boolean',
      Properties+::: { IsDefaultVersion: IsDefaultVersion },
    },
    '#withSchema': d.fn('`withSchema` Schema ', [d.arg('Schema', d.T.string)]),
    withSchema(Schema): {
      assert std.isString(Schema) : 'Schema must be a string',
      Properties+::: { Schema: Schema },
    },
    '#withTimeCreated': d.fn('`withTimeCreated` TimeCreated ', [d.arg('TimeCreated', d.T.string)]),
    withTimeCreated(TimeCreated): {
      assert std.isString(TimeCreated) : 'TimeCreated must be a string',
      Properties+::: { TimeCreated: TimeCreated },
    },
    '#withVersionId': d.fn('`withVersionId` VersionId ', [d.arg('VersionId', d.T.string)]),
    withVersionId(VersionId): {
      assert std.isString(VersionId) : 'VersionId must be a string',
      Properties+::: { VersionId: VersionId },
    },
    '#withVisibility': d.fn('`withVisibility` Visibility ', [d.arg('Visibility', d.T.string)]),
    withVisibility(Visibility): {
      assert std.isString(Visibility) : 'Visibility must be a string',
      assert Visibility == 'PRIVATE' : "Visibility must be either 'PRIVATE'",
      Properties+::: { Visibility: Visibility },
    },
  },
  PublicTypeVersion: {
    '#': d.pkg(
      name='PublicTypeVersion',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/CloudFormation.libsonnet',
      help='Test and Publish a resource that has been registered in the CloudFormation Registry.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::CloudFormation::PublicTypeVersion Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::CloudFormation::PublicTypeVersion',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withTypeVersionArn': d.fn('`withTypeVersionArn` TypeVersionArn ', [d.arg('TypeVersionArn', d.T.string)]),
    withTypeVersionArn(TypeVersionArn): {
      assert std.isString(TypeVersionArn) : 'TypeVersionArn must be a string',
      Properties+::: { TypeVersionArn: TypeVersionArn },
    },
    '#withPublicVersionNumber': d.fn('`withPublicVersionNumber` PublicVersionNumber ', [d.arg('PublicVersionNumber', d.T.string)]),
    withPublicVersionNumber(PublicVersionNumber): {
      assert std.isString(PublicVersionNumber) : 'PublicVersionNumber must be a string',
      Properties+::: { PublicVersionNumber: PublicVersionNumber },
    },
    '#withPublisherId': d.fn('`withPublisherId` PublisherId ', [d.arg('PublisherId', d.T.string)]),
    withPublisherId(PublisherId): {
      assert std.isString(PublisherId) : 'PublisherId must be a string',
      Properties+::: { PublisherId: PublisherId },
    },
    '#withPublicTypeArn': d.fn('`withPublicTypeArn` PublicTypeArn ', [d.arg('PublicTypeArn', d.T.string)]),
    withPublicTypeArn(PublicTypeArn): {
      assert std.isString(PublicTypeArn) : 'PublicTypeArn must be a string',
      Properties+::: { PublicTypeArn: PublicTypeArn },
    },
    '#withTypeName': d.fn('`withTypeName` TypeName ', [d.arg('TypeName', d.T.string)]),
    withTypeName(TypeName): {
      assert std.isString(TypeName) : 'TypeName must be a string',
      Properties+::: { TypeName: TypeName },
    },
    '#withLogDeliveryBucket': d.fn('`withLogDeliveryBucket` LogDeliveryBucket ', [d.arg('LogDeliveryBucket', d.T.string)]),
    withLogDeliveryBucket(LogDeliveryBucket): {
      assert std.isString(LogDeliveryBucket) : 'LogDeliveryBucket must be a string',
      Properties+::: { LogDeliveryBucket: LogDeliveryBucket },
    },
    '#withType': d.fn('`withType` Type ', [d.arg('Type', d.T.string)]),
    withType(Type): {
      assert std.isString(Type) : 'Type must be a string',
      assert Type == 'RESOURCE' || Type == 'MODULE' || Type == 'HOOK' : "Type must be either 'RESOURCE' or 'MODULE' or 'HOOK'",
      Properties+::: { Type: Type },
    },
  },
  Publisher: {
    '#': d.pkg(
      name='Publisher',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/CloudFormation.libsonnet',
      help='Register as a publisher in the CloudFormation Registry.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::CloudFormation::Publisher Resource
        * AcceptTermsAndConditions Whether you accept the terms and conditions for publishing extensions in the CloudFormation registry. You must accept the terms and conditions in order to publish public extensions to the CloudFormation registry. The terms and conditions can be found at https://cloudformation-registry-documents.s3.amazonaws.com/Terms_and_Conditions_for_AWS_CloudFormation_Registry_Publishers.pdf
      |||,
      args=[
        d.arg('AcceptTermsAndConditions', 'd.T.boolean'),
      ]
    ),
    new(
      AcceptTermsAndConditions,
    ): {
      local base = self,
      Properties: {
        assert std.isBoolean(AcceptTermsAndConditions) : 'AcceptTermsAndConditions must be a boolean',
        AcceptTermsAndConditions: AcceptTermsAndConditions,
      },
      DependsOn:: [],
      Type: 'AWS::CloudFormation::Publisher',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withPublisherId': d.fn('`withPublisherId` PublisherId ', [d.arg('PublisherId', d.T.string)]),
    withPublisherId(PublisherId): {
      assert std.isString(PublisherId) : 'PublisherId must be a string',
      Properties+::: { PublisherId: PublisherId },
    },
    '#withConnectionArn': d.fn('`withConnectionArn` ConnectionArn ', [d.arg('ConnectionArn', d.T.string)]),
    withConnectionArn(ConnectionArn): {
      assert std.isString(ConnectionArn) : 'ConnectionArn must be a string',
      Properties+::: { ConnectionArn: ConnectionArn },
    },
    '#withPublisherStatus': d.fn('`withPublisherStatus` PublisherStatus ', [d.arg('PublisherStatus', d.T.string)]),
    withPublisherStatus(PublisherStatus): {
      assert std.isString(PublisherStatus) : 'PublisherStatus must be a string',
      assert PublisherStatus == 'VERIFIED' || PublisherStatus == 'UNVERIFIED' : "PublisherStatus must be either 'VERIFIED' or 'UNVERIFIED'",
      Properties+::: { PublisherStatus: PublisherStatus },
    },
    '#withPublisherProfile': d.fn('`withPublisherProfile` PublisherProfile ', [d.arg('PublisherProfile', d.T.string)]),
    withPublisherProfile(PublisherProfile): {
      assert std.isString(PublisherProfile) : 'PublisherProfile must be a string',
      Properties+::: { PublisherProfile: PublisherProfile },
    },
    '#withIdentityProvider': d.fn('`withIdentityProvider` IdentityProvider ', [d.arg('IdentityProvider', d.T.string)]),
    withIdentityProvider(IdentityProvider): {
      assert std.isString(IdentityProvider) : 'IdentityProvider must be a string',
      assert IdentityProvider == 'AWS_Marketplace' || IdentityProvider == 'GitHub' || IdentityProvider == 'Bitbucket' : "IdentityProvider must be either 'AWS_Marketplace' or 'GitHub' or 'Bitbucket'",
      Properties+::: { IdentityProvider: IdentityProvider },
    },
  },
  ResourceDefaultVersion: {
    '#': d.pkg(
      name='ResourceDefaultVersion',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/CloudFormation.libsonnet',
      help='The default version of a resource that has been registered in the CloudFormation Registry.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::CloudFormation::ResourceDefaultVersion Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::CloudFormation::ResourceDefaultVersion',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withVersionId': d.fn('`withVersionId` VersionId ', [d.arg('VersionId', d.T.string)]),
    withVersionId(VersionId): {
      assert std.isString(VersionId) : 'VersionId must be a string',
      Properties+::: { VersionId: VersionId },
    },
    '#withTypeName': d.fn('`withTypeName` TypeName ', [d.arg('TypeName', d.T.string)]),
    withTypeName(TypeName): {
      assert std.isString(TypeName) : 'TypeName must be a string',
      Properties+::: { TypeName: TypeName },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withTypeVersionArn': d.fn('`withTypeVersionArn` TypeVersionArn ', [d.arg('TypeVersionArn', d.T.string)]),
    withTypeVersionArn(TypeVersionArn): {
      assert std.isString(TypeVersionArn) : 'TypeVersionArn must be a string',
      Properties+::: { TypeVersionArn: TypeVersionArn },
    },
  },
  ResourceVersion: {
    '#': d.pkg(
      name='ResourceVersion',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/CloudFormation.libsonnet',
      help='A resource that has been registered in the CloudFormation Registry.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::CloudFormation::ResourceVersion Resource
        * SchemaHandlerPackage A url to the S3 bucket containing the schema handler package that contains the schema, event handlers, and associated files for the type you want to register.For information on generating a schema handler package for the type you want to register, see submit in the CloudFormation CLI User Guide.
        * TypeName The name of the type being registered.We recommend that type names adhere to the following pattern: company_or_organization::service::type.
      |||,
      args=[
        d.arg('SchemaHandlerPackage', 'd.T.string'),
        d.arg('TypeName', 'd.T.string'),
      ]
    ),
    new(
      SchemaHandlerPackage,
      TypeName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(SchemaHandlerPackage) : 'SchemaHandlerPackage must be a string',
        SchemaHandlerPackage: SchemaHandlerPackage,
        assert std.isString(TypeName) : 'TypeName must be a string',
        TypeName: TypeName,
      },
      DependsOn:: [],
      Type: 'AWS::CloudFormation::ResourceVersion',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withTypeArn': d.fn('`withTypeArn` TypeArn ', [d.arg('TypeArn', d.T.string)]),
    withTypeArn(TypeArn): {
      assert std.isString(TypeArn) : 'TypeArn must be a string',
      Properties+::: { TypeArn: TypeArn },
    },
    '#withExecutionRoleArn': d.fn('`withExecutionRoleArn` ExecutionRoleArn ', [d.arg('ExecutionRoleArn', d.T.string)]),
    withExecutionRoleArn(ExecutionRoleArn): {
      assert std.isString(ExecutionRoleArn) : 'ExecutionRoleArn must be a string',
      Properties+::: { ExecutionRoleArn: ExecutionRoleArn },
    },
    '#withIsDefaultVersion': d.fn('`withIsDefaultVersion` IsDefaultVersion ', [d.arg('IsDefaultVersion', d.T.boolean)]),
    withIsDefaultVersion(IsDefaultVersion): {
      assert std.isBoolean(IsDefaultVersion) : 'IsDefaultVersion must be a boolean',
      Properties+::: { IsDefaultVersion: IsDefaultVersion },
    },
    '#withLoggingConfig': d.fn('`withLoggingConfig` LoggingConfig ', [d.arg('LoggingConfig', d.T.object)]),
    withLoggingConfig(LoggingConfig): {
      assert std.isObject(LoggingConfig) : 'LoggingConfig must be a object',
      Properties+::: { LoggingConfig: LoggingConfig },
    },
    '#withProvisioningType': d.fn('`withProvisioningType` ProvisioningType ', [d.arg('ProvisioningType', d.T.string)]),
    withProvisioningType(ProvisioningType): {
      assert std.isString(ProvisioningType) : 'ProvisioningType must be a string',
      assert ProvisioningType == 'NON_PROVISIONABLE' || ProvisioningType == 'IMMUTABLE' || ProvisioningType == 'FULLY_MUTABLE' : "ProvisioningType must be either 'NON_PROVISIONABLE' or 'IMMUTABLE' or 'FULLY_MUTABLE'",
      Properties+::: { ProvisioningType: ProvisioningType },
    },
    '#withVersionId': d.fn('`withVersionId` VersionId ', [d.arg('VersionId', d.T.string)]),
    withVersionId(VersionId): {
      assert std.isString(VersionId) : 'VersionId must be a string',
      Properties+::: { VersionId: VersionId },
    },
    '#withVisibility': d.fn('`withVisibility` Visibility ', [d.arg('Visibility', d.T.string)]),
    withVisibility(Visibility): {
      assert std.isString(Visibility) : 'Visibility must be a string',
      assert Visibility == 'PUBLIC' || Visibility == 'PRIVATE' : "Visibility must be either 'PUBLIC' or 'PRIVATE'",
      Properties+::: { Visibility: Visibility },
    },
  },
  Stack: {
    '#': d.pkg(
      name='Stack',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/CloudFormation.libsonnet',
      help='The AWS::CloudFormation::Stack resource nests a stack as a resource in a top-level template.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::CloudFormation::Stack Resource
        * StackName 
      |||,
      args=[
        d.arg('StackName', 'd.T.string'),
      ]
    ),
    new(
      StackName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(StackName) : 'StackName must be a string',
        StackName: StackName,
      },
      DependsOn:: [],
      Type: 'AWS::CloudFormation::Stack',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withCapabilities': d.fn('`withCapabilities` Capabilities ', [d.arg('Capabilities', d.T.array)]),
    withCapabilities(Capabilities): {
      assert std.isArray(Capabilities) : 'Capabilities must be a array',
      Properties+::: { Capabilities: Capabilities },
    },
    '#withRoleARN': d.fn('`withRoleARN` RoleARN ', [d.arg('RoleARN', d.T.string)]),
    withRoleARN(RoleARN): {
      assert std.isString(RoleARN) : 'RoleARN must be a string',
      Properties+::: { RoleARN: RoleARN },
    },
    '#withOutputs': d.fn('`withOutputs` Outputs ', [d.arg('Outputs', d.T.array)]),
    withOutputs(Outputs): {
      assert std.isArray(Outputs) : 'Outputs must be a array',
      Properties+::: { Outputs: Outputs },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withDisableRollback': d.fn('`withDisableRollback` DisableRollback ', [d.arg('DisableRollback', d.T.boolean)]),
    withDisableRollback(DisableRollback): {
      assert std.isBoolean(DisableRollback) : 'DisableRollback must be a boolean',
      Properties+::: { DisableRollback: DisableRollback },
    },
    '#withEnableTerminationProtection': d.fn('`withEnableTerminationProtection` EnableTerminationProtection ', [d.arg('EnableTerminationProtection', d.T.boolean)]),
    withEnableTerminationProtection(EnableTerminationProtection): {
      assert std.isBoolean(EnableTerminationProtection) : 'EnableTerminationProtection must be a boolean',
      Properties+::: { EnableTerminationProtection: EnableTerminationProtection },
    },
    '#withNotificationARNs': d.fn('`withNotificationARNs` NotificationARNs ', [d.arg('NotificationARNs', d.T.array)]),
    withNotificationARNs(NotificationARNs): {
      assert std.isArray(NotificationARNs) : 'NotificationARNs must be a array',
      Properties+::: { NotificationARNs: NotificationARNs },
    },
    '#withParameters': d.fn('`withParameters` Parameters ', [d.arg('Parameters', d.T.object)]),
    withParameters(Parameters): {
      assert std.isObject(Parameters) : 'Parameters must be a object',
      Properties+::: { Parameters: Parameters },
    },
    '#withParentId': d.fn('`withParentId` ParentId ', [d.arg('ParentId', d.T.string)]),
    withParentId(ParentId): {
      assert std.isString(ParentId) : 'ParentId must be a string',
      Properties+::: { ParentId: ParentId },
    },
    '#withRootId': d.fn('`withRootId` RootId ', [d.arg('RootId', d.T.string)]),
    withRootId(RootId): {
      assert std.isString(RootId) : 'RootId must be a string',
      Properties+::: { RootId: RootId },
    },
    '#withChangeSetId': d.fn('`withChangeSetId` ChangeSetId ', [d.arg('ChangeSetId', d.T.string)]),
    withChangeSetId(ChangeSetId): {
      assert std.isString(ChangeSetId) : 'ChangeSetId must be a string',
      Properties+::: { ChangeSetId: ChangeSetId },
    },
    '#withStackId': d.fn('`withStackId` StackId ', [d.arg('StackId', d.T.string)]),
    withStackId(StackId): {
      assert std.isString(StackId) : 'StackId must be a string',
      Properties+::: { StackId: StackId },
    },
    '#withStackPolicyBody': d.fn('`withStackPolicyBody` StackPolicyBody ', [d.arg('StackPolicyBody', d.T.object)]),
    withStackPolicyBody(StackPolicyBody): {
      assert std.isObject(StackPolicyBody) : 'StackPolicyBody must be a object',
      Properties+::: { StackPolicyBody: StackPolicyBody },
    },
    '#withStackPolicyURL': d.fn('`withStackPolicyURL` StackPolicyURL ', [d.arg('StackPolicyURL', d.T.string)]),
    withStackPolicyURL(StackPolicyURL): {
      assert std.isString(StackPolicyURL) : 'StackPolicyURL must be a string',
      Properties+::: { StackPolicyURL: StackPolicyURL },
    },
    '#withStackStatus': d.fn('`withStackStatus` StackStatus ', [d.arg('StackStatus', d.T.string)]),
    withStackStatus(StackStatus): {
      assert std.isString(StackStatus) : 'StackStatus must be a string',
      assert StackStatus == 'CREATE_IN_PROGRESS' || StackStatus == 'CREATE_FAILED' || StackStatus == 'CREATE_COMPLETE' || StackStatus == 'ROLLBACK_IN_PROGRESS' || StackStatus == 'ROLLBACK_FAILED' || StackStatus == 'ROLLBACK_COMPLETE' || StackStatus == 'DELETE_IN_PROGRESS' || StackStatus == 'DELETE_FAILED' || StackStatus == 'DELETE_COMPLETE' || StackStatus == 'UPDATE_IN_PROGRESS' || StackStatus == 'UPDATE_COMPLETE_CLEANUP_IN_PROGRESS' || StackStatus == 'UPDATE_COMPLETE' || StackStatus == 'UPDATE_FAILED' || StackStatus == 'UPDATE_ROLLBACK_IN_PROGRESS' || StackStatus == 'UPDATE_ROLLBACK_FAILED' || StackStatus == 'UPDATE_ROLLBACK_COMPLETE_CLEANUP_IN_PROGRESS' || StackStatus == 'UPDATE_ROLLBACK_COMPLETE' || StackStatus == 'REVIEW_IN_PROGRESS' || StackStatus == 'IMPORT_IN_PROGRESS' || StackStatus == 'IMPORT_COMPLETE' || StackStatus == 'IMPORT_ROLLBACK_IN_PROGRESS' || StackStatus == 'IMPORT_ROLLBACK_FAILED' || StackStatus == 'IMPORT_ROLLBACK_COMPLETE' : "StackStatus must be either 'CREATE_IN_PROGRESS' or 'CREATE_FAILED' or 'CREATE_COMPLETE' or 'ROLLBACK_IN_PROGRESS' or 'ROLLBACK_FAILED' or 'ROLLBACK_COMPLETE' or 'DELETE_IN_PROGRESS' or 'DELETE_FAILED' or 'DELETE_COMPLETE' or 'UPDATE_IN_PROGRESS' or 'UPDATE_COMPLETE_CLEANUP_IN_PROGRESS' or 'UPDATE_COMPLETE' or 'UPDATE_FAILED' or 'UPDATE_ROLLBACK_IN_PROGRESS' or 'UPDATE_ROLLBACK_FAILED' or 'UPDATE_ROLLBACK_COMPLETE_CLEANUP_IN_PROGRESS' or 'UPDATE_ROLLBACK_COMPLETE' or 'REVIEW_IN_PROGRESS' or 'IMPORT_IN_PROGRESS' or 'IMPORT_COMPLETE' or 'IMPORT_ROLLBACK_IN_PROGRESS' or 'IMPORT_ROLLBACK_FAILED' or 'IMPORT_ROLLBACK_COMPLETE'",
      Properties+::: { StackStatus: StackStatus },
    },
    '#withStackStatusReason': d.fn('`withStackStatusReason` StackStatusReason ', [d.arg('StackStatusReason', d.T.string)]),
    withStackStatusReason(StackStatusReason): {
      assert std.isString(StackStatusReason) : 'StackStatusReason must be a string',
      Properties+::: { StackStatusReason: StackStatusReason },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withTemplateBody': d.fn('`withTemplateBody` TemplateBody ', [d.arg('TemplateBody', d.T.object)]),
    withTemplateBody(TemplateBody): {
      assert std.isObject(TemplateBody) : 'TemplateBody must be a object',
      Properties+::: { TemplateBody: TemplateBody },
    },
    '#withTemplateURL': d.fn('`withTemplateURL` TemplateURL ', [d.arg('TemplateURL', d.T.string)]),
    withTemplateURL(TemplateURL): {
      assert std.isString(TemplateURL) : 'TemplateURL must be a string',
      Properties+::: { TemplateURL: TemplateURL },
    },
    '#withTimeoutInMinutes': d.fn('`withTimeoutInMinutes` TimeoutInMinutes ', [d.arg('TimeoutInMinutes', d.T.integer)]),
    withTimeoutInMinutes(TimeoutInMinutes): {
      assert std.isNumber(TimeoutInMinutes) : 'TimeoutInMinutes must be a integer',
      Properties+::: { TimeoutInMinutes: TimeoutInMinutes },
    },
    '#withLastUpdateTime': d.fn('`withLastUpdateTime` LastUpdateTime ', [d.arg('LastUpdateTime', d.T.string)]),
    withLastUpdateTime(LastUpdateTime): {
      assert std.isString(LastUpdateTime) : 'LastUpdateTime must be a string',
      Properties+::: { LastUpdateTime: LastUpdateTime },
    },
    '#withCreationTime': d.fn('`withCreationTime` CreationTime ', [d.arg('CreationTime', d.T.string)]),
    withCreationTime(CreationTime): {
      assert std.isString(CreationTime) : 'CreationTime must be a string',
      Properties+::: { CreationTime: CreationTime },
    },
  },
  StackSet: {
    '#': d.pkg(
      name='StackSet',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/CloudFormation.libsonnet',
      help='StackSet as a resource provides one-click experience for provisioning a StackSet and StackInstances',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::CloudFormation::StackSet Resource
        * StackSetName The name to associate with the stack set. The name must be unique in the Region where you create your stack set.
        * PermissionModel Describes how the IAM roles required for stack set operations are created. By default, SELF-MANAGED is specified.
      |||,
      args=[
        d.arg('StackSetName', 'd.T.string'),
        d.arg('PermissionModel', 'd.T.string'),
      ]
    ),
    new(
      StackSetName,
      PermissionModel,
    ): {
      local base = self,
      Properties: {
        assert std.isString(StackSetName) : 'StackSetName must be a string',
        StackSetName: StackSetName,
        assert std.isString(PermissionModel) : 'PermissionModel must be a string',
        assert PermissionModel == 'SERVICE_MANAGED' || PermissionModel == 'SELF_MANAGED' : "PermissionModel must be either 'SERVICE_MANAGED' or 'SELF_MANAGED'",
        PermissionModel: PermissionModel,
      },
      DependsOn:: [],
      Type: 'AWS::CloudFormation::StackSet',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withStackSetId': d.fn('`withStackSetId` StackSetId ', [d.arg('StackSetId', d.T.string)]),
    withStackSetId(StackSetId): {
      assert std.isString(StackSetId) : 'StackSetId must be a string',
      Properties+::: { StackSetId: StackSetId },
    },
    '#withAdministrationRoleARN': d.fn('`withAdministrationRoleARN` AdministrationRoleARN ', [d.arg('AdministrationRoleARN', d.T.string)]),
    withAdministrationRoleARN(AdministrationRoleARN): {
      assert std.isString(AdministrationRoleARN) : 'AdministrationRoleARN must be a string',
      Properties+::: { AdministrationRoleARN: AdministrationRoleARN },
    },
    '#withAutoDeployment': d.fn('`withAutoDeployment` AutoDeployment ', [d.arg('AutoDeployment', d.T.object)]),
    withAutoDeployment(AutoDeployment): {
      assert std.isObject(AutoDeployment) : 'AutoDeployment must be a object',
      Properties+::: { AutoDeployment: AutoDeployment },
    },
    '#withCapabilities': d.fn('`withCapabilities` Capabilities ', [d.arg('Capabilities', d.T.array)]),
    withCapabilities(Capabilities): {
      assert std.isArray(Capabilities) : 'Capabilities must be a array',
      Properties+::: { Capabilities: Capabilities },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withExecutionRoleName': d.fn('`withExecutionRoleName` ExecutionRoleName ', [d.arg('ExecutionRoleName', d.T.string)]),
    withExecutionRoleName(ExecutionRoleName): {
      assert std.isString(ExecutionRoleName) : 'ExecutionRoleName must be a string',
      Properties+::: { ExecutionRoleName: ExecutionRoleName },
    },
    '#withOperationPreferences': d.fn('`withOperationPreferences` OperationPreferences ', [d.arg('OperationPreferences', d.T.object)]),
    withOperationPreferences(OperationPreferences): {
      assert std.isObject(OperationPreferences) : 'OperationPreferences must be a object',
      Properties+::: { OperationPreferences: OperationPreferences },
    },
    '#withStackInstancesGroup': d.fn('`withStackInstancesGroup` StackInstancesGroup ', [d.arg('StackInstancesGroup', d.T.array)]),
    withStackInstancesGroup(StackInstancesGroup): {
      assert std.isArray(StackInstancesGroup) : 'StackInstancesGroup must be a array',
      Properties+::: { StackInstancesGroup: StackInstancesGroup },
    },
    '#withParameters': d.fn('`withParameters` Parameters ', [d.arg('Parameters', d.T.array)]),
    withParameters(Parameters): {
      assert std.isArray(Parameters) : 'Parameters must be a array',
      Properties+::: { Parameters: Parameters },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withTemplateBody': d.fn('`withTemplateBody` TemplateBody ', [d.arg('TemplateBody', d.T.string)]),
    withTemplateBody(TemplateBody): {
      assert std.isString(TemplateBody) : 'TemplateBody must be a string',
      Properties+::: { TemplateBody: TemplateBody },
    },
    '#withTemplateURL': d.fn('`withTemplateURL` TemplateURL ', [d.arg('TemplateURL', d.T.string)]),
    withTemplateURL(TemplateURL): {
      assert std.isString(TemplateURL) : 'TemplateURL must be a string',
      Properties+::: { TemplateURL: TemplateURL },
    },
    '#withCallAs': d.fn('`withCallAs` CallAs ', [d.arg('CallAs', d.T.string)]),
    withCallAs(CallAs): {
      assert std.isString(CallAs) : 'CallAs must be a string',
      assert CallAs == 'SELF' || CallAs == 'DELEGATED_ADMIN' : "CallAs must be either 'SELF' or 'DELEGATED_ADMIN'",
      Properties+::: { CallAs: CallAs },
    },
    '#withManagedExecution': d.fn('`withManagedExecution` ManagedExecution ', [d.arg('ManagedExecution', d.T.object)]),
    withManagedExecution(ManagedExecution): {
      assert std.isObject(ManagedExecution) : 'ManagedExecution must be a object',
      Properties+::: { ManagedExecution: ManagedExecution },
    },
  },
  TypeActivation: {
    '#': d.pkg(
      name='TypeActivation',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/CloudFormation.libsonnet',
      help='Enable a resource that has been published in the CloudFormation Registry.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::CloudFormation::TypeActivation Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::CloudFormation::TypeActivation',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withExecutionRoleArn': d.fn('`withExecutionRoleArn` ExecutionRoleArn ', [d.arg('ExecutionRoleArn', d.T.string)]),
    withExecutionRoleArn(ExecutionRoleArn): {
      assert std.isString(ExecutionRoleArn) : 'ExecutionRoleArn must be a string',
      Properties+::: { ExecutionRoleArn: ExecutionRoleArn },
    },
    '#withPublisherId': d.fn('`withPublisherId` PublisherId ', [d.arg('PublisherId', d.T.string)]),
    withPublisherId(PublisherId): {
      assert std.isString(PublisherId) : 'PublisherId must be a string',
      Properties+::: { PublisherId: PublisherId },
    },
    '#withLoggingConfig': d.fn('`withLoggingConfig` LoggingConfig ', [d.arg('LoggingConfig', d.T.object)]),
    withLoggingConfig(LoggingConfig): {
      assert std.isObject(LoggingConfig) : 'LoggingConfig must be a object',
      Properties+::: { LoggingConfig: LoggingConfig },
    },
    '#withPublicTypeArn': d.fn('`withPublicTypeArn` PublicTypeArn ', [d.arg('PublicTypeArn', d.T.string)]),
    withPublicTypeArn(PublicTypeArn): {
      assert std.isString(PublicTypeArn) : 'PublicTypeArn must be a string',
      Properties+::: { PublicTypeArn: PublicTypeArn },
    },
    '#withAutoUpdate': d.fn('`withAutoUpdate` AutoUpdate ', [d.arg('AutoUpdate', d.T.boolean)]),
    withAutoUpdate(AutoUpdate): {
      assert std.isBoolean(AutoUpdate) : 'AutoUpdate must be a boolean',
      Properties+::: { AutoUpdate: AutoUpdate },
    },
    '#withTypeNameAlias': d.fn('`withTypeNameAlias` TypeNameAlias ', [d.arg('TypeNameAlias', d.T.string)]),
    withTypeNameAlias(TypeNameAlias): {
      assert std.isString(TypeNameAlias) : 'TypeNameAlias must be a string',
      Properties+::: { TypeNameAlias: TypeNameAlias },
    },
    '#withVersionBump': d.fn('`withVersionBump` VersionBump ', [d.arg('VersionBump', d.T.string)]),
    withVersionBump(VersionBump): {
      assert std.isString(VersionBump) : 'VersionBump must be a string',
      assert VersionBump == 'MAJOR' || VersionBump == 'MINOR' : "VersionBump must be either 'MAJOR' or 'MINOR'",
      Properties+::: { VersionBump: VersionBump },
    },
    '#withMajorVersion': d.fn('`withMajorVersion` MajorVersion ', [d.arg('MajorVersion', d.T.string)]),
    withMajorVersion(MajorVersion): {
      assert std.isString(MajorVersion) : 'MajorVersion must be a string',
      Properties+::: { MajorVersion: MajorVersion },
    },
    '#withTypeName': d.fn('`withTypeName` TypeName ', [d.arg('TypeName', d.T.string)]),
    withTypeName(TypeName): {
      assert std.isString(TypeName) : 'TypeName must be a string',
      Properties+::: { TypeName: TypeName },
    },
    '#withType': d.fn('`withType` Type ', [d.arg('Type', d.T.string)]),
    withType(Type): {
      assert std.isString(Type) : 'Type must be a string',
      assert Type == 'RESOURCE' || Type == 'MODULE' || Type == 'HOOK' : "Type must be either 'RESOURCE' or 'MODULE' or 'HOOK'",
      Properties+::: { Type: Type },
    },
  },
  WaitCondition: {
    '#': d.pkg(
      name='WaitCondition',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/CloudFormation.libsonnet',
      help='Resource Type definition for AWS::CloudFormation::WaitCondition',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::CloudFormation::WaitCondition Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::CloudFormation::WaitCondition',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withData': d.fn('`withData` Data ', [d.arg('Data', d.T.object)]),
    withData(Data): {
      assert std.isObject(Data) : 'Data must be a object',
      Properties+::: { Data: Data },
    },
    '#withCount': d.fn('`withCount` Count ', [d.arg('Count', d.T.integer)]),
    withCount(Count): {
      assert std.isNumber(Count) : 'Count must be a integer',
      Properties+::: { Count: Count },
    },
    '#withHandle': d.fn('`withHandle` Handle ', [d.arg('Handle', d.T.string)]),
    withHandle(Handle): {
      assert std.isString(Handle) : 'Handle must be a string',
      Properties+::: { Handle: Handle },
    },
    '#withTimeout': d.fn('`withTimeout` Timeout ', [d.arg('Timeout', d.T.string)]),
    withTimeout(Timeout): {
      assert std.isString(Timeout) : 'Timeout must be a string',
      Properties+::: { Timeout: Timeout },
    },
  },
  WaitConditionHandle: {
    '#': d.pkg(
      name='WaitConditionHandle',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/CloudFormation.libsonnet',
      help='Resource Type definition for AWS::CloudFormation::WaitConditionHandle',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::CloudFormation::WaitConditionHandle Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::CloudFormation::WaitConditionHandle',
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
