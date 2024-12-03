local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  Database: {
    '#': d.pkg(
      name='Database',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Timestream.libsonnet',
      help='The AWS::Timestream::Database resource creates a Timestream database.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Timestream::Database Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::Timestream::Database',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withDatabaseName': d.fn('`withDatabaseName` DatabaseName ', [d.arg('DatabaseName', d.T.string)]),
    withDatabaseName(DatabaseName): {
      assert std.isString(DatabaseName) : 'DatabaseName must be a string',
      Properties+::: { DatabaseName: DatabaseName },
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
  },
  InfluxDBInstance: {
    '#': d.pkg(
      name='InfluxDBInstance',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Timestream.libsonnet',
      help='The AWS::Timestream::InfluxDBInstance resource creates an InfluxDB instance.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Timestream::InfluxDBInstance Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::Timestream::InfluxDBInstance',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withUsername': d.fn('`withUsername` Username ', [d.arg('Username', d.T.string)]),
    withUsername(Username): {
      assert std.isString(Username) : 'Username must be a string',
      Properties+::: { Username: Username },
    },
    '#withPassword': d.fn('`withPassword` Password ', [d.arg('Password', d.T.string)]),
    withPassword(Password): {
      assert std.isString(Password) : 'Password must be a string',
      Properties+::: { Password: Password },
    },
    '#withOrganization': d.fn('`withOrganization` Organization ', [d.arg('Organization', d.T.string)]),
    withOrganization(Organization): {
      assert std.isString(Organization) : 'Organization must be a string',
      Properties+::: { Organization: Organization },
    },
    '#withBucket': d.fn('`withBucket` Bucket ', [d.arg('Bucket', d.T.string)]),
    withBucket(Bucket): {
      assert std.isString(Bucket) : 'Bucket must be a string',
      Properties+::: { Bucket: Bucket },
    },
    '#withDbInstanceType': d.fn('`withDbInstanceType` DbInstanceType ', [d.arg('DbInstanceType', d.T.string)]),
    withDbInstanceType(DbInstanceType): {
      assert std.isString(DbInstanceType) : 'DbInstanceType must be a string',
      assert DbInstanceType == 'db.influx.medium' || DbInstanceType == 'db.influx.large' || DbInstanceType == 'db.influx.xlarge' || DbInstanceType == 'db.influx.2xlarge' || DbInstanceType == 'db.influx.4xlarge' || DbInstanceType == 'db.influx.8xlarge' || DbInstanceType == 'db.influx.12xlarge' || DbInstanceType == 'db.influx.16xlarge' : "DbInstanceType must be either 'db.influx.medium' or 'db.influx.large' or 'db.influx.xlarge' or 'db.influx.2xlarge' or 'db.influx.4xlarge' or 'db.influx.8xlarge' or 'db.influx.12xlarge' or 'db.influx.16xlarge'",
      Properties+::: { DbInstanceType: DbInstanceType },
    },
    '#withVpcSubnetIds': d.fn('`withVpcSubnetIds` VpcSubnetIds ', [d.arg('VpcSubnetIds', d.T.array)]),
    withVpcSubnetIds(VpcSubnetIds): {
      assert std.isArray(VpcSubnetIds) : 'VpcSubnetIds must be a array',
      Properties+::: { VpcSubnetIds: VpcSubnetIds },
    },
    '#withVpcSecurityGroupIds': d.fn('`withVpcSecurityGroupIds` VpcSecurityGroupIds ', [d.arg('VpcSecurityGroupIds', d.T.array)]),
    withVpcSecurityGroupIds(VpcSecurityGroupIds): {
      assert std.isArray(VpcSecurityGroupIds) : 'VpcSecurityGroupIds must be a array',
      Properties+::: { VpcSecurityGroupIds: VpcSecurityGroupIds },
    },
    '#withPubliclyAccessible': d.fn('`withPubliclyAccessible` PubliclyAccessible ', [d.arg('PubliclyAccessible', d.T.boolean)]),
    withPubliclyAccessible(PubliclyAccessible): {
      assert std.isBoolean(PubliclyAccessible) : 'PubliclyAccessible must be a boolean',
      Properties+::: { PubliclyAccessible: PubliclyAccessible },
    },
    '#withDbStorageType': d.fn('`withDbStorageType` DbStorageType ', [d.arg('DbStorageType', d.T.string)]),
    withDbStorageType(DbStorageType): {
      assert std.isString(DbStorageType) : 'DbStorageType must be a string',
      assert DbStorageType == 'InfluxIOIncludedT1' || DbStorageType == 'InfluxIOIncludedT2' || DbStorageType == 'InfluxIOIncludedT3' : "DbStorageType must be either 'InfluxIOIncludedT1' or 'InfluxIOIncludedT2' or 'InfluxIOIncludedT3'",
      Properties+::: { DbStorageType: DbStorageType },
    },
    '#withAllocatedStorage': d.fn('`withAllocatedStorage` AllocatedStorage ', [d.arg('AllocatedStorage', d.T.integer)]),
    withAllocatedStorage(AllocatedStorage): {
      assert std.isNumber(AllocatedStorage) : 'AllocatedStorage must be a integer',
      Properties+::: { AllocatedStorage: AllocatedStorage },
    },
    '#withDbParameterGroupIdentifier': d.fn('`withDbParameterGroupIdentifier` DbParameterGroupIdentifier ', [d.arg('DbParameterGroupIdentifier', d.T.string)]),
    withDbParameterGroupIdentifier(DbParameterGroupIdentifier): {
      assert std.isString(DbParameterGroupIdentifier) : 'DbParameterGroupIdentifier must be a string',
      Properties+::: { DbParameterGroupIdentifier: DbParameterGroupIdentifier },
    },
    '#withPort': d.fn('`withPort` Port ', [d.arg('Port', d.T.integer)]),
    withPort(Port): {
      assert std.isNumber(Port) : 'Port must be a integer',
      Properties+::: { Port: Port },
    },
    '#withLogDeliveryConfiguration': d.fn('`withLogDeliveryConfiguration` LogDeliveryConfiguration ', [d.arg('LogDeliveryConfiguration', d.T.object)]),
    withLogDeliveryConfiguration(LogDeliveryConfiguration): {
      assert std.isObject(LogDeliveryConfiguration) : 'LogDeliveryConfiguration must be a object',
      Properties+::: { LogDeliveryConfiguration: LogDeliveryConfiguration },
    },
    '#withStatus': d.fn('`withStatus` Status ', [d.arg('Status', d.T.string)]),
    withStatus(Status): {
      assert std.isString(Status) : 'Status must be a string',
      assert Status == 'CREATING' || Status == 'AVAILABLE' || Status == 'DELETING' || Status == 'MODIFYING' || Status == 'UPDATING' || Status == 'UPDATING_DEPLOYMENT_TYPE' || Status == 'UPDATING_INSTANCE_TYPE' || Status == 'DELETED' || Status == 'FAILED' : "Status must be either 'CREATING' or 'AVAILABLE' or 'DELETING' or 'MODIFYING' or 'UPDATING' or 'UPDATING_DEPLOYMENT_TYPE' or 'UPDATING_INSTANCE_TYPE' or 'DELETED' or 'FAILED'",
      Properties+::: { Status: Status },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
    '#withAvailabilityZone': d.fn('`withAvailabilityZone` AvailabilityZone ', [d.arg('AvailabilityZone', d.T.string)]),
    withAvailabilityZone(AvailabilityZone): {
      assert std.isString(AvailabilityZone) : 'AvailabilityZone must be a string',
      Properties+::: { AvailabilityZone: AvailabilityZone },
    },
    '#withSecondaryAvailabilityZone': d.fn('`withSecondaryAvailabilityZone` SecondaryAvailabilityZone ', [d.arg('SecondaryAvailabilityZone', d.T.string)]),
    withSecondaryAvailabilityZone(SecondaryAvailabilityZone): {
      assert std.isString(SecondaryAvailabilityZone) : 'SecondaryAvailabilityZone must be a string',
      Properties+::: { SecondaryAvailabilityZone: SecondaryAvailabilityZone },
    },
    '#withEndpoint': d.fn('`withEndpoint` Endpoint ', [d.arg('Endpoint', d.T.string)]),
    withEndpoint(Endpoint): {
      assert std.isString(Endpoint) : 'Endpoint must be a string',
      Properties+::: { Endpoint: Endpoint },
    },
    '#withInfluxAuthParametersSecretArn': d.fn('`withInfluxAuthParametersSecretArn` InfluxAuthParametersSecretArn ', [d.arg('InfluxAuthParametersSecretArn', d.T.string)]),
    withInfluxAuthParametersSecretArn(InfluxAuthParametersSecretArn): {
      assert std.isString(InfluxAuthParametersSecretArn) : 'InfluxAuthParametersSecretArn must be a string',
      Properties+::: { InfluxAuthParametersSecretArn: InfluxAuthParametersSecretArn },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withDeploymentType': d.fn('`withDeploymentType` DeploymentType ', [d.arg('DeploymentType', d.T.string)]),
    withDeploymentType(DeploymentType): {
      assert std.isString(DeploymentType) : 'DeploymentType must be a string',
      assert DeploymentType == 'SINGLE_AZ' || DeploymentType == 'WITH_MULTIAZ_STANDBY' : "DeploymentType must be either 'SINGLE_AZ' or 'WITH_MULTIAZ_STANDBY'",
      Properties+::: { DeploymentType: DeploymentType },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  ScheduledQuery: {
    '#': d.pkg(
      name='ScheduledQuery',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Timestream.libsonnet',
      help='The AWS::Timestream::ScheduledQuery resource creates a Timestream Scheduled Query.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Timestream::ScheduledQuery Resource
        * QueryString 
        * ScheduleConfiguration 
        * NotificationConfiguration 
        * ScheduledQueryExecutionRoleArn 
        * ErrorReportConfiguration 
      |||,
      args=[
        d.arg('QueryString', 'd.T.string'),
        d.arg('ScheduleConfiguration', 'd.T.object'),
        d.arg('NotificationConfiguration', 'd.T.object'),
        d.arg('ScheduledQueryExecutionRoleArn', 'd.T.string'),
        d.arg('ErrorReportConfiguration', 'd.T.object'),
      ]
    ),
    new(
      QueryString,
      ScheduleConfiguration,
      NotificationConfiguration,
      ScheduledQueryExecutionRoleArn,
      ErrorReportConfiguration,
    ): {
      local base = self,
      Properties: {
        assert std.isString(QueryString) : 'QueryString must be a string',
        QueryString: QueryString,
        assert std.isObject(ScheduleConfiguration) : 'ScheduleConfiguration must be a object',
        ScheduleConfiguration: ScheduleConfiguration,
        assert std.isObject(NotificationConfiguration) : 'NotificationConfiguration must be a object',
        NotificationConfiguration: NotificationConfiguration,
        assert std.isString(ScheduledQueryExecutionRoleArn) : 'ScheduledQueryExecutionRoleArn must be a string',
        ScheduledQueryExecutionRoleArn: ScheduledQueryExecutionRoleArn,
        assert std.isObject(ErrorReportConfiguration) : 'ErrorReportConfiguration must be a object',
        ErrorReportConfiguration: ErrorReportConfiguration,
      },
      DependsOn:: [],
      Type: 'AWS::Timestream::ScheduledQuery',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withScheduledQueryName': d.fn('`withScheduledQueryName` ScheduledQueryName ', [d.arg('ScheduledQueryName', d.T.string)]),
    withScheduledQueryName(ScheduledQueryName): {
      assert std.isString(ScheduledQueryName) : 'ScheduledQueryName must be a string',
      Properties+::: { ScheduledQueryName: ScheduledQueryName },
    },
    '#withClientToken': d.fn('`withClientToken` ClientToken ', [d.arg('ClientToken', d.T.string)]),
    withClientToken(ClientToken): {
      assert std.isString(ClientToken) : 'ClientToken must be a string',
      Properties+::: { ClientToken: ClientToken },
    },
    '#withTargetConfiguration': d.fn('`withTargetConfiguration` TargetConfiguration ', [d.arg('TargetConfiguration', d.T.object)]),
    withTargetConfiguration(TargetConfiguration): {
      assert std.isObject(TargetConfiguration) : 'TargetConfiguration must be a object',
      Properties+::: { TargetConfiguration: TargetConfiguration },
    },
    '#withKmsKeyId': d.fn('`withKmsKeyId` KmsKeyId ', [d.arg('KmsKeyId', d.T.string)]),
    withKmsKeyId(KmsKeyId): {
      assert std.isString(KmsKeyId) : 'KmsKeyId must be a string',
      Properties+::: { KmsKeyId: KmsKeyId },
    },
    '#withSQName': d.fn('`withSQName` SQName ', [d.arg('SQName', d.T.string)]),
    withSQName(SQName): {
      assert std.isString(SQName) : 'SQName must be a string',
      Properties+::: { SQName: SQName },
    },
    '#withSQQueryString': d.fn('`withSQQueryString` SQQueryString ', [d.arg('SQQueryString', d.T.string)]),
    withSQQueryString(SQQueryString): {
      assert std.isString(SQQueryString) : 'SQQueryString must be a string',
      Properties+::: { SQQueryString: SQQueryString },
    },
    '#withSQScheduleConfiguration': d.fn('`withSQScheduleConfiguration` SQScheduleConfiguration ', [d.arg('SQScheduleConfiguration', d.T.string)]),
    withSQScheduleConfiguration(SQScheduleConfiguration): {
      assert std.isString(SQScheduleConfiguration) : 'SQScheduleConfiguration must be a string',
      Properties+::: { SQScheduleConfiguration: SQScheduleConfiguration },
    },
    '#withSQNotificationConfiguration': d.fn('`withSQNotificationConfiguration` SQNotificationConfiguration ', [d.arg('SQNotificationConfiguration', d.T.string)]),
    withSQNotificationConfiguration(SQNotificationConfiguration): {
      assert std.isString(SQNotificationConfiguration) : 'SQNotificationConfiguration must be a string',
      Properties+::: { SQNotificationConfiguration: SQNotificationConfiguration },
    },
    '#withSQScheduledQueryExecutionRoleArn': d.fn('`withSQScheduledQueryExecutionRoleArn` SQScheduledQueryExecutionRoleArn ', [d.arg('SQScheduledQueryExecutionRoleArn', d.T.string)]),
    withSQScheduledQueryExecutionRoleArn(SQScheduledQueryExecutionRoleArn): {
      assert std.isString(SQScheduledQueryExecutionRoleArn) : 'SQScheduledQueryExecutionRoleArn must be a string',
      Properties+::: { SQScheduledQueryExecutionRoleArn: SQScheduledQueryExecutionRoleArn },
    },
    '#withSQTargetConfiguration': d.fn('`withSQTargetConfiguration` SQTargetConfiguration ', [d.arg('SQTargetConfiguration', d.T.string)]),
    withSQTargetConfiguration(SQTargetConfiguration): {
      assert std.isString(SQTargetConfiguration) : 'SQTargetConfiguration must be a string',
      Properties+::: { SQTargetConfiguration: SQTargetConfiguration },
    },
    '#withSQErrorReportConfiguration': d.fn('`withSQErrorReportConfiguration` SQErrorReportConfiguration ', [d.arg('SQErrorReportConfiguration', d.T.string)]),
    withSQErrorReportConfiguration(SQErrorReportConfiguration): {
      assert std.isString(SQErrorReportConfiguration) : 'SQErrorReportConfiguration must be a string',
      Properties+::: { SQErrorReportConfiguration: SQErrorReportConfiguration },
    },
    '#withSQKmsKeyId': d.fn('`withSQKmsKeyId` SQKmsKeyId ', [d.arg('SQKmsKeyId', d.T.string)]),
    withSQKmsKeyId(SQKmsKeyId): {
      assert std.isString(SQKmsKeyId) : 'SQKmsKeyId must be a string',
      Properties+::: { SQKmsKeyId: SQKmsKeyId },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  Table: {
    '#': d.pkg(
      name='Table',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Timestream.libsonnet',
      help='The AWS::Timestream::Table resource creates a Timestream Table.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Timestream::Table Resource
        * DatabaseName The name for the database which the table to be created belongs to.
      |||,
      args=[
        d.arg('DatabaseName', 'd.T.string'),
      ]
    ),
    new(
      DatabaseName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(DatabaseName) : 'DatabaseName must be a string',
        DatabaseName: DatabaseName,
      },
      DependsOn:: [],
      Type: 'AWS::Timestream::Table',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
    '#withTableName': d.fn('`withTableName` TableName ', [d.arg('TableName', d.T.string)]),
    withTableName(TableName): {
      assert std.isString(TableName) : 'TableName must be a string',
      Properties+::: { TableName: TableName },
    },
    '#withRetentionProperties': d.fn('`withRetentionProperties` RetentionProperties ', [d.arg('RetentionProperties', d.T.object)]),
    withRetentionProperties(RetentionProperties): {
      assert std.isObject(RetentionProperties) : 'RetentionProperties must be a object',
      Properties+::: { RetentionProperties: RetentionProperties },
    },
    '#withSchema': d.fn('`withSchema` Schema ', [d.arg('Schema', d.T.object)]),
    withSchema(Schema): {
      assert std.isObject(Schema) : 'Schema must be a object',
      Properties+::: { Schema: Schema },
    },
    '#withMagneticStoreWriteProperties': d.fn('`withMagneticStoreWriteProperties` MagneticStoreWriteProperties ', [d.arg('MagneticStoreWriteProperties', d.T.object)]),
    withMagneticStoreWriteProperties(MagneticStoreWriteProperties): {
      assert std.isObject(MagneticStoreWriteProperties) : 'MagneticStoreWriteProperties must be a object',
      Properties+::: { MagneticStoreWriteProperties: MagneticStoreWriteProperties },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
}
