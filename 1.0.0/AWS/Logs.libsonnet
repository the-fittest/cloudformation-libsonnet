local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  AccountPolicy: {
    '#': d.pkg(
      name='AccountPolicy',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Logs.libsonnet',
      help='The AWS::Logs::AccountPolicy resource specifies a CloudWatch Logs AccountPolicy.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Logs::AccountPolicy Resource
        * PolicyName The name of the account policy
        * PolicyType Type of the policy.
        * PolicyDocument The body of the policy document you want to use for this topic.You can only add one policy per PolicyType.The policy must be in JSON string format.Length Constraints: Maximum length of 30720
      |||,
      args=[
        d.arg('PolicyName', 'd.T.string'),
        d.arg('PolicyType', 'd.T.string'),
        d.arg('PolicyDocument', 'd.T.string'),
      ]
    ),
    new(
      PolicyName,
      PolicyType,
      PolicyDocument,
    ): {
      local base = self,
      Properties: {
        assert std.isString(PolicyName) : 'PolicyName must be a string',
        PolicyName: PolicyName,
        assert std.isString(PolicyType) : 'PolicyType must be a string',
        assert PolicyType == 'DATA_PROTECTION_POLICY' || PolicyType == 'SUBSCRIPTION_FILTER_POLICY' : "PolicyType must be either 'DATA_PROTECTION_POLICY' or 'SUBSCRIPTION_FILTER_POLICY'",
        PolicyType: PolicyType,
        assert std.isString(PolicyDocument) : 'PolicyDocument must be a string',
        PolicyDocument: PolicyDocument,
      },
      DependsOn:: [],
      Type: 'AWS::Logs::AccountPolicy',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withAccountId': d.fn('`withAccountId` AccountId ', [d.arg('AccountId', d.T.string)]),
    withAccountId(AccountId): {
      assert std.isString(AccountId) : 'AccountId must be a string',
      Properties+::: { AccountId: AccountId },
    },
    '#withScope': d.fn('`withScope` Scope ', [d.arg('Scope', d.T.string)]),
    withScope(Scope): {
      assert std.isString(Scope) : 'Scope must be a string',
      assert Scope == 'ALL' : "Scope must be either 'ALL'",
      Properties+::: { Scope: Scope },
    },
    '#withSelectionCriteria': d.fn('`withSelectionCriteria` SelectionCriteria ', [d.arg('SelectionCriteria', d.T.string)]),
    withSelectionCriteria(SelectionCriteria): {
      assert std.isString(SelectionCriteria) : 'SelectionCriteria must be a string',
      Properties+::: { SelectionCriteria: SelectionCriteria },
    },
  },
  Delivery: {
    '#': d.pkg(
      name='Delivery',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Logs.libsonnet',
      help='This structure contains information about one delivery in your account.A delivery is a connection between a logical delivery source and a logical delivery destination.For more information, see [CreateDelivery](https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_CreateDelivery.html).',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Logs::Delivery Resource
        * DeliverySourceName The name of the delivery source that is associated with this delivery.
        * DeliveryDestinationArn The ARN of the delivery destination that is associated with this delivery.
      |||,
      args=[
        d.arg('DeliverySourceName', 'd.T.string'),
        d.arg('DeliveryDestinationArn', 'd.T.string'),
      ]
    ),
    new(
      DeliverySourceName,
      DeliveryDestinationArn,
    ): {
      local base = self,
      Properties: {
        assert std.isString(DeliverySourceName) : 'DeliverySourceName must be a string',
        DeliverySourceName: DeliverySourceName,
        assert std.isString(DeliveryDestinationArn) : 'DeliveryDestinationArn must be a string',
        DeliveryDestinationArn: DeliveryDestinationArn,
      },
      DependsOn:: [],
      Type: 'AWS::Logs::Delivery',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDeliveryId': d.fn('`withDeliveryId` DeliveryId ', [d.arg('DeliveryId', d.T.string)]),
    withDeliveryId(DeliveryId): {
      assert std.isString(DeliveryId) : 'DeliveryId must be a string',
      Properties+::: { DeliveryId: DeliveryId },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withDeliveryDestinationType': d.fn('`withDeliveryDestinationType` DeliveryDestinationType ', [d.arg('DeliveryDestinationType', d.T.string)]),
    withDeliveryDestinationType(DeliveryDestinationType): {
      assert std.isString(DeliveryDestinationType) : 'DeliveryDestinationType must be a string',
      Properties+::: { DeliveryDestinationType: DeliveryDestinationType },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withRecordFields': d.fn('`withRecordFields` RecordFields ', [d.arg('RecordFields', d.T.array)]),
    withRecordFields(RecordFields): {
      assert std.isArray(RecordFields) : 'RecordFields must be a array',
      Properties+::: { RecordFields: RecordFields },
    },
    '#withFieldDelimiter': d.fn('`withFieldDelimiter` FieldDelimiter ', [d.arg('FieldDelimiter', d.T.string)]),
    withFieldDelimiter(FieldDelimiter): {
      assert std.isString(FieldDelimiter) : 'FieldDelimiter must be a string',
      Properties+::: { FieldDelimiter: FieldDelimiter },
    },
    '#withS3SuffixPath': d.fn('`withS3SuffixPath` S3SuffixPath ', [d.arg('S3SuffixPath', d.T.string)]),
    withS3SuffixPath(S3SuffixPath): {
      assert std.isString(S3SuffixPath) : 'S3SuffixPath must be a string',
      Properties+::: { S3SuffixPath: S3SuffixPath },
    },
    '#withS3EnableHiveCompatiblePath': d.fn('`withS3EnableHiveCompatiblePath` S3EnableHiveCompatiblePath ', [d.arg('S3EnableHiveCompatiblePath', d.T.boolean)]),
    withS3EnableHiveCompatiblePath(S3EnableHiveCompatiblePath): {
      assert std.isBoolean(S3EnableHiveCompatiblePath) : 'S3EnableHiveCompatiblePath must be a boolean',
      Properties+::: { S3EnableHiveCompatiblePath: S3EnableHiveCompatiblePath },
    },
  },
  DeliveryDestination: {
    '#': d.pkg(
      name='DeliveryDestination',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Logs.libsonnet',
      help='This structure contains information about one delivery destination in your account.A delivery destination is an AWS resource that represents an AWS service that logs can be sent to CloudWatch Logs, Amazon S3, are supported as Kinesis Data Firehose delivery destinations.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Logs::DeliveryDestination Resource
        * Name The name of this delivery destination.
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
      Type: 'AWS::Logs::DeliveryDestination',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withDestinationResourceArn': d.fn('`withDestinationResourceArn` DestinationResourceArn ', [d.arg('DestinationResourceArn', d.T.string)]),
    withDestinationResourceArn(DestinationResourceArn): {
      assert std.isString(DestinationResourceArn) : 'DestinationResourceArn must be a string',
      Properties+::: { DestinationResourceArn: DestinationResourceArn },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withDeliveryDestinationType': d.fn('`withDeliveryDestinationType` DeliveryDestinationType ', [d.arg('DeliveryDestinationType', d.T.string)]),
    withDeliveryDestinationType(DeliveryDestinationType): {
      assert std.isString(DeliveryDestinationType) : 'DeliveryDestinationType must be a string',
      Properties+::: { DeliveryDestinationType: DeliveryDestinationType },
    },
    '#withDeliveryDestinationPolicy': d.fn('`withDeliveryDestinationPolicy` DeliveryDestinationPolicy ', [d.arg('DeliveryDestinationPolicy', d.T.object)]),
    withDeliveryDestinationPolicy(DeliveryDestinationPolicy): {
      assert std.isObject(DeliveryDestinationPolicy) : 'DeliveryDestinationPolicy must be a object',
      Properties+::: { DeliveryDestinationPolicy: DeliveryDestinationPolicy },
    },
    '#withOutputFormat': d.fn('`withOutputFormat` OutputFormat ', [d.arg('OutputFormat', d.T.string)]),
    withOutputFormat(OutputFormat): {
      assert std.isString(OutputFormat) : 'OutputFormat must be a string',
      Properties+::: { OutputFormat: OutputFormat },
    },
  },
  DeliverySource: {
    '#': d.pkg(
      name='DeliverySource',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Logs.libsonnet',
      help=' A delivery source is an AWS resource that sends logs to an AWS destination. The destination can be CloudWatch Logs, Amazon S3, or Kinesis Data Firehose.Only some AWS services support being configured as a delivery source. These services are listed as Supported [V2 Permissions] in the table at [Enabling logging from AWS services](https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/AWS-logs-and-resource-policy.html).',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Logs::DeliverySource Resource
        * Name The unique name of the Log source.
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
      Type: 'AWS::Logs::DeliverySource',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withResourceArns': d.fn('`withResourceArns` ResourceArns ', [d.arg('ResourceArns', d.T.array)]),
    withResourceArns(ResourceArns): {
      assert std.isArray(ResourceArns) : 'ResourceArns must be a array',
      Properties+::: { ResourceArns: ResourceArns },
    },
    '#withResourceArn': d.fn('`withResourceArn` ResourceArn ', [d.arg('ResourceArn', d.T.string)]),
    withResourceArn(ResourceArn): {
      assert std.isString(ResourceArn) : 'ResourceArn must be a string',
      Properties+::: { ResourceArn: ResourceArn },
    },
    '#withService': d.fn('`withService` Service ', [d.arg('Service', d.T.string)]),
    withService(Service): {
      assert std.isString(Service) : 'Service must be a string',
      Properties+::: { Service: Service },
    },
    '#withLogType': d.fn('`withLogType` LogType ', [d.arg('LogType', d.T.string)]),
    withLogType(LogType): {
      assert std.isString(LogType) : 'LogType must be a string',
      Properties+::: { LogType: LogType },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  Destination: {
    '#': d.pkg(
      name='Destination',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Logs.libsonnet',
      help='The AWS::Logs::Destination resource specifies a CloudWatch Logs destination. A destination encapsulates a physical resource (such as an Amazon Kinesis data stream) and enables you to subscribe that resource to a stream of log events.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Logs::Destination Resource
        * DestinationName The name of the destination resource
        * TargetArn The ARN of the physical target where the log events are delivered (for example, a Kinesis stream)
        * RoleArn The ARN of an IAM role that permits CloudWatch Logs to send data to the specified AWS resource
      |||,
      args=[
        d.arg('DestinationName', 'd.T.string'),
        d.arg('TargetArn', 'd.T.string'),
        d.arg('RoleArn', 'd.T.string'),
      ]
    ),
    new(
      DestinationName,
      TargetArn,
      RoleArn,
    ): {
      local base = self,
      Properties: {
        assert std.isString(DestinationName) : 'DestinationName must be a string',
        DestinationName: DestinationName,
        assert std.isString(TargetArn) : 'TargetArn must be a string',
        TargetArn: TargetArn,
        assert std.isString(RoleArn) : 'RoleArn must be a string',
        RoleArn: RoleArn,
      },
      DependsOn:: [],
      Type: 'AWS::Logs::Destination',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withDestinationPolicy': d.fn('`withDestinationPolicy` DestinationPolicy ', [d.arg('DestinationPolicy', d.T.string)]),
    withDestinationPolicy(DestinationPolicy): {
      assert std.isString(DestinationPolicy) : 'DestinationPolicy must be a string',
      Properties+::: { DestinationPolicy: DestinationPolicy },
    },
  },
  Integration: {
    '#': d.pkg(
      name='Integration',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Logs.libsonnet',
      help='Resource Schema for Logs Integration Resource',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Logs::Integration Resource
        * IntegrationName User provided identifier for integration, unique to the user account.
        * IntegrationType The type of the Integration.
        * ResourceConfig OpenSearchResourceConfig for the given Integration
      |||,
      args=[
        d.arg('IntegrationName', 'd.T.string'),
        d.arg('IntegrationType', 'd.T.string'),
        d.arg('ResourceConfig', 'd.T.object'),
      ]
    ),
    new(
      IntegrationName,
      IntegrationType,
      ResourceConfig,
    ): {
      local base = self,
      Properties: {
        assert std.isString(IntegrationName) : 'IntegrationName must be a string',
        IntegrationName: IntegrationName,
        assert std.isString(IntegrationType) : 'IntegrationType must be a string',
        assert IntegrationType == 'OPENSEARCH' : "IntegrationType must be either 'OPENSEARCH'",
        IntegrationType: IntegrationType,
        assert std.isObject(ResourceConfig) : 'ResourceConfig must be a object',
        ResourceConfig: ResourceConfig,
      },
      DependsOn:: [],
      Type: 'AWS::Logs::Integration',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withIntegrationStatus': d.fn('`withIntegrationStatus` IntegrationStatus ', [d.arg('IntegrationStatus', d.T.string)]),
    withIntegrationStatus(IntegrationStatus): {
      assert std.isString(IntegrationStatus) : 'IntegrationStatus must be a string',
      assert IntegrationStatus == 'PROVISIONING' || IntegrationStatus == 'ACTIVE' || IntegrationStatus == 'FAILED' : "IntegrationStatus must be either 'PROVISIONING' or 'ACTIVE' or 'FAILED'",
      Properties+::: { IntegrationStatus: IntegrationStatus },
    },
  },
  LogAnomalyDetector: {
    '#': d.pkg(
      name='LogAnomalyDetector',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Logs.libsonnet',
      help='The AWS::Logs::LogAnomalyDetector resource specifies a CloudWatch Logs LogAnomalyDetector.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Logs::LogAnomalyDetector Resource
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
      Type: 'AWS::Logs::LogAnomalyDetector',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withAccountId': d.fn('`withAccountId` AccountId ', [d.arg('AccountId', d.T.string)]),
    withAccountId(AccountId): {
      assert std.isString(AccountId) : 'AccountId must be a string',
      Properties+::: { AccountId: AccountId },
    },
    '#withKmsKeyId': d.fn('`withKmsKeyId` KmsKeyId ', [d.arg('KmsKeyId', d.T.string)]),
    withKmsKeyId(KmsKeyId): {
      assert std.isString(KmsKeyId) : 'KmsKeyId must be a string',
      Properties+::: { KmsKeyId: KmsKeyId },
    },
    '#withDetectorName': d.fn('`withDetectorName` DetectorName ', [d.arg('DetectorName', d.T.string)]),
    withDetectorName(DetectorName): {
      assert std.isString(DetectorName) : 'DetectorName must be a string',
      Properties+::: { DetectorName: DetectorName },
    },
    '#withLogGroupArnList': d.fn('`withLogGroupArnList` LogGroupArnList ', [d.arg('LogGroupArnList', d.T.array)]),
    withLogGroupArnList(LogGroupArnList): {
      assert std.isArray(LogGroupArnList) : 'LogGroupArnList must be a array',
      Properties+::: { LogGroupArnList: LogGroupArnList },
    },
    '#withEvaluationFrequency': d.fn('`withEvaluationFrequency` EvaluationFrequency ', [d.arg('EvaluationFrequency', d.T.string)]),
    withEvaluationFrequency(EvaluationFrequency): {
      assert std.isString(EvaluationFrequency) : 'EvaluationFrequency must be a string',
      assert EvaluationFrequency == 'FIVE_MIN' || EvaluationFrequency == 'TEN_MIN' || EvaluationFrequency == 'FIFTEEN_MIN' || EvaluationFrequency == 'THIRTY_MIN' || EvaluationFrequency == 'ONE_HOUR' : "EvaluationFrequency must be either 'FIVE_MIN' or 'TEN_MIN' or 'FIFTEEN_MIN' or 'THIRTY_MIN' or 'ONE_HOUR'",
      Properties+::: { EvaluationFrequency: EvaluationFrequency },
    },
    '#withFilterPattern': d.fn('`withFilterPattern` FilterPattern ', [d.arg('FilterPattern', d.T.string)]),
    withFilterPattern(FilterPattern): {
      assert std.isString(FilterPattern) : 'FilterPattern must be a string',
      Properties+::: { FilterPattern: FilterPattern },
    },
    '#withAnomalyDetectorStatus': d.fn('`withAnomalyDetectorStatus` AnomalyDetectorStatus ', [d.arg('AnomalyDetectorStatus', d.T.string)]),
    withAnomalyDetectorStatus(AnomalyDetectorStatus): {
      assert std.isString(AnomalyDetectorStatus) : 'AnomalyDetectorStatus must be a string',
      Properties+::: { AnomalyDetectorStatus: AnomalyDetectorStatus },
    },
    '#withAnomalyVisibilityTime': d.fn('`withAnomalyVisibilityTime` AnomalyVisibilityTime ', [d.arg('AnomalyVisibilityTime', d.T.integer)]),
    withAnomalyVisibilityTime(AnomalyVisibilityTime): {
      // Type: number
      Properties+::: { AnomalyVisibilityTime: AnomalyVisibilityTime },
    },
    '#withCreationTimeStamp': d.fn('`withCreationTimeStamp` CreationTimeStamp ', [d.arg('CreationTimeStamp', d.T.integer)]),
    withCreationTimeStamp(CreationTimeStamp): {
      // Type: number
      Properties+::: { CreationTimeStamp: CreationTimeStamp },
    },
    '#withLastModifiedTimeStamp': d.fn('`withLastModifiedTimeStamp` LastModifiedTimeStamp ', [d.arg('LastModifiedTimeStamp', d.T.integer)]),
    withLastModifiedTimeStamp(LastModifiedTimeStamp): {
      // Type: number
      Properties+::: { LastModifiedTimeStamp: LastModifiedTimeStamp },
    },
    '#withAnomalyDetectorArn': d.fn('`withAnomalyDetectorArn` AnomalyDetectorArn ', [d.arg('AnomalyDetectorArn', d.T.string)]),
    withAnomalyDetectorArn(AnomalyDetectorArn): {
      assert std.isString(AnomalyDetectorArn) : 'AnomalyDetectorArn must be a string',
      Properties+::: { AnomalyDetectorArn: AnomalyDetectorArn },
    },
  },
  LogGroup: {
    '#': d.pkg(
      name='LogGroup',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Logs.libsonnet',
      help='The AWS::Logs::LogGroup resource specifies a log group. A log group defines common properties for log streams, such as their retention and access control rules. Each log stream must belong to one log group. You can create up to 1,000,000 log groups per Region per account. You must use the following guidelines when naming a log group:+Log group names must be unique within a Region for an AWS account.+Log group names can be between 1 and 512 characters long.+Log group names consist of the following characters: a-z, A-Z, 0-9, _ (underscore), - (hyphen), / (forward slash), and . (period).',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Logs::LogGroup Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::Logs::LogGroup',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withLogGroupName': d.fn('`withLogGroupName` LogGroupName ', [d.arg('LogGroupName', d.T.string)]),
    withLogGroupName(LogGroupName): {
      assert std.isString(LogGroupName) : 'LogGroupName must be a string',
      Properties+::: { LogGroupName: LogGroupName },
    },
    '#withKmsKeyId': d.fn('`withKmsKeyId` KmsKeyId ', [d.arg('KmsKeyId', d.T.string)]),
    withKmsKeyId(KmsKeyId): {
      assert std.isString(KmsKeyId) : 'KmsKeyId must be a string',
      Properties+::: { KmsKeyId: KmsKeyId },
    },
    '#withDataProtectionPolicy': d.fn('`withDataProtectionPolicy` DataProtectionPolicy ', [d.arg('DataProtectionPolicy', d.T.object)]),
    withDataProtectionPolicy(DataProtectionPolicy): {
      assert std.isObject(DataProtectionPolicy) : 'DataProtectionPolicy must be a object',
      Properties+::: { DataProtectionPolicy: DataProtectionPolicy },
    },
    '#withLogGroupClass': d.fn('`withLogGroupClass` LogGroupClass ', [d.arg('LogGroupClass', d.T.string)]),
    withLogGroupClass(LogGroupClass): {
      assert std.isString(LogGroupClass) : 'LogGroupClass must be a string',
      assert LogGroupClass == 'STANDARD' || LogGroupClass == 'INFREQUENT_ACCESS' : "LogGroupClass must be either 'STANDARD' or 'INFREQUENT_ACCESS'",
      Properties+::: { LogGroupClass: LogGroupClass },
    },
    '#withRetentionInDays': d.fn('`withRetentionInDays` RetentionInDays ', [d.arg('RetentionInDays', d.T.integer)]),
    withRetentionInDays(RetentionInDays): {
      assert std.isNumber(RetentionInDays) : 'RetentionInDays must be a integer',
      assert RetentionInDays == 1 || RetentionInDays == 3 || RetentionInDays == 5 || RetentionInDays == 7 || RetentionInDays == 14 || RetentionInDays == 30 || RetentionInDays == 60 || RetentionInDays == 90 || RetentionInDays == 120 || RetentionInDays == 150 || RetentionInDays == 180 || RetentionInDays == 365 || RetentionInDays == 400 || RetentionInDays == 545 || RetentionInDays == 731 || RetentionInDays == 1096 || RetentionInDays == 1827 || RetentionInDays == 2192 || RetentionInDays == 2557 || RetentionInDays == 2922 || RetentionInDays == 3288 || RetentionInDays == 3653 : 'RetentionInDays must be either 1 or 3 or 5 or 7 or 14 or 30 or 60 or 90 or 120 or 150 or 180 or 365 or 400 or 545 or 731 or 1096 or 1827 or 2192 or 2557 or 2922 or 3288 or 3653',
      Properties+::: { RetentionInDays: RetentionInDays },
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
  LogStream: {
    '#': d.pkg(
      name='LogStream',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Logs.libsonnet',
      help='Resource Type definition for AWS::Logs::LogStream',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Logs::LogStream Resource
        * LogGroupName The name of the log group where the log stream is created.
      |||,
      args=[
        d.arg('LogGroupName', 'd.T.string'),
      ]
    ),
    new(
      LogGroupName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(LogGroupName) : 'LogGroupName must be a string',
        LogGroupName: LogGroupName,
      },
      DependsOn:: [],
      Type: 'AWS::Logs::LogStream',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withLogStreamName': d.fn('`withLogStreamName` LogStreamName ', [d.arg('LogStreamName', d.T.string)]),
    withLogStreamName(LogStreamName): {
      assert std.isString(LogStreamName) : 'LogStreamName must be a string',
      Properties+::: { LogStreamName: LogStreamName },
    },
  },
  MetricFilter: {
    '#': d.pkg(
      name='MetricFilter',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Logs.libsonnet',
      help='The AWS::Logs::MetricFilter resource specifies a metric filter that describes how CWL extracts information from logs and transforms it into Amazon CloudWatch metrics. If you have multiple metric filters that are associated with a log group, all the filters are applied to the log streams in that group. The maximum number of metric filters that can be associated with a log group is 100.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Logs::MetricFilter Resource
        * FilterPattern A filter pattern for extracting metric data out of ingested log events. For more information, see [Filter and Pattern Syntax](https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/FilterAndPatternSyntax.html).
        * LogGroupName The name of an existing log group that you want to associate with this metric filter.
        * MetricTransformations The metric transformations.
      |||,
      args=[
        d.arg('FilterPattern', 'd.T.string'),
        d.arg('LogGroupName', 'd.T.string'),
        d.arg('MetricTransformations', 'd.T.array'),
      ]
    ),
    new(
      FilterPattern,
      LogGroupName,
      MetricTransformations,
    ): {
      local base = self,
      Properties: {
        assert std.isString(FilterPattern) : 'FilterPattern must be a string',
        FilterPattern: FilterPattern,
        assert std.isString(LogGroupName) : 'LogGroupName must be a string',
        LogGroupName: LogGroupName,
        assert std.isArray(MetricTransformations) : 'MetricTransformations must be a array',
        MetricTransformations: MetricTransformations,
      },
      DependsOn:: [],
      Type: 'AWS::Logs::MetricFilter',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withFilterName': d.fn('`withFilterName` FilterName ', [d.arg('FilterName', d.T.string)]),
    withFilterName(FilterName): {
      assert std.isString(FilterName) : 'FilterName must be a string',
      Properties+::: { FilterName: FilterName },
    },
  },
  QueryDefinition: {
    '#': d.pkg(
      name='QueryDefinition',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Logs.libsonnet',
      help='The resource schema for AWSLogs QueryDefinition',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Logs::QueryDefinition Resource
        * Name A name for the saved query definition
        * QueryString The query string to use for this definition
      |||,
      args=[
        d.arg('Name', 'd.T.string'),
        d.arg('QueryString', 'd.T.string'),
      ]
    ),
    new(
      Name,
      QueryString,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isString(QueryString) : 'QueryString must be a string',
        QueryString: QueryString,
      },
      DependsOn:: [],
      Type: 'AWS::Logs::QueryDefinition',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withLogGroupNames': d.fn('`withLogGroupNames` LogGroupNames ', [d.arg('LogGroupNames', d.T.array)]),
    withLogGroupNames(LogGroupNames): {
      assert std.isArray(LogGroupNames) : 'LogGroupNames must be a array',
      Properties+::: { LogGroupNames: LogGroupNames },
    },
    '#withQueryDefinitionId': d.fn('`withQueryDefinitionId` QueryDefinitionId ', [d.arg('QueryDefinitionId', d.T.string)]),
    withQueryDefinitionId(QueryDefinitionId): {
      assert std.isString(QueryDefinitionId) : 'QueryDefinitionId must be a string',
      Properties+::: { QueryDefinitionId: QueryDefinitionId },
    },
  },
  ResourcePolicy: {
    '#': d.pkg(
      name='ResourcePolicy',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Logs.libsonnet',
      help='The resource schema for AWSLogs ResourcePolicy',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Logs::ResourcePolicy Resource
        * PolicyName A name for resource policy
        * PolicyDocument The policy document
      |||,
      args=[
        d.arg('PolicyName', 'd.T.string'),
        d.arg('PolicyDocument', 'd.T.string'),
      ]
    ),
    new(
      PolicyName,
      PolicyDocument,
    ): {
      local base = self,
      Properties: {
        assert std.isString(PolicyName) : 'PolicyName must be a string',
        PolicyName: PolicyName,
        assert std.isString(PolicyDocument) : 'PolicyDocument must be a string',
        PolicyDocument: PolicyDocument,
      },
      DependsOn:: [],
      Type: 'AWS::Logs::ResourcePolicy',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
  },
  SubscriptionFilter: {
    '#': d.pkg(
      name='SubscriptionFilter',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Logs.libsonnet',
      help='The AWS::Logs::SubscriptionFilter resource specifies a subscription filter and associates it with the specified log group. Subscription filters allow you to subscribe to a real-time stream of log events and have them delivered to a specific destination. Currently, the supported destinations are:+An Amazon Kinesis data stream belonging to the same account as the subscription filter, for same-account delivery.+A logical destination that belongs to a different account, for cross-account delivery.+An Amazon Kinesis Firehose delivery stream that belongs to the same account as the subscription filter, for same-account delivery.+An LAMlong function that belongs to the same account as the subscription filter, for same-account delivery. There can be as many as two subscription filters associated with a log group.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Logs::SubscriptionFilter Resource
        * DestinationArn The Amazon Resource Name (ARN) of the destination.
        * FilterPattern The filtering expressions that restrict what gets delivered to the destination AWS resource. For more information about the filter pattern syntax, see [Filter and Pattern Syntax](https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/FilterAndPatternSyntax.html).
        * LogGroupName The log group to associate with the subscription filter. All log events that are uploaded to this log group are filtered and delivered to the specified AWS resource if the filter pattern matches the log events.
      |||,
      args=[
        d.arg('DestinationArn', 'd.T.string'),
        d.arg('FilterPattern', 'd.T.string'),
        d.arg('LogGroupName', 'd.T.string'),
      ]
    ),
    new(
      DestinationArn,
      FilterPattern,
      LogGroupName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(DestinationArn) : 'DestinationArn must be a string',
        DestinationArn: DestinationArn,
        assert std.isString(FilterPattern) : 'FilterPattern must be a string',
        FilterPattern: FilterPattern,
        assert std.isString(LogGroupName) : 'LogGroupName must be a string',
        LogGroupName: LogGroupName,
      },
      DependsOn:: [],
      Type: 'AWS::Logs::SubscriptionFilter',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withFilterName': d.fn('`withFilterName` FilterName ', [d.arg('FilterName', d.T.string)]),
    withFilterName(FilterName): {
      assert std.isString(FilterName) : 'FilterName must be a string',
      Properties+::: { FilterName: FilterName },
    },
    '#withRoleArn': d.fn('`withRoleArn` RoleArn ', [d.arg('RoleArn', d.T.string)]),
    withRoleArn(RoleArn): {
      assert std.isString(RoleArn) : 'RoleArn must be a string',
      Properties+::: { RoleArn: RoleArn },
    },
    '#withDistribution': d.fn('`withDistribution` Distribution ', [d.arg('Distribution', d.T.string)]),
    withDistribution(Distribution): {
      assert std.isString(Distribution) : 'Distribution must be a string',
      assert Distribution == 'Random' || Distribution == 'ByLogStream' : "Distribution must be either 'Random' or 'ByLogStream'",
      Properties+::: { Distribution: Distribution },
    },
  },
}
