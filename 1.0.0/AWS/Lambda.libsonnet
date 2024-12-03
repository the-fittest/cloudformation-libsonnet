local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  Alias: {
    '#': d.pkg(
      name='Alias',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Lambda.libsonnet',
      help='Resource Type definition for AWS::Lambda::Alias',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Lambda::Alias Resource
        * FunctionName The name of the Lambda function.
        * FunctionVersion The function version that the alias invokes.
        * Name The name of the alias.
      |||,
      args=[
        d.arg('FunctionName', 'd.T.string'),
        d.arg('FunctionVersion', 'd.T.string'),
        d.arg('Name', 'd.T.string'),
      ]
    ),
    new(
      FunctionName,
      FunctionVersion,
      Name,
    ): {
      local base = self,
      Properties: {
        assert std.isString(FunctionName) : 'FunctionName must be a string',
        FunctionName: FunctionName,
        assert std.isString(FunctionVersion) : 'FunctionVersion must be a string',
        FunctionVersion: FunctionVersion,
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
      },
      DependsOn:: [],
      Type: 'AWS::Lambda::Alias',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withAliasArn': d.fn('`withAliasArn` AliasArn ', [d.arg('AliasArn', d.T.string)]),
    withAliasArn(AliasArn): {
      assert std.isString(AliasArn) : 'AliasArn must be a string',
      Properties+::: { AliasArn: AliasArn },
    },
    '#withProvisionedConcurrencyConfig': d.fn('`withProvisionedConcurrencyConfig` ProvisionedConcurrencyConfig ', [d.arg('ProvisionedConcurrencyConfig', d.T.object)]),
    withProvisionedConcurrencyConfig(ProvisionedConcurrencyConfig): {
      assert std.isObject(ProvisionedConcurrencyConfig) : 'ProvisionedConcurrencyConfig must be a object',
      Properties+::: { ProvisionedConcurrencyConfig: ProvisionedConcurrencyConfig },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withRoutingConfig': d.fn('`withRoutingConfig` RoutingConfig ', [d.arg('RoutingConfig', d.T.object)]),
    withRoutingConfig(RoutingConfig): {
      assert std.isObject(RoutingConfig) : 'RoutingConfig must be a object',
      Properties+::: { RoutingConfig: RoutingConfig },
    },
  },
  CodeSigningConfig: {
    '#': d.pkg(
      name='CodeSigningConfig',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Lambda.libsonnet',
      help='Resource Type definition for AWS::Lambda::CodeSigningConfig.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Lambda::CodeSigningConfig Resource
        * AllowedPublishers When the CodeSigningConfig is later on attached to a function, the function code will be expected to be signed by profiles from this list
      |||,
      args=[
        d.arg('AllowedPublishers', 'd.T.object'),
      ]
    ),
    new(
      AllowedPublishers,
    ): {
      local base = self,
      Properties: {
        assert std.isObject(AllowedPublishers) : 'AllowedPublishers must be a object',
        AllowedPublishers: AllowedPublishers,
      },
      DependsOn:: [],
      Type: 'AWS::Lambda::CodeSigningConfig',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withCodeSigningPolicies': d.fn('`withCodeSigningPolicies` CodeSigningPolicies ', [d.arg('CodeSigningPolicies', d.T.object)]),
    withCodeSigningPolicies(CodeSigningPolicies): {
      assert std.isObject(CodeSigningPolicies) : 'CodeSigningPolicies must be a object',
      Properties+::: { CodeSigningPolicies: CodeSigningPolicies },
    },
    '#withCodeSigningConfigId': d.fn('`withCodeSigningConfigId` CodeSigningConfigId ', [d.arg('CodeSigningConfigId', d.T.string)]),
    withCodeSigningConfigId(CodeSigningConfigId): {
      assert std.isString(CodeSigningConfigId) : 'CodeSigningConfigId must be a string',
      Properties+::: { CodeSigningConfigId: CodeSigningConfigId },
    },
    '#withCodeSigningConfigArn': d.fn('`withCodeSigningConfigArn` CodeSigningConfigArn ', [d.arg('CodeSigningConfigArn', d.T.string)]),
    withCodeSigningConfigArn(CodeSigningConfigArn): {
      assert std.isString(CodeSigningConfigArn) : 'CodeSigningConfigArn must be a string',
      Properties+::: { CodeSigningConfigArn: CodeSigningConfigArn },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  EventInvokeConfig: {
    '#': d.pkg(
      name='EventInvokeConfig',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Lambda.libsonnet',
      help='The AWS::Lambda::EventInvokeConfig resource configures options for asynchronous invocation on a version or an alias.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Lambda::EventInvokeConfig Resource
        * FunctionName The name of the Lambda function.
        * Qualifier The identifier of a version or alias.
      |||,
      args=[
        d.arg('FunctionName', 'd.T.string'),
        d.arg('Qualifier', 'd.T.string'),
      ]
    ),
    new(
      FunctionName,
      Qualifier,
    ): {
      local base = self,
      Properties: {
        assert std.isString(FunctionName) : 'FunctionName must be a string',
        FunctionName: FunctionName,
        assert std.isString(Qualifier) : 'Qualifier must be a string',
        Qualifier: Qualifier,
      },
      DependsOn:: [],
      Type: 'AWS::Lambda::EventInvokeConfig',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDestinationConfig': d.fn('`withDestinationConfig` DestinationConfig ', [d.arg('DestinationConfig', d.T.object)]),
    withDestinationConfig(DestinationConfig): {
      assert std.isObject(DestinationConfig) : 'DestinationConfig must be a object',
      Properties+::: { DestinationConfig: DestinationConfig },
    },
    '#withMaximumEventAgeInSeconds': d.fn('`withMaximumEventAgeInSeconds` MaximumEventAgeInSeconds ', [d.arg('MaximumEventAgeInSeconds', d.T.integer)]),
    withMaximumEventAgeInSeconds(MaximumEventAgeInSeconds): {
      assert std.isNumber(MaximumEventAgeInSeconds) : 'MaximumEventAgeInSeconds must be a integer',
      Properties+::: { MaximumEventAgeInSeconds: MaximumEventAgeInSeconds },
    },
    '#withMaximumRetryAttempts': d.fn('`withMaximumRetryAttempts` MaximumRetryAttempts ', [d.arg('MaximumRetryAttempts', d.T.integer)]),
    withMaximumRetryAttempts(MaximumRetryAttempts): {
      assert std.isNumber(MaximumRetryAttempts) : 'MaximumRetryAttempts must be a integer',
      Properties+::: { MaximumRetryAttempts: MaximumRetryAttempts },
    },
  },
  EventSourceMapping: {
    '#': d.pkg(
      name='EventSourceMapping',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Lambda.libsonnet',
      help='The AWS::Lambda::EventSourceMapping resource creates a mapping between an event source and an LAMlong function. LAM reads items from the event source and triggers the function. For details about each event source type, see the following topics. In particular, each of the topics describes the required and optional parameters for the specific event source. +[Configuring a Dynamo DB stream as an event source](https://docs.aws.amazon.com/lambda/latest/dg/with-ddb.html#services-dynamodb-eventsourcemapping) +[Configuring a Kinesis stream as an event source](https://docs.aws.amazon.com/lambda/latest/dg/with-kinesis.html#services-kinesis-eventsourcemapping) +[Configuring an SQS queue as an event source](https://docs.aws.amazon.com/lambda/latest/dg/with-sqs.html#events-sqs-eventsource) +[Configuring an MQ broker as an event source](https://docs.aws.amazon.com/lambda/latest/dg/with-mq.html#services-mq-eventsourcemapping) +[Configuring MSK as an event source](https://docs.aws.amazon.com/lambda/latest/dg/with-msk.html) +[Configuring Self-Managed Apache Kafka as an event source](https://docs.aws.amazon.com/lambda/latest/dg/kafka-smaa.html) +[Configuring Amazon DocumentDB as an event source](https://docs.aws.amazon.com/lambda/latest/dg/with-documentdb.html)',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Lambda::EventSourceMapping Resource
        * FunctionName The name or ARN of the Lambda function.**Name formats** +*Function name* – MyFunction.+*Function ARN* – arn:aws:lambda:us-west-2:123456789012:function:MyFunction.+*Version or Alias ARN* – arn:aws:lambda:us-west-2:123456789012:function:MyFunction:PROD.+*Partial ARN* – 123456789012:function:MyFunction. The length constraint applies only to the full ARN. If you specify only the function name, its limited to 64 characters in length.
      |||,
      args=[
        d.arg('FunctionName', 'd.T.string'),
      ]
    ),
    new(
      FunctionName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(FunctionName) : 'FunctionName must be a string',
        FunctionName: FunctionName,
      },
      DependsOn:: [],
      Type: 'AWS::Lambda::EventSourceMapping',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withBatchSize': d.fn('`withBatchSize` BatchSize ', [d.arg('BatchSize', d.T.integer)]),
    withBatchSize(BatchSize): {
      assert std.isNumber(BatchSize) : 'BatchSize must be a integer',
      Properties+::: { BatchSize: BatchSize },
    },
    '#withBisectBatchOnFunctionError': d.fn('`withBisectBatchOnFunctionError` BisectBatchOnFunctionError ', [d.arg('BisectBatchOnFunctionError', d.T.boolean)]),
    withBisectBatchOnFunctionError(BisectBatchOnFunctionError): {
      assert std.isBoolean(BisectBatchOnFunctionError) : 'BisectBatchOnFunctionError must be a boolean',
      Properties+::: { BisectBatchOnFunctionError: BisectBatchOnFunctionError },
    },
    '#withDestinationConfig': d.fn('`withDestinationConfig` DestinationConfig ', [d.arg('DestinationConfig', d.T.object)]),
    withDestinationConfig(DestinationConfig): {
      assert std.isObject(DestinationConfig) : 'DestinationConfig must be a object',
      Properties+::: { DestinationConfig: DestinationConfig },
    },
    '#withEnabled': d.fn('`withEnabled` Enabled ', [d.arg('Enabled', d.T.boolean)]),
    withEnabled(Enabled): {
      assert std.isBoolean(Enabled) : 'Enabled must be a boolean',
      Properties+::: { Enabled: Enabled },
    },
    '#withEventSourceArn': d.fn('`withEventSourceArn` EventSourceArn ', [d.arg('EventSourceArn', d.T.string)]),
    withEventSourceArn(EventSourceArn): {
      assert std.isString(EventSourceArn) : 'EventSourceArn must be a string',
      Properties+::: { EventSourceArn: EventSourceArn },
    },
    '#withEventSourceMappingArn': d.fn('`withEventSourceMappingArn` EventSourceMappingArn ', [d.arg('EventSourceMappingArn', d.T.string)]),
    withEventSourceMappingArn(EventSourceMappingArn): {
      assert std.isString(EventSourceMappingArn) : 'EventSourceMappingArn must be a string',
      Properties+::: { EventSourceMappingArn: EventSourceMappingArn },
    },
    '#withFilterCriteria': d.fn('`withFilterCriteria` FilterCriteria ', [d.arg('FilterCriteria', d.T.object)]),
    withFilterCriteria(FilterCriteria): {
      assert std.isObject(FilterCriteria) : 'FilterCriteria must be a object',
      Properties+::: { FilterCriteria: FilterCriteria },
    },
    '#withKmsKeyArn': d.fn('`withKmsKeyArn` KmsKeyArn ', [d.arg('KmsKeyArn', d.T.string)]),
    withKmsKeyArn(KmsKeyArn): {
      assert std.isString(KmsKeyArn) : 'KmsKeyArn must be a string',
      Properties+::: { KmsKeyArn: KmsKeyArn },
    },
    '#withMaximumBatchingWindowInSeconds': d.fn('`withMaximumBatchingWindowInSeconds` MaximumBatchingWindowInSeconds ', [d.arg('MaximumBatchingWindowInSeconds', d.T.integer)]),
    withMaximumBatchingWindowInSeconds(MaximumBatchingWindowInSeconds): {
      assert std.isNumber(MaximumBatchingWindowInSeconds) : 'MaximumBatchingWindowInSeconds must be a integer',
      Properties+::: { MaximumBatchingWindowInSeconds: MaximumBatchingWindowInSeconds },
    },
    '#withMaximumRecordAgeInSeconds': d.fn('`withMaximumRecordAgeInSeconds` MaximumRecordAgeInSeconds ', [d.arg('MaximumRecordAgeInSeconds', d.T.integer)]),
    withMaximumRecordAgeInSeconds(MaximumRecordAgeInSeconds): {
      assert std.isNumber(MaximumRecordAgeInSeconds) : 'MaximumRecordAgeInSeconds must be a integer',
      Properties+::: { MaximumRecordAgeInSeconds: MaximumRecordAgeInSeconds },
    },
    '#withMaximumRetryAttempts': d.fn('`withMaximumRetryAttempts` MaximumRetryAttempts ', [d.arg('MaximumRetryAttempts', d.T.integer)]),
    withMaximumRetryAttempts(MaximumRetryAttempts): {
      assert std.isNumber(MaximumRetryAttempts) : 'MaximumRetryAttempts must be a integer',
      Properties+::: { MaximumRetryAttempts: MaximumRetryAttempts },
    },
    '#withParallelizationFactor': d.fn('`withParallelizationFactor` ParallelizationFactor ', [d.arg('ParallelizationFactor', d.T.integer)]),
    withParallelizationFactor(ParallelizationFactor): {
      assert std.isNumber(ParallelizationFactor) : 'ParallelizationFactor must be a integer',
      Properties+::: { ParallelizationFactor: ParallelizationFactor },
    },
    '#withStartingPosition': d.fn('`withStartingPosition` StartingPosition ', [d.arg('StartingPosition', d.T.string)]),
    withStartingPosition(StartingPosition): {
      assert std.isString(StartingPosition) : 'StartingPosition must be a string',
      Properties+::: { StartingPosition: StartingPosition },
    },
    '#withStartingPositionTimestamp': d.fn('`withStartingPositionTimestamp` StartingPositionTimestamp ', [d.arg('StartingPositionTimestamp', d.T.integer)]),
    withStartingPositionTimestamp(StartingPositionTimestamp): {
      // Type: number
      Properties+::: { StartingPositionTimestamp: StartingPositionTimestamp },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withTopics': d.fn('`withTopics` Topics ', [d.arg('Topics', d.T.array)]),
    withTopics(Topics): {
      assert std.isArray(Topics) : 'Topics must be a array',
      Properties+::: { Topics: Topics },
    },
    '#withQueues': d.fn('`withQueues` Queues ', [d.arg('Queues', d.T.array)]),
    withQueues(Queues): {
      assert std.isArray(Queues) : 'Queues must be a array',
      Properties+::: { Queues: Queues },
    },
    '#withSourceAccessConfigurations': d.fn('`withSourceAccessConfigurations` SourceAccessConfigurations ', [d.arg('SourceAccessConfigurations', d.T.array)]),
    withSourceAccessConfigurations(SourceAccessConfigurations): {
      assert std.isArray(SourceAccessConfigurations) : 'SourceAccessConfigurations must be a array',
      Properties+::: { SourceAccessConfigurations: SourceAccessConfigurations },
    },
    '#withTumblingWindowInSeconds': d.fn('`withTumblingWindowInSeconds` TumblingWindowInSeconds ', [d.arg('TumblingWindowInSeconds', d.T.integer)]),
    withTumblingWindowInSeconds(TumblingWindowInSeconds): {
      assert std.isNumber(TumblingWindowInSeconds) : 'TumblingWindowInSeconds must be a integer',
      Properties+::: { TumblingWindowInSeconds: TumblingWindowInSeconds },
    },
    '#withFunctionResponseTypes': d.fn('`withFunctionResponseTypes` FunctionResponseTypes ', [d.arg('FunctionResponseTypes', d.T.array)]),
    withFunctionResponseTypes(FunctionResponseTypes): {
      assert std.isArray(FunctionResponseTypes) : 'FunctionResponseTypes must be a array',
      Properties+::: { FunctionResponseTypes: FunctionResponseTypes },
    },
    '#withSelfManagedEventSource': d.fn('`withSelfManagedEventSource` SelfManagedEventSource ', [d.arg('SelfManagedEventSource', d.T.object)]),
    withSelfManagedEventSource(SelfManagedEventSource): {
      assert std.isObject(SelfManagedEventSource) : 'SelfManagedEventSource must be a object',
      Properties+::: { SelfManagedEventSource: SelfManagedEventSource },
    },
    '#withAmazonManagedKafkaEventSourceConfig': d.fn('`withAmazonManagedKafkaEventSourceConfig` AmazonManagedKafkaEventSourceConfig ', [d.arg('AmazonManagedKafkaEventSourceConfig', d.T.object)]),
    withAmazonManagedKafkaEventSourceConfig(AmazonManagedKafkaEventSourceConfig): {
      assert std.isObject(AmazonManagedKafkaEventSourceConfig) : 'AmazonManagedKafkaEventSourceConfig must be a object',
      Properties+::: { AmazonManagedKafkaEventSourceConfig: AmazonManagedKafkaEventSourceConfig },
    },
    '#withSelfManagedKafkaEventSourceConfig': d.fn('`withSelfManagedKafkaEventSourceConfig` SelfManagedKafkaEventSourceConfig ', [d.arg('SelfManagedKafkaEventSourceConfig', d.T.object)]),
    withSelfManagedKafkaEventSourceConfig(SelfManagedKafkaEventSourceConfig): {
      assert std.isObject(SelfManagedKafkaEventSourceConfig) : 'SelfManagedKafkaEventSourceConfig must be a object',
      Properties+::: { SelfManagedKafkaEventSourceConfig: SelfManagedKafkaEventSourceConfig },
    },
    '#withScalingConfig': d.fn('`withScalingConfig` ScalingConfig ', [d.arg('ScalingConfig', d.T.object)]),
    withScalingConfig(ScalingConfig): {
      assert std.isObject(ScalingConfig) : 'ScalingConfig must be a object',
      Properties+::: { ScalingConfig: ScalingConfig },
    },
    '#withDocumentDBEventSourceConfig': d.fn('`withDocumentDBEventSourceConfig` DocumentDBEventSourceConfig ', [d.arg('DocumentDBEventSourceConfig', d.T.object)]),
    withDocumentDBEventSourceConfig(DocumentDBEventSourceConfig): {
      assert std.isObject(DocumentDBEventSourceConfig) : 'DocumentDBEventSourceConfig must be a object',
      Properties+::: { DocumentDBEventSourceConfig: DocumentDBEventSourceConfig },
    },
    '#withProvisionedPollerConfig': d.fn('`withProvisionedPollerConfig` ProvisionedPollerConfig ', [d.arg('ProvisionedPollerConfig', d.T.object)]),
    withProvisionedPollerConfig(ProvisionedPollerConfig): {
      assert std.isObject(ProvisionedPollerConfig) : 'ProvisionedPollerConfig must be a object',
      Properties+::: { ProvisionedPollerConfig: ProvisionedPollerConfig },
    },
    '#withMetricsConfig': d.fn('`withMetricsConfig` MetricsConfig ', [d.arg('MetricsConfig', d.T.object)]),
    withMetricsConfig(MetricsConfig): {
      assert std.isObject(MetricsConfig) : 'MetricsConfig must be a object',
      Properties+::: { MetricsConfig: MetricsConfig },
    },
  },
  Function: {
    '#': d.pkg(
      name='Function',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Lambda.libsonnet',
      help='The AWS::Lambda::Function resource creates a Lambda function. To create a function, you need a [deployment package](https://docs.aws.amazon.com/lambda/latest/dg/gettingstarted-package.html) and an [execution role](https://docs.aws.amazon.com/lambda/latest/dg/lambda-intro-execution-role.html). The deployment package is a .zip file archive or container image that contains your function code. The execution role grants the function permission to use AWS services, such as Amazon CloudWatch Logs for log streaming and AWS X-Ray for request tracing. You set the package type to Image if the deployment package is a [container image](https://docs.aws.amazon.com/lambda/latest/dg/lambda-images.html). For these functions, include the URI of the container image in the ECR registry in the [ImageUri property of the Code property](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-function-code.html#cfn-lambda-function-code-imageuri). You do not need to specify the handler and runtime properties.  You set the package type to Zip if the deployment package is a [.zip file archive](https://docs.aws.amazon.com/lambda/latest/dg/gettingstarted-package.html#gettingstarted-package-zip). For these functions, specify the S3 location of your .zip file in the Code property. Alternatively, for Node.js and Python functions, you can define your function inline in the [ZipFile property of the Code property](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-function-code.html#cfn-lambda-function-code-zipfile). In both cases, you must also specify the handler and runtime properties. You can use [code signing](https://docs.aws.amazon.com/lambda/latest/dg/configuration-codesigning.html) if your deployment package is a .zip file archive. To enable code signing for this function, specify the ARN of a code-signing configuration. When a user attempts to deploy a code package with UpdateFunctionCode, Lambda checks that the code package has a valid signature from a trusted publisher. The code-signing configuration includes a set of signing profiles, which define the trusted publishers for this function. When you update a AWS::Lambda::Function resource, CFNshort calls the [UpdateFunctionConfiguration](https://docs.aws.amazon.com/lambda/latest/api/API_UpdateFunctionConfiguration.html) and [UpdateFunctionCode](https://docs.aws.amazon.com/lambda/latest/api/API_UpdateFunctionCode.html) LAM APIs under the hood. Because these calls happen sequentially, and invocations can happen between these calls, your function may encounter errors in the time between the calls. For example, if you remove an environment variable, and the code that references that environment variable in the same CFNshort update, you may see invocation errors related to a missing environment variable. To work around this, you can invoke your function against a version or alias by default, rather than the $LATEST version. Note that you configure [provisioned concurrency](https://docs.aws.amazon.com/lambda/latest/dg/provisioned-concurrency.html) on a AWS::Lambda::Version or a AWS::Lambda::Alias. For a complete introduction to Lambda functions, see [What is Lambda?](https://docs.aws.amazon.com/lambda/latest/dg/lambda-welcome.html) in the *Lambda developer guide.*',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Lambda::Function Resource
        * Code The code for the function. You can define your function code in multiple ways:+For .zip deployment packages, you can specify the S3 location of the .zip file in the S3Bucket, S3Key, and S3ObjectVersion properties.+For .zip deployment packages, you can alternatively define the function code inline in the ZipFile property. This method works only for Node.js and Python functions.+For container images, specify the URI of your container image in the ECR registry in the ImageUri property.
        * Role The Amazon Resource Name (ARN) of the functions execution role.
      |||,
      args=[
        d.arg('Code', 'd.T.object'),
        d.arg('Role', 'd.T.string'),
      ]
    ),
    new(
      Code,
      Role,
    ): {
      local base = self,
      Properties: {
        assert std.isObject(Code) : 'Code must be a object',
        Code: Code,
        assert std.isString(Role) : 'Role must be a string',
        Role: Role,
      },
      DependsOn:: [],
      Type: 'AWS::Lambda::Function',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withTracingConfig': d.fn('`withTracingConfig` TracingConfig ', [d.arg('TracingConfig', d.T.object)]),
    withTracingConfig(TracingConfig): {
      assert std.isObject(TracingConfig) : 'TracingConfig must be a object',
      Properties+::: { TracingConfig: TracingConfig },
    },
    '#withVpcConfig': d.fn('`withVpcConfig` VpcConfig ', [d.arg('VpcConfig', d.T.object)]),
    withVpcConfig(VpcConfig): {
      assert std.isObject(VpcConfig) : 'VpcConfig must be a object',
      Properties+::: { VpcConfig: VpcConfig },
    },
    '#withRuntimeManagementConfig': d.fn('`withRuntimeManagementConfig` RuntimeManagementConfig ', [d.arg('RuntimeManagementConfig', d.T.object)]),
    withRuntimeManagementConfig(RuntimeManagementConfig): {
      assert std.isObject(RuntimeManagementConfig) : 'RuntimeManagementConfig must be a object',
      Properties+::: { RuntimeManagementConfig: RuntimeManagementConfig },
    },
    '#withReservedConcurrentExecutions': d.fn('`withReservedConcurrentExecutions` ReservedConcurrentExecutions ', [d.arg('ReservedConcurrentExecutions', d.T.integer)]),
    withReservedConcurrentExecutions(ReservedConcurrentExecutions): {
      assert std.isNumber(ReservedConcurrentExecutions) : 'ReservedConcurrentExecutions must be a integer',
      Properties+::: { ReservedConcurrentExecutions: ReservedConcurrentExecutions },
    },
    '#withSnapStart': d.fn('`withSnapStart` SnapStart ', [d.arg('SnapStart', d.T.object)]),
    withSnapStart(SnapStart): {
      assert std.isObject(SnapStart) : 'SnapStart must be a object',
      Properties+::: { SnapStart: SnapStart },
    },
    '#withFileSystemConfigs': d.fn('`withFileSystemConfigs` FileSystemConfigs ', [d.arg('FileSystemConfigs', d.T.array)]),
    withFileSystemConfigs(FileSystemConfigs): {
      assert std.isArray(FileSystemConfigs) : 'FileSystemConfigs must be a array',
      Properties+::: { FileSystemConfigs: FileSystemConfigs },
    },
    '#withFunctionName': d.fn('`withFunctionName` FunctionName ', [d.arg('FunctionName', d.T.string)]),
    withFunctionName(FunctionName): {
      assert std.isString(FunctionName) : 'FunctionName must be a string',
      Properties+::: { FunctionName: FunctionName },
    },
    '#withRuntime': d.fn('`withRuntime` Runtime ', [d.arg('Runtime', d.T.string)]),
    withRuntime(Runtime): {
      assert std.isString(Runtime) : 'Runtime must be a string',
      Properties+::: { Runtime: Runtime },
    },
    '#withKmsKeyArn': d.fn('`withKmsKeyArn` KmsKeyArn ', [d.arg('KmsKeyArn', d.T.string)]),
    withKmsKeyArn(KmsKeyArn): {
      assert std.isString(KmsKeyArn) : 'KmsKeyArn must be a string',
      Properties+::: { KmsKeyArn: KmsKeyArn },
    },
    '#withPackageType': d.fn('`withPackageType` PackageType ', [d.arg('PackageType', d.T.string)]),
    withPackageType(PackageType): {
      assert std.isString(PackageType) : 'PackageType must be a string',
      assert PackageType == 'Image' || PackageType == 'Zip' : "PackageType must be either 'Image' or 'Zip'",
      Properties+::: { PackageType: PackageType },
    },
    '#withCodeSigningConfigArn': d.fn('`withCodeSigningConfigArn` CodeSigningConfigArn ', [d.arg('CodeSigningConfigArn', d.T.string)]),
    withCodeSigningConfigArn(CodeSigningConfigArn): {
      assert std.isString(CodeSigningConfigArn) : 'CodeSigningConfigArn must be a string',
      Properties+::: { CodeSigningConfigArn: CodeSigningConfigArn },
    },
    '#withLayers': d.fn('`withLayers` Layers ', [d.arg('Layers', d.T.array)]),
    withLayers(Layers): {
      assert std.isArray(Layers) : 'Layers must be a array',
      Properties+::: { Layers: Layers },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withImageConfig': d.fn('`withImageConfig` ImageConfig ', [d.arg('ImageConfig', d.T.object)]),
    withImageConfig(ImageConfig): {
      assert std.isObject(ImageConfig) : 'ImageConfig must be a object',
      Properties+::: { ImageConfig: ImageConfig },
    },
    '#withMemorySize': d.fn('`withMemorySize` MemorySize ', [d.arg('MemorySize', d.T.integer)]),
    withMemorySize(MemorySize): {
      assert std.isNumber(MemorySize) : 'MemorySize must be a integer',
      Properties+::: { MemorySize: MemorySize },
    },
    '#withDeadLetterConfig': d.fn('`withDeadLetterConfig` DeadLetterConfig ', [d.arg('DeadLetterConfig', d.T.object)]),
    withDeadLetterConfig(DeadLetterConfig): {
      assert std.isObject(DeadLetterConfig) : 'DeadLetterConfig must be a object',
      Properties+::: { DeadLetterConfig: DeadLetterConfig },
    },
    '#withTimeout': d.fn('`withTimeout` Timeout ', [d.arg('Timeout', d.T.integer)]),
    withTimeout(Timeout): {
      assert std.isNumber(Timeout) : 'Timeout must be a integer',
      Properties+::: { Timeout: Timeout },
    },
    '#withHandler': d.fn('`withHandler` Handler ', [d.arg('Handler', d.T.string)]),
    withHandler(Handler): {
      assert std.isString(Handler) : 'Handler must be a string',
      Properties+::: { Handler: Handler },
    },
    '#withSnapStartResponse': d.fn('`withSnapStartResponse` SnapStartResponse ', [d.arg('SnapStartResponse', d.T.object)]),
    withSnapStartResponse(SnapStartResponse): {
      assert std.isObject(SnapStartResponse) : 'SnapStartResponse must be a object',
      Properties+::: { SnapStartResponse: SnapStartResponse },
    },
    '#withLoggingConfig': d.fn('`withLoggingConfig` LoggingConfig ', [d.arg('LoggingConfig', d.T.object)]),
    withLoggingConfig(LoggingConfig): {
      assert std.isObject(LoggingConfig) : 'LoggingConfig must be a object',
      Properties+::: { LoggingConfig: LoggingConfig },
    },
    '#withRecursiveLoop': d.fn('`withRecursiveLoop` RecursiveLoop ', [d.arg('RecursiveLoop', d.T.string)]),
    withRecursiveLoop(RecursiveLoop): {
      assert std.isString(RecursiveLoop) : 'RecursiveLoop must be a string',
      Properties+::: { RecursiveLoop: RecursiveLoop },
    },
    '#withEnvironment': d.fn('`withEnvironment` Environment ', [d.arg('Environment', d.T.object)]),
    withEnvironment(Environment): {
      assert std.isObject(Environment) : 'Environment must be a object',
      Properties+::: { Environment: Environment },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withEphemeralStorage': d.fn('`withEphemeralStorage` EphemeralStorage ', [d.arg('EphemeralStorage', d.T.object)]),
    withEphemeralStorage(EphemeralStorage): {
      assert std.isObject(EphemeralStorage) : 'EphemeralStorage must be a object',
      Properties+::: { EphemeralStorage: EphemeralStorage },
    },
    '#withArchitectures': d.fn('`withArchitectures` Architectures ', [d.arg('Architectures', d.T.array)]),
    withArchitectures(Architectures): {
      assert std.isArray(Architectures) : 'Architectures must be a array',
      Properties+::: { Architectures: Architectures },
    },
  },
  LayerVersion: {
    '#': d.pkg(
      name='LayerVersion',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Lambda.libsonnet',
      help='Resource Type definition for AWS::Lambda::LayerVersion',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Lambda::LayerVersion Resource
        * Content The function layer archive.
      |||,
      args=[
        d.arg('Content', 'd.T.object'),
      ]
    ),
    new(
      Content,
    ): {
      local base = self,
      Properties: {
        assert std.isObject(Content) : 'Content must be a object',
        Content: Content,
      },
      DependsOn:: [],
      Type: 'AWS::Lambda::LayerVersion',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withCompatibleRuntimes': d.fn('`withCompatibleRuntimes` CompatibleRuntimes ', [d.arg('CompatibleRuntimes', d.T.array)]),
    withCompatibleRuntimes(CompatibleRuntimes): {
      assert std.isArray(CompatibleRuntimes) : 'CompatibleRuntimes must be a array',
      Properties+::: { CompatibleRuntimes: CompatibleRuntimes },
    },
    '#withLicenseInfo': d.fn('`withLicenseInfo` LicenseInfo ', [d.arg('LicenseInfo', d.T.string)]),
    withLicenseInfo(LicenseInfo): {
      assert std.isString(LicenseInfo) : 'LicenseInfo must be a string',
      Properties+::: { LicenseInfo: LicenseInfo },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withLayerName': d.fn('`withLayerName` LayerName ', [d.arg('LayerName', d.T.string)]),
    withLayerName(LayerName): {
      assert std.isString(LayerName) : 'LayerName must be a string',
      Properties+::: { LayerName: LayerName },
    },
    '#withLayerVersionArn': d.fn('`withLayerVersionArn` LayerVersionArn ', [d.arg('LayerVersionArn', d.T.string)]),
    withLayerVersionArn(LayerVersionArn): {
      assert std.isString(LayerVersionArn) : 'LayerVersionArn must be a string',
      Properties+::: { LayerVersionArn: LayerVersionArn },
    },
    '#withCompatibleArchitectures': d.fn('`withCompatibleArchitectures` CompatibleArchitectures ', [d.arg('CompatibleArchitectures', d.T.array)]),
    withCompatibleArchitectures(CompatibleArchitectures): {
      assert std.isArray(CompatibleArchitectures) : 'CompatibleArchitectures must be a array',
      Properties+::: { CompatibleArchitectures: CompatibleArchitectures },
    },
  },
  LayerVersionPermission: {
    '#': d.pkg(
      name='LayerVersionPermission',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Lambda.libsonnet',
      help='Schema for Lambda LayerVersionPermission',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Lambda::LayerVersionPermission Resource
        * LayerVersionArn The name or Amazon Resource Name (ARN) of the layer.
        * Action The API action that grants access to the layer.
        * Principal An account ID, or * to grant layer usage permission to all accounts in an organization, or all AWS accounts (if organizationId is not specified).
      |||,
      args=[
        d.arg('LayerVersionArn', 'd.T.string'),
        d.arg('Action', 'd.T.string'),
        d.arg('Principal', 'd.T.string'),
      ]
    ),
    new(
      LayerVersionArn,
      Action,
      Principal,
    ): {
      local base = self,
      Properties: {
        assert std.isString(LayerVersionArn) : 'LayerVersionArn must be a string',
        LayerVersionArn: LayerVersionArn,
        assert std.isString(Action) : 'Action must be a string',
        Action: Action,
        assert std.isString(Principal) : 'Principal must be a string',
        Principal: Principal,
      },
      DependsOn:: [],
      Type: 'AWS::Lambda::LayerVersionPermission',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withOrganizationId': d.fn('`withOrganizationId` OrganizationId ', [d.arg('OrganizationId', d.T.string)]),
    withOrganizationId(OrganizationId): {
      assert std.isString(OrganizationId) : 'OrganizationId must be a string',
      Properties+::: { OrganizationId: OrganizationId },
    },
  },
  Permission: {
    '#': d.pkg(
      name='Permission',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Lambda.libsonnet',
      help='The AWS::Lambda::Permission resource grants an AWS service or another account permission to use a function. You can apply the policy at the function level, or specify a qualifier to restrict access to a single version or alias. If you use a qualifier, the invoker must use the full Amazon Resource Name (ARN) of that version or alias to invoke the function. To grant permission to another account, specify the account ID as the Principal. To grant permission to an organization defined in AOlong, specify the organization ID as the PrincipalOrgID. For AWS services, the principal is a domain-style identifier defined by the service, like s3.amazonaws.com or sns.amazonaws.com. For AWS services, you can also specify the ARN of the associated resource as the SourceArn. If you grant permission to a service principal without specifying the source, other accounts could potentially configure resources in their account to invoke your Lambda function. If your function has a function URL, you can specify the FunctionUrlAuthType parameter. This adds a condition to your permission that only applies when your function URLs AuthType matches the specified FunctionUrlAuthType. For more information about the AuthType parameter, see [Security and auth model for function URLs](https://docs.aws.amazon.com/lambda/latest/dg/urls-auth.html). This resource adds a statement to a resource-based permission policy for the function. For more information about function policies, see [Lambda Function Policies](https://docs.aws.amazon.com/lambda/latest/dg/access-control-resource-based.html).',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Lambda::Permission Resource
        * FunctionName The name or ARN of the Lambda function, version, or alias.**Name formats** +*Function name* – my-function (name-only), my-function:v1 (with alias).+*Function ARN* – arn:aws:lambda:us-west-2:123456789012:function:my-function.+*Partial ARN* – 123456789012:function:my-function. You can append a version number or alias to any of the formats. The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.
        * Action The action that the principal can use on the function. For example, lambda:InvokeFunction or lambda:GetFunction.
        * Principal The AWS-service, AWS-account, IAM user, or IAM role that invokes the function. If you specify a service, use SourceArn or SourceAccount to limit who can invoke the function through that service.
      |||,
      args=[
        d.arg('FunctionName', 'd.T.string'),
        d.arg('Action', 'd.T.string'),
        d.arg('Principal', 'd.T.string'),
      ]
    ),
    new(
      FunctionName,
      Action,
      Principal,
    ): {
      local base = self,
      Properties: {
        assert std.isString(FunctionName) : 'FunctionName must be a string',
        FunctionName: FunctionName,
        assert std.isString(Action) : 'Action must be a string',
        Action: Action,
        assert std.isString(Principal) : 'Principal must be a string',
        Principal: Principal,
      },
      DependsOn:: [],
      Type: 'AWS::Lambda::Permission',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withEventSourceToken': d.fn('`withEventSourceToken` EventSourceToken ', [d.arg('EventSourceToken', d.T.string)]),
    withEventSourceToken(EventSourceToken): {
      assert std.isString(EventSourceToken) : 'EventSourceToken must be a string',
      Properties+::: { EventSourceToken: EventSourceToken },
    },
    '#withFunctionUrlAuthType': d.fn('`withFunctionUrlAuthType` FunctionUrlAuthType ', [d.arg('FunctionUrlAuthType', d.T.string)]),
    withFunctionUrlAuthType(FunctionUrlAuthType): {
      assert std.isString(FunctionUrlAuthType) : 'FunctionUrlAuthType must be a string',
      assert FunctionUrlAuthType == 'AWS_IAM' || FunctionUrlAuthType == 'NONE' : "FunctionUrlAuthType must be either 'AWS_IAM' or 'NONE'",
      Properties+::: { FunctionUrlAuthType: FunctionUrlAuthType },
    },
    '#withSourceArn': d.fn('`withSourceArn` SourceArn ', [d.arg('SourceArn', d.T.string)]),
    withSourceArn(SourceArn): {
      assert std.isString(SourceArn) : 'SourceArn must be a string',
      Properties+::: { SourceArn: SourceArn },
    },
    '#withSourceAccount': d.fn('`withSourceAccount` SourceAccount ', [d.arg('SourceAccount', d.T.string)]),
    withSourceAccount(SourceAccount): {
      assert std.isString(SourceAccount) : 'SourceAccount must be a string',
      Properties+::: { SourceAccount: SourceAccount },
    },
    '#withPrincipalOrgID': d.fn('`withPrincipalOrgID` PrincipalOrgID ', [d.arg('PrincipalOrgID', d.T.string)]),
    withPrincipalOrgID(PrincipalOrgID): {
      assert std.isString(PrincipalOrgID) : 'PrincipalOrgID must be a string',
      Properties+::: { PrincipalOrgID: PrincipalOrgID },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
  },
  Url: {
    '#': d.pkg(
      name='Url',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Lambda.libsonnet',
      help='Resource Type definition for AWS::Lambda::Url',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Lambda::Url Resource
        * TargetFunctionArn The Amazon Resource Name (ARN) of the function associated with the Function URL.
        * AuthType Can be either AWS_IAM if the requests are authorized via IAM, or NONE if no authorization is configured on the Function URL.
      |||,
      args=[
        d.arg('TargetFunctionArn', 'd.T.string'),
        d.arg('AuthType', 'd.T.string'),
      ]
    ),
    new(
      TargetFunctionArn,
      AuthType,
    ): {
      local base = self,
      Properties: {
        assert std.isString(TargetFunctionArn) : 'TargetFunctionArn must be a string',
        TargetFunctionArn: TargetFunctionArn,
        assert std.isString(AuthType) : 'AuthType must be a string',
        assert AuthType == 'AWS_IAM' || AuthType == 'NONE' : "AuthType must be either 'AWS_IAM' or 'NONE'",
        AuthType: AuthType,
      },
      DependsOn:: [],
      Type: 'AWS::Lambda::Url',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withQualifier': d.fn('`withQualifier` Qualifier ', [d.arg('Qualifier', d.T.string)]),
    withQualifier(Qualifier): {
      assert std.isString(Qualifier) : 'Qualifier must be a string',
      Properties+::: { Qualifier: Qualifier },
    },
    '#withInvokeMode': d.fn('`withInvokeMode` InvokeMode ', [d.arg('InvokeMode', d.T.string)]),
    withInvokeMode(InvokeMode): {
      assert std.isString(InvokeMode) : 'InvokeMode must be a string',
      assert InvokeMode == 'BUFFERED' || InvokeMode == 'RESPONSE_STREAM' : "InvokeMode must be either 'BUFFERED' or 'RESPONSE_STREAM'",
      Properties+::: { InvokeMode: InvokeMode },
    },
    '#withFunctionArn': d.fn('`withFunctionArn` FunctionArn ', [d.arg('FunctionArn', d.T.string)]),
    withFunctionArn(FunctionArn): {
      assert std.isString(FunctionArn) : 'FunctionArn must be a string',
      Properties+::: { FunctionArn: FunctionArn },
    },
    '#withFunctionUrl': d.fn('`withFunctionUrl` FunctionUrl ', [d.arg('FunctionUrl', d.T.string)]),
    withFunctionUrl(FunctionUrl): {
      assert std.isString(FunctionUrl) : 'FunctionUrl must be a string',
      Properties+::: { FunctionUrl: FunctionUrl },
    },
    '#withCors': d.fn('`withCors` Cors ', [d.arg('Cors', d.T.object)]),
    withCors(Cors): {
      assert std.isObject(Cors) : 'Cors must be a object',
      Properties+::: { Cors: Cors },
    },
  },
  Version: {
    '#': d.pkg(
      name='Version',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Lambda.libsonnet',
      help='Resource Type definition for AWS::Lambda::Version',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Lambda::Version Resource
        * FunctionName The name of the Lambda function.
      |||,
      args=[
        d.arg('FunctionName', 'd.T.string'),
      ]
    ),
    new(
      FunctionName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(FunctionName) : 'FunctionName must be a string',
        FunctionName: FunctionName,
      },
      DependsOn:: [],
      Type: 'AWS::Lambda::Version',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withFunctionArn': d.fn('`withFunctionArn` FunctionArn ', [d.arg('FunctionArn', d.T.string)]),
    withFunctionArn(FunctionArn): {
      assert std.isString(FunctionArn) : 'FunctionArn must be a string',
      Properties+::: { FunctionArn: FunctionArn },
    },
    '#withVersion': d.fn('`withVersion` Version ', [d.arg('Version', d.T.string)]),
    withVersion(Version): {
      assert std.isString(Version) : 'Version must be a string',
      Properties+::: { Version: Version },
    },
    '#withCodeSha256': d.fn('`withCodeSha256` CodeSha256 ', [d.arg('CodeSha256', d.T.string)]),
    withCodeSha256(CodeSha256): {
      assert std.isString(CodeSha256) : 'CodeSha256 must be a string',
      Properties+::: { CodeSha256: CodeSha256 },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withProvisionedConcurrencyConfig': d.fn('`withProvisionedConcurrencyConfig` ProvisionedConcurrencyConfig ', [d.arg('ProvisionedConcurrencyConfig', d.T.object)]),
    withProvisionedConcurrencyConfig(ProvisionedConcurrencyConfig): {
      assert std.isObject(ProvisionedConcurrencyConfig) : 'ProvisionedConcurrencyConfig must be a object',
      Properties+::: { ProvisionedConcurrencyConfig: ProvisionedConcurrencyConfig },
    },
    '#withRuntimePolicy': d.fn('`withRuntimePolicy` RuntimePolicy ', [d.arg('RuntimePolicy', d.T.object)]),
    withRuntimePolicy(RuntimePolicy): {
      assert std.isObject(RuntimePolicy) : 'RuntimePolicy must be a object',
      Properties+::: { RuntimePolicy: RuntimePolicy },
    },
  },
}
