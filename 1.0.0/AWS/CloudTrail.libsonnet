local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  Channel: {
    '#': d.pkg(
      name='Channel',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/CloudTrail.libsonnet',
      help='A channel receives events from a specific source (such as an on-premises storage solution or application, or a partner event data source), and delivers the events to one or more event data stores. You use channels to ingest events into CloudTrail from sources outside AWS.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::CloudTrail::Channel Resource
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
      Type: 'AWS::CloudTrail::Channel',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
    '#withSource': d.fn('`withSource` Source ', [d.arg('Source', d.T.string)]),
    withSource(Source): {
      assert std.isString(Source) : 'Source must be a string',
      Properties+::: { Source: Source },
    },
    '#withDestinations': d.fn('`withDestinations` Destinations ', [d.arg('Destinations', d.T.array)]),
    withDestinations(Destinations): {
      assert std.isArray(Destinations) : 'Destinations must be a array',
      Properties+::: { Destinations: Destinations },
    },
    '#withChannelArn': d.fn('`withChannelArn` ChannelArn ', [d.arg('ChannelArn', d.T.string)]),
    withChannelArn(ChannelArn): {
      assert std.isString(ChannelArn) : 'ChannelArn must be a string',
      Properties+::: { ChannelArn: ChannelArn },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  Dashboard: {
    '#': d.pkg(
      name='Dashboard',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/CloudTrail.libsonnet',
      help='The Amazon CloudTrail dashboard resource allows customers to manage managed dashboards and create custom dashboards. You can manually refresh custom and managed dashboards. For custom dashboards, you can also set up an automatic refresh schedule and modify dashboard widgets.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::CloudTrail::Dashboard Resource
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
      Type: 'AWS::CloudTrail::Dashboard',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withWidgets': d.fn('`withWidgets` Widgets ', [d.arg('Widgets', d.T.array)]),
    withWidgets(Widgets): {
      assert std.isArray(Widgets) : 'Widgets must be a array',
      Properties+::: { Widgets: Widgets },
    },
    '#withCreatedTimestamp': d.fn('`withCreatedTimestamp` CreatedTimestamp ', [d.arg('CreatedTimestamp', d.T.string)]),
    withCreatedTimestamp(CreatedTimestamp): {
      assert std.isString(CreatedTimestamp) : 'CreatedTimestamp must be a string',
      Properties+::: { CreatedTimestamp: CreatedTimestamp },
    },
    '#withDashboardArn': d.fn('`withDashboardArn` DashboardArn ', [d.arg('DashboardArn', d.T.string)]),
    withDashboardArn(DashboardArn): {
      assert std.isString(DashboardArn) : 'DashboardArn must be a string',
      Properties+::: { DashboardArn: DashboardArn },
    },
    '#withRefreshSchedule': d.fn('`withRefreshSchedule` RefreshSchedule ', [d.arg('RefreshSchedule', d.T.object)]),
    withRefreshSchedule(RefreshSchedule): {
      assert std.isObject(RefreshSchedule) : 'RefreshSchedule must be a object',
      Properties+::: { RefreshSchedule: RefreshSchedule },
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
    '#withStatus': d.fn('`withStatus` Status ', [d.arg('Status', d.T.string)]),
    withStatus(Status): {
      assert std.isString(Status) : 'Status must be a string',
      assert Status == 'CREATING' || Status == 'CREATED' || Status == 'UPDATING' || Status == 'UPDATED' || Status == 'DELETING' : "Status must be either 'CREATING' or 'CREATED' or 'UPDATING' or 'UPDATED' or 'DELETING'",
      Properties+::: { Status: Status },
    },
    '#withTerminationProtectionEnabled': d.fn('`withTerminationProtectionEnabled` TerminationProtectionEnabled ', [d.arg('TerminationProtectionEnabled', d.T.boolean)]),
    withTerminationProtectionEnabled(TerminationProtectionEnabled): {
      assert std.isBoolean(TerminationProtectionEnabled) : 'TerminationProtectionEnabled must be a boolean',
      Properties+::: { TerminationProtectionEnabled: TerminationProtectionEnabled },
    },
    '#withType': d.fn('`withType` Type ', [d.arg('Type', d.T.string)]),
    withType(Type): {
      assert std.isString(Type) : 'Type must be a string',
      assert Type == 'MANAGED' || Type == 'CUSTOM' : "Type must be either 'MANAGED' or 'CUSTOM'",
      Properties+::: { Type: Type },
    },
    '#withUpdatedTimestamp': d.fn('`withUpdatedTimestamp` UpdatedTimestamp ', [d.arg('UpdatedTimestamp', d.T.string)]),
    withUpdatedTimestamp(UpdatedTimestamp): {
      assert std.isString(UpdatedTimestamp) : 'UpdatedTimestamp must be a string',
      Properties+::: { UpdatedTimestamp: UpdatedTimestamp },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  EventDataStore: {
    '#': d.pkg(
      name='EventDataStore',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/CloudTrail.libsonnet',
      help='A storage lake of event data against which you can run complex SQL-based queries. An event data store can include events that you have logged on your account from the last 7 to 2557 or 3653 days (about seven or ten years) depending on the selected BillingMode.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::CloudTrail::EventDataStore Resource
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
      Type: 'AWS::CloudTrail::EventDataStore',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withAdvancedEventSelectors': d.fn('`withAdvancedEventSelectors` AdvancedEventSelectors ', [d.arg('AdvancedEventSelectors', d.T.array)]),
    withAdvancedEventSelectors(AdvancedEventSelectors): {
      assert std.isArray(AdvancedEventSelectors) : 'AdvancedEventSelectors must be a array',
      Properties+::: { AdvancedEventSelectors: AdvancedEventSelectors },
    },
    '#withCreatedTimestamp': d.fn('`withCreatedTimestamp` CreatedTimestamp ', [d.arg('CreatedTimestamp', d.T.string)]),
    withCreatedTimestamp(CreatedTimestamp): {
      assert std.isString(CreatedTimestamp) : 'CreatedTimestamp must be a string',
      Properties+::: { CreatedTimestamp: CreatedTimestamp },
    },
    '#withEventDataStoreArn': d.fn('`withEventDataStoreArn` EventDataStoreArn ', [d.arg('EventDataStoreArn', d.T.string)]),
    withEventDataStoreArn(EventDataStoreArn): {
      assert std.isString(EventDataStoreArn) : 'EventDataStoreArn must be a string',
      Properties+::: { EventDataStoreArn: EventDataStoreArn },
    },
    '#withFederationEnabled': d.fn('`withFederationEnabled` FederationEnabled ', [d.arg('FederationEnabled', d.T.boolean)]),
    withFederationEnabled(FederationEnabled): {
      assert std.isBoolean(FederationEnabled) : 'FederationEnabled must be a boolean',
      Properties+::: { FederationEnabled: FederationEnabled },
    },
    '#withFederationRoleArn': d.fn('`withFederationRoleArn` FederationRoleArn ', [d.arg('FederationRoleArn', d.T.string)]),
    withFederationRoleArn(FederationRoleArn): {
      assert std.isString(FederationRoleArn) : 'FederationRoleArn must be a string',
      Properties+::: { FederationRoleArn: FederationRoleArn },
    },
    '#withMultiRegionEnabled': d.fn('`withMultiRegionEnabled` MultiRegionEnabled ', [d.arg('MultiRegionEnabled', d.T.boolean)]),
    withMultiRegionEnabled(MultiRegionEnabled): {
      assert std.isBoolean(MultiRegionEnabled) : 'MultiRegionEnabled must be a boolean',
      Properties+::: { MultiRegionEnabled: MultiRegionEnabled },
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
    '#withOrganizationEnabled': d.fn('`withOrganizationEnabled` OrganizationEnabled ', [d.arg('OrganizationEnabled', d.T.boolean)]),
    withOrganizationEnabled(OrganizationEnabled): {
      assert std.isBoolean(OrganizationEnabled) : 'OrganizationEnabled must be a boolean',
      Properties+::: { OrganizationEnabled: OrganizationEnabled },
    },
    '#withBillingMode': d.fn('`withBillingMode` BillingMode ', [d.arg('BillingMode', d.T.string)]),
    withBillingMode(BillingMode): {
      assert std.isString(BillingMode) : 'BillingMode must be a string',
      Properties+::: { BillingMode: BillingMode },
    },
    '#withRetentionPeriod': d.fn('`withRetentionPeriod` RetentionPeriod ', [d.arg('RetentionPeriod', d.T.integer)]),
    withRetentionPeriod(RetentionPeriod): {
      assert std.isNumber(RetentionPeriod) : 'RetentionPeriod must be a integer',
      Properties+::: { RetentionPeriod: RetentionPeriod },
    },
    '#withStatus': d.fn('`withStatus` Status ', [d.arg('Status', d.T.string)]),
    withStatus(Status): {
      assert std.isString(Status) : 'Status must be a string',
      Properties+::: { Status: Status },
    },
    '#withTerminationProtectionEnabled': d.fn('`withTerminationProtectionEnabled` TerminationProtectionEnabled ', [d.arg('TerminationProtectionEnabled', d.T.boolean)]),
    withTerminationProtectionEnabled(TerminationProtectionEnabled): {
      assert std.isBoolean(TerminationProtectionEnabled) : 'TerminationProtectionEnabled must be a boolean',
      Properties+::: { TerminationProtectionEnabled: TerminationProtectionEnabled },
    },
    '#withUpdatedTimestamp': d.fn('`withUpdatedTimestamp` UpdatedTimestamp ', [d.arg('UpdatedTimestamp', d.T.string)]),
    withUpdatedTimestamp(UpdatedTimestamp): {
      assert std.isString(UpdatedTimestamp) : 'UpdatedTimestamp must be a string',
      Properties+::: { UpdatedTimestamp: UpdatedTimestamp },
    },
    '#withKmsKeyId': d.fn('`withKmsKeyId` KmsKeyId ', [d.arg('KmsKeyId', d.T.string)]),
    withKmsKeyId(KmsKeyId): {
      assert std.isString(KmsKeyId) : 'KmsKeyId must be a string',
      Properties+::: { KmsKeyId: KmsKeyId },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withInsightSelectors': d.fn('`withInsightSelectors` InsightSelectors ', [d.arg('InsightSelectors', d.T.array)]),
    withInsightSelectors(InsightSelectors): {
      assert std.isArray(InsightSelectors) : 'InsightSelectors must be a array',
      Properties+::: { InsightSelectors: InsightSelectors },
    },
    '#withInsightsDestination': d.fn('`withInsightsDestination` InsightsDestination ', [d.arg('InsightsDestination', d.T.string)]),
    withInsightsDestination(InsightsDestination): {
      assert std.isString(InsightsDestination) : 'InsightsDestination must be a string',
      Properties+::: { InsightsDestination: InsightsDestination },
    },
    '#withIngestionEnabled': d.fn('`withIngestionEnabled` IngestionEnabled ', [d.arg('IngestionEnabled', d.T.boolean)]),
    withIngestionEnabled(IngestionEnabled): {
      assert std.isBoolean(IngestionEnabled) : 'IngestionEnabled must be a boolean',
      Properties+::: { IngestionEnabled: IngestionEnabled },
    },
  },
  ResourcePolicy: {
    '#': d.pkg(
      name='ResourcePolicy',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/CloudTrail.libsonnet',
      help='Resource Type definition for AWS::CloudTrail::ResourcePolicy',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::CloudTrail::ResourcePolicy Resource
        * ResourceArn The ARN of the AWS CloudTrail resource to which the policy applies.
        * ResourcePolicy A policy document containing permissions to add to the specified resource. In IAM, you must provide policy documents in JSON format. However, in CloudFormation you can provide the policy in JSON or YAML format because CloudFormation converts YAML to JSON before submitting it to IAM.
      |||,
      args=[
        d.arg('ResourceArn', 'd.T.string'),
        d.arg('ResourcePolicy', ''),
      ]
    ),
    new(
      ResourceArn,
      ResourcePolicy,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ResourceArn) : 'ResourceArn must be a string',
        ResourceArn: ResourceArn,
        // Type: object,string
        ResourcePolicy: ResourcePolicy,
      },
      DependsOn:: [],
      Type: 'AWS::CloudTrail::ResourcePolicy',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
  },
  Trail: {
    '#': d.pkg(
      name='Trail',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/CloudTrail.libsonnet',
      help='Creates a trail that specifies the settings for delivery of log data to an Amazon S3 bucket. A maximum of five trails can exist in a region, irrespective of the region in which they were created.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::CloudTrail::Trail Resource
        * S3BucketName Specifies the name of the Amazon S3 bucket designated for publishing log files. See Amazon S3 Bucket Naming Requirements.
        * IsLogging Whether the CloudTrail is currently logging AWS API calls.
      |||,
      args=[
        d.arg('S3BucketName', 'd.T.string'),
        d.arg('IsLogging', 'd.T.boolean'),
      ]
    ),
    new(
      S3BucketName,
      IsLogging,
    ): {
      local base = self,
      Properties: {
        assert std.isString(S3BucketName) : 'S3BucketName must be a string',
        S3BucketName: S3BucketName,
        assert std.isBoolean(IsLogging) : 'IsLogging must be a boolean',
        IsLogging: IsLogging,
      },
      DependsOn:: [],
      Type: 'AWS::CloudTrail::Trail',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withCloudWatchLogsLogGroupArn': d.fn('`withCloudWatchLogsLogGroupArn` CloudWatchLogsLogGroupArn ', [d.arg('CloudWatchLogsLogGroupArn', d.T.string)]),
    withCloudWatchLogsLogGroupArn(CloudWatchLogsLogGroupArn): {
      assert std.isString(CloudWatchLogsLogGroupArn) : 'CloudWatchLogsLogGroupArn must be a string',
      Properties+::: { CloudWatchLogsLogGroupArn: CloudWatchLogsLogGroupArn },
    },
    '#withCloudWatchLogsRoleArn': d.fn('`withCloudWatchLogsRoleArn` CloudWatchLogsRoleArn ', [d.arg('CloudWatchLogsRoleArn', d.T.string)]),
    withCloudWatchLogsRoleArn(CloudWatchLogsRoleArn): {
      assert std.isString(CloudWatchLogsRoleArn) : 'CloudWatchLogsRoleArn must be a string',
      Properties+::: { CloudWatchLogsRoleArn: CloudWatchLogsRoleArn },
    },
    '#withEnableLogFileValidation': d.fn('`withEnableLogFileValidation` EnableLogFileValidation ', [d.arg('EnableLogFileValidation', d.T.boolean)]),
    withEnableLogFileValidation(EnableLogFileValidation): {
      assert std.isBoolean(EnableLogFileValidation) : 'EnableLogFileValidation must be a boolean',
      Properties+::: { EnableLogFileValidation: EnableLogFileValidation },
    },
    '#withAdvancedEventSelectors': d.fn('`withAdvancedEventSelectors` AdvancedEventSelectors ', [d.arg('AdvancedEventSelectors', d.T.array)]),
    withAdvancedEventSelectors(AdvancedEventSelectors): {
      assert std.isArray(AdvancedEventSelectors) : 'AdvancedEventSelectors must be a array',
      Properties+::: { AdvancedEventSelectors: AdvancedEventSelectors },
    },
    '#withEventSelectors': d.fn('`withEventSelectors` EventSelectors ', [d.arg('EventSelectors', d.T.array)]),
    withEventSelectors(EventSelectors): {
      assert std.isArray(EventSelectors) : 'EventSelectors must be a array',
      Properties+::: { EventSelectors: EventSelectors },
    },
    '#withIncludeGlobalServiceEvents': d.fn('`withIncludeGlobalServiceEvents` IncludeGlobalServiceEvents ', [d.arg('IncludeGlobalServiceEvents', d.T.boolean)]),
    withIncludeGlobalServiceEvents(IncludeGlobalServiceEvents): {
      assert std.isBoolean(IncludeGlobalServiceEvents) : 'IncludeGlobalServiceEvents must be a boolean',
      Properties+::: { IncludeGlobalServiceEvents: IncludeGlobalServiceEvents },
    },
    '#withIsMultiRegionTrail': d.fn('`withIsMultiRegionTrail` IsMultiRegionTrail ', [d.arg('IsMultiRegionTrail', d.T.boolean)]),
    withIsMultiRegionTrail(IsMultiRegionTrail): {
      assert std.isBoolean(IsMultiRegionTrail) : 'IsMultiRegionTrail must be a boolean',
      Properties+::: { IsMultiRegionTrail: IsMultiRegionTrail },
    },
    '#withIsOrganizationTrail': d.fn('`withIsOrganizationTrail` IsOrganizationTrail ', [d.arg('IsOrganizationTrail', d.T.boolean)]),
    withIsOrganizationTrail(IsOrganizationTrail): {
      assert std.isBoolean(IsOrganizationTrail) : 'IsOrganizationTrail must be a boolean',
      Properties+::: { IsOrganizationTrail: IsOrganizationTrail },
    },
    '#withKMSKeyId': d.fn('`withKMSKeyId` KMSKeyId ', [d.arg('KMSKeyId', d.T.string)]),
    withKMSKeyId(KMSKeyId): {
      assert std.isString(KMSKeyId) : 'KMSKeyId must be a string',
      Properties+::: { KMSKeyId: KMSKeyId },
    },
    '#withS3KeyPrefix': d.fn('`withS3KeyPrefix` S3KeyPrefix ', [d.arg('S3KeyPrefix', d.T.string)]),
    withS3KeyPrefix(S3KeyPrefix): {
      assert std.isString(S3KeyPrefix) : 'S3KeyPrefix must be a string',
      Properties+::: { S3KeyPrefix: S3KeyPrefix },
    },
    '#withSnsTopicName': d.fn('`withSnsTopicName` SnsTopicName ', [d.arg('SnsTopicName', d.T.string)]),
    withSnsTopicName(SnsTopicName): {
      assert std.isString(SnsTopicName) : 'SnsTopicName must be a string',
      Properties+::: { SnsTopicName: SnsTopicName },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withTrailName': d.fn('`withTrailName` TrailName ', [d.arg('TrailName', d.T.string)]),
    withTrailName(TrailName): {
      assert std.isString(TrailName) : 'TrailName must be a string',
      Properties+::: { TrailName: TrailName },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withSnsTopicArn': d.fn('`withSnsTopicArn` SnsTopicArn ', [d.arg('SnsTopicArn', d.T.string)]),
    withSnsTopicArn(SnsTopicArn): {
      assert std.isString(SnsTopicArn) : 'SnsTopicArn must be a string',
      Properties+::: { SnsTopicArn: SnsTopicArn },
    },
    '#withInsightSelectors': d.fn('`withInsightSelectors` InsightSelectors ', [d.arg('InsightSelectors', d.T.array)]),
    withInsightSelectors(InsightSelectors): {
      assert std.isArray(InsightSelectors) : 'InsightSelectors must be a array',
      Properties+::: { InsightSelectors: InsightSelectors },
    },
  },
}
