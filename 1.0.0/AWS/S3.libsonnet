local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  AccessGrant: {
    '#': d.pkg(
      name='AccessGrant',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/S3.libsonnet',
      help='The AWS::S3::AccessGrant resource is an Amazon S3 resource type representing permissions to a specific S3 bucket or prefix hosted in an S3 Access Grants instance.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::S3::AccessGrant Resource
        * Grantee The principal who will be granted permission to access S3.
        * Permission The level of access to be afforded to the grantee
        * AccessGrantsLocationId The custom S3 location to be accessed by the grantee
      |||,
      args=[
        d.arg('Grantee', 'd.T.object'),
        d.arg('Permission', 'd.T.string'),
        d.arg('AccessGrantsLocationId', 'd.T.string'),
      ]
    ),
    new(
      Grantee,
      Permission,
      AccessGrantsLocationId,
    ): {
      local base = self,
      Properties: {
        assert std.isObject(Grantee) : 'Grantee must be a object',
        Grantee: Grantee,
        assert std.isString(Permission) : 'Permission must be a string',
        assert Permission == 'READ' || Permission == 'WRITE' || Permission == 'READWRITE' : "Permission must be either 'READ' or 'WRITE' or 'READWRITE'",
        Permission: Permission,
        assert std.isString(AccessGrantsLocationId) : 'AccessGrantsLocationId must be a string',
        AccessGrantsLocationId: AccessGrantsLocationId,
      },
      DependsOn:: [],
      Type: 'AWS::S3::AccessGrant',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withAccessGrantId': d.fn('`withAccessGrantId` AccessGrantId ', [d.arg('AccessGrantId', d.T.string)]),
    withAccessGrantId(AccessGrantId): {
      assert std.isString(AccessGrantId) : 'AccessGrantId must be a string',
      Properties+::: { AccessGrantId: AccessGrantId },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withApplicationArn': d.fn('`withApplicationArn` ApplicationArn ', [d.arg('ApplicationArn', d.T.string)]),
    withApplicationArn(ApplicationArn): {
      assert std.isString(ApplicationArn) : 'ApplicationArn must be a string',
      Properties+::: { ApplicationArn: ApplicationArn },
    },
    '#withS3PrefixType': d.fn('`withS3PrefixType` S3PrefixType ', [d.arg('S3PrefixType', d.T.string)]),
    withS3PrefixType(S3PrefixType): {
      assert std.isString(S3PrefixType) : 'S3PrefixType must be a string',
      assert S3PrefixType == 'Object' : "S3PrefixType must be either 'Object'",
      Properties+::: { S3PrefixType: S3PrefixType },
    },
    '#withGrantScope': d.fn('`withGrantScope` GrantScope ', [d.arg('GrantScope', d.T.string)]),
    withGrantScope(GrantScope): {
      assert std.isString(GrantScope) : 'GrantScope must be a string',
      Properties+::: { GrantScope: GrantScope },
    },
    '#withAccessGrantArn': d.fn('`withAccessGrantArn` AccessGrantArn ', [d.arg('AccessGrantArn', d.T.string)]),
    withAccessGrantArn(AccessGrantArn): {
      assert std.isString(AccessGrantArn) : 'AccessGrantArn must be a string',
      Properties+::: { AccessGrantArn: AccessGrantArn },
    },
    '#withAccessGrantsLocationConfiguration': d.fn('`withAccessGrantsLocationConfiguration` AccessGrantsLocationConfiguration ', [d.arg('AccessGrantsLocationConfiguration', d.T.object)]),
    withAccessGrantsLocationConfiguration(AccessGrantsLocationConfiguration): {
      assert std.isObject(AccessGrantsLocationConfiguration) : 'AccessGrantsLocationConfiguration must be a object',
      Properties+::: { AccessGrantsLocationConfiguration: AccessGrantsLocationConfiguration },
    },
  },
  AccessGrantsInstance: {
    '#': d.pkg(
      name='AccessGrantsInstance',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/S3.libsonnet',
      help='The AWS::S3::AccessGrantsInstance resource is an Amazon S3 resource type that hosts Access Grants and their associated locations',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::S3::AccessGrantsInstance Resource
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
      Type: 'AWS::S3::AccessGrantsInstance',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withAccessGrantsInstanceArn': d.fn('`withAccessGrantsInstanceArn` AccessGrantsInstanceArn ', [d.arg('AccessGrantsInstanceArn', d.T.string)]),
    withAccessGrantsInstanceArn(AccessGrantsInstanceArn): {
      assert std.isString(AccessGrantsInstanceArn) : 'AccessGrantsInstanceArn must be a string',
      Properties+::: { AccessGrantsInstanceArn: AccessGrantsInstanceArn },
    },
    '#withIdentityCenterArn': d.fn('`withIdentityCenterArn` IdentityCenterArn ', [d.arg('IdentityCenterArn', d.T.string)]),
    withIdentityCenterArn(IdentityCenterArn): {
      assert std.isString(IdentityCenterArn) : 'IdentityCenterArn must be a string',
      Properties+::: { IdentityCenterArn: IdentityCenterArn },
    },
    '#withAccessGrantsInstanceId': d.fn('`withAccessGrantsInstanceId` AccessGrantsInstanceId ', [d.arg('AccessGrantsInstanceId', d.T.string)]),
    withAccessGrantsInstanceId(AccessGrantsInstanceId): {
      assert std.isString(AccessGrantsInstanceId) : 'AccessGrantsInstanceId must be a string',
      Properties+::: { AccessGrantsInstanceId: AccessGrantsInstanceId },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  AccessGrantsLocation: {
    '#': d.pkg(
      name='AccessGrantsLocation',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/S3.libsonnet',
      help='The AWS::S3::AccessGrantsLocation resource is an Amazon S3 resource type hosted in an access grants instance which can be the target of S3 access grants.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::S3::AccessGrantsLocation Resource
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
      Type: 'AWS::S3::AccessGrantsLocation',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withAccessGrantsLocationArn': d.fn('`withAccessGrantsLocationArn` AccessGrantsLocationArn ', [d.arg('AccessGrantsLocationArn', d.T.string)]),
    withAccessGrantsLocationArn(AccessGrantsLocationArn): {
      assert std.isString(AccessGrantsLocationArn) : 'AccessGrantsLocationArn must be a string',
      Properties+::: { AccessGrantsLocationArn: AccessGrantsLocationArn },
    },
    '#withAccessGrantsLocationId': d.fn('`withAccessGrantsLocationId` AccessGrantsLocationId ', [d.arg('AccessGrantsLocationId', d.T.string)]),
    withAccessGrantsLocationId(AccessGrantsLocationId): {
      assert std.isString(AccessGrantsLocationId) : 'AccessGrantsLocationId must be a string',
      Properties+::: { AccessGrantsLocationId: AccessGrantsLocationId },
    },
    '#withIamRoleArn': d.fn('`withIamRoleArn` IamRoleArn ', [d.arg('IamRoleArn', d.T.string)]),
    withIamRoleArn(IamRoleArn): {
      assert std.isString(IamRoleArn) : 'IamRoleArn must be a string',
      Properties+::: { IamRoleArn: IamRoleArn },
    },
    '#withLocationScope': d.fn('`withLocationScope` LocationScope ', [d.arg('LocationScope', d.T.string)]),
    withLocationScope(LocationScope): {
      assert std.isString(LocationScope) : 'LocationScope must be a string',
      Properties+::: { LocationScope: LocationScope },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  AccessPoint: {
    '#': d.pkg(
      name='AccessPoint',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/S3.libsonnet',
      help='The AWS::S3::AccessPoint resource is an Amazon S3 resource type that you can use to access buckets.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::S3::AccessPoint Resource
        * Bucket The name of the bucket that you want to associate this Access Point with.
      |||,
      args=[
        d.arg('Bucket', 'd.T.string'),
      ]
    ),
    new(
      Bucket,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Bucket) : 'Bucket must be a string',
        Bucket: Bucket,
      },
      DependsOn:: [],
      Type: 'AWS::S3::AccessPoint',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
    '#withAlias': d.fn('`withAlias` Alias ', [d.arg('Alias', d.T.string)]),
    withAlias(Alias): {
      assert std.isString(Alias) : 'Alias must be a string',
      Properties+::: { Alias: Alias },
    },
    '#withBucketAccountId': d.fn('`withBucketAccountId` BucketAccountId ', [d.arg('BucketAccountId', d.T.string)]),
    withBucketAccountId(BucketAccountId): {
      assert std.isString(BucketAccountId) : 'BucketAccountId must be a string',
      Properties+::: { BucketAccountId: BucketAccountId },
    },
    '#withVpcConfiguration': d.fn('`withVpcConfiguration` VpcConfiguration ', [d.arg('VpcConfiguration', d.T.object)]),
    withVpcConfiguration(VpcConfiguration): {
      assert std.isObject(VpcConfiguration) : 'VpcConfiguration must be a object',
      Properties+::: { VpcConfiguration: VpcConfiguration },
    },
    '#withPublicAccessBlockConfiguration': d.fn('`withPublicAccessBlockConfiguration` PublicAccessBlockConfiguration ', [d.arg('PublicAccessBlockConfiguration', d.T.object)]),
    withPublicAccessBlockConfiguration(PublicAccessBlockConfiguration): {
      assert std.isObject(PublicAccessBlockConfiguration) : 'PublicAccessBlockConfiguration must be a object',
      Properties+::: { PublicAccessBlockConfiguration: PublicAccessBlockConfiguration },
    },
    '#withPolicy': d.fn('`withPolicy` Policy ', [d.arg('Policy', d.T.object)]),
    withPolicy(Policy): {
      assert std.isObject(Policy) : 'Policy must be a object',
      Properties+::: { Policy: Policy },
    },
    '#withNetworkOrigin': d.fn('`withNetworkOrigin` NetworkOrigin ', [d.arg('NetworkOrigin', d.T.string)]),
    withNetworkOrigin(NetworkOrigin): {
      assert std.isString(NetworkOrigin) : 'NetworkOrigin must be a string',
      assert NetworkOrigin == 'Internet' || NetworkOrigin == 'VPC' : "NetworkOrigin must be either 'Internet' or 'VPC'",
      Properties+::: { NetworkOrigin: NetworkOrigin },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
  },
  Bucket: {
    '#': d.pkg(
      name='Bucket',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/S3.libsonnet',
      help='The AWS::S3::Bucket resource creates an Amazon S3 bucket in the same AWS Region where you create the AWS CloudFormation stack. To control how AWS CloudFormation handles the bucket when the stack is deleted, you can set a deletion policy for your bucket. You can choose to *retain* the bucket or to *delete* the bucket. For more information, see [DeletionPolicy Attribute](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-attribute-deletionpolicy.html).You can only delete empty buckets. Deletion fails for buckets that have contents.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::S3::Bucket Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::S3::Bucket',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withAccelerateConfiguration': d.fn('`withAccelerateConfiguration` AccelerateConfiguration ', [d.arg('AccelerateConfiguration', d.T.object)]),
    withAccelerateConfiguration(AccelerateConfiguration): {
      assert std.isObject(AccelerateConfiguration) : 'AccelerateConfiguration must be a object',
      Properties+::: { AccelerateConfiguration: AccelerateConfiguration },
    },
    '#withAccessControl': d.fn('`withAccessControl` AccessControl ', [d.arg('AccessControl', d.T.string)]),
    withAccessControl(AccessControl): {
      assert std.isString(AccessControl) : 'AccessControl must be a string',
      assert AccessControl == 'AuthenticatedRead' || AccessControl == 'AwsExecRead' || AccessControl == 'BucketOwnerFullControl' || AccessControl == 'BucketOwnerRead' || AccessControl == 'LogDeliveryWrite' || AccessControl == 'Private' || AccessControl == 'PublicRead' || AccessControl == 'PublicReadWrite' : "AccessControl must be either 'AuthenticatedRead' or 'AwsExecRead' or 'BucketOwnerFullControl' or 'BucketOwnerRead' or 'LogDeliveryWrite' or 'Private' or 'PublicRead' or 'PublicReadWrite'",
      Properties+::: { AccessControl: AccessControl },
    },
    '#withAnalyticsConfigurations': d.fn('`withAnalyticsConfigurations` AnalyticsConfigurations ', [d.arg('AnalyticsConfigurations', d.T.array)]),
    withAnalyticsConfigurations(AnalyticsConfigurations): {
      assert std.isArray(AnalyticsConfigurations) : 'AnalyticsConfigurations must be a array',
      Properties+::: { AnalyticsConfigurations: AnalyticsConfigurations },
    },
    '#withBucketEncryption': d.fn('`withBucketEncryption` BucketEncryption ', [d.arg('BucketEncryption', d.T.object)]),
    withBucketEncryption(BucketEncryption): {
      assert std.isObject(BucketEncryption) : 'BucketEncryption must be a object',
      Properties+::: { BucketEncryption: BucketEncryption },
    },
    '#withBucketName': d.fn('`withBucketName` BucketName ', [d.arg('BucketName', d.T.string)]),
    withBucketName(BucketName): {
      assert std.isString(BucketName) : 'BucketName must be a string',
      Properties+::: { BucketName: BucketName },
    },
    '#withCorsConfiguration': d.fn('`withCorsConfiguration` CorsConfiguration ', [d.arg('CorsConfiguration', d.T.object)]),
    withCorsConfiguration(CorsConfiguration): {
      assert std.isObject(CorsConfiguration) : 'CorsConfiguration must be a object',
      Properties+::: { CorsConfiguration: CorsConfiguration },
    },
    '#withIntelligentTieringConfigurations': d.fn('`withIntelligentTieringConfigurations` IntelligentTieringConfigurations ', [d.arg('IntelligentTieringConfigurations', d.T.array)]),
    withIntelligentTieringConfigurations(IntelligentTieringConfigurations): {
      assert std.isArray(IntelligentTieringConfigurations) : 'IntelligentTieringConfigurations must be a array',
      Properties+::: { IntelligentTieringConfigurations: IntelligentTieringConfigurations },
    },
    '#withInventoryConfigurations': d.fn('`withInventoryConfigurations` InventoryConfigurations ', [d.arg('InventoryConfigurations', d.T.array)]),
    withInventoryConfigurations(InventoryConfigurations): {
      assert std.isArray(InventoryConfigurations) : 'InventoryConfigurations must be a array',
      Properties+::: { InventoryConfigurations: InventoryConfigurations },
    },
    '#withLifecycleConfiguration': d.fn('`withLifecycleConfiguration` LifecycleConfiguration ', [d.arg('LifecycleConfiguration', d.T.object)]),
    withLifecycleConfiguration(LifecycleConfiguration): {
      assert std.isObject(LifecycleConfiguration) : 'LifecycleConfiguration must be a object',
      Properties+::: { LifecycleConfiguration: LifecycleConfiguration },
    },
    '#withLoggingConfiguration': d.fn('`withLoggingConfiguration` LoggingConfiguration ', [d.arg('LoggingConfiguration', d.T.object)]),
    withLoggingConfiguration(LoggingConfiguration): {
      assert std.isObject(LoggingConfiguration) : 'LoggingConfiguration must be a object',
      Properties+::: { LoggingConfiguration: LoggingConfiguration },
    },
    '#withMetricsConfigurations': d.fn('`withMetricsConfigurations` MetricsConfigurations ', [d.arg('MetricsConfigurations', d.T.array)]),
    withMetricsConfigurations(MetricsConfigurations): {
      assert std.isArray(MetricsConfigurations) : 'MetricsConfigurations must be a array',
      Properties+::: { MetricsConfigurations: MetricsConfigurations },
    },
    '#withNotificationConfiguration': d.fn('`withNotificationConfiguration` NotificationConfiguration ', [d.arg('NotificationConfiguration', d.T.object)]),
    withNotificationConfiguration(NotificationConfiguration): {
      assert std.isObject(NotificationConfiguration) : 'NotificationConfiguration must be a object',
      Properties+::: { NotificationConfiguration: NotificationConfiguration },
    },
    '#withObjectLockConfiguration': d.fn('`withObjectLockConfiguration` ObjectLockConfiguration ', [d.arg('ObjectLockConfiguration', d.T.object)]),
    withObjectLockConfiguration(ObjectLockConfiguration): {
      assert std.isObject(ObjectLockConfiguration) : 'ObjectLockConfiguration must be a object',
      Properties+::: { ObjectLockConfiguration: ObjectLockConfiguration },
    },
    '#withObjectLockEnabled': d.fn('`withObjectLockEnabled` ObjectLockEnabled ', [d.arg('ObjectLockEnabled', d.T.boolean)]),
    withObjectLockEnabled(ObjectLockEnabled): {
      assert std.isBoolean(ObjectLockEnabled) : 'ObjectLockEnabled must be a boolean',
      Properties+::: { ObjectLockEnabled: ObjectLockEnabled },
    },
    '#withOwnershipControls': d.fn('`withOwnershipControls` OwnershipControls ', [d.arg('OwnershipControls', d.T.object)]),
    withOwnershipControls(OwnershipControls): {
      assert std.isObject(OwnershipControls) : 'OwnershipControls must be a object',
      Properties+::: { OwnershipControls: OwnershipControls },
    },
    '#withPublicAccessBlockConfiguration': d.fn('`withPublicAccessBlockConfiguration` PublicAccessBlockConfiguration ', [d.arg('PublicAccessBlockConfiguration', d.T.object)]),
    withPublicAccessBlockConfiguration(PublicAccessBlockConfiguration): {
      assert std.isObject(PublicAccessBlockConfiguration) : 'PublicAccessBlockConfiguration must be a object',
      Properties+::: { PublicAccessBlockConfiguration: PublicAccessBlockConfiguration },
    },
    '#withReplicationConfiguration': d.fn('`withReplicationConfiguration` ReplicationConfiguration ', [d.arg('ReplicationConfiguration', d.T.object)]),
    withReplicationConfiguration(ReplicationConfiguration): {
      assert std.isObject(ReplicationConfiguration) : 'ReplicationConfiguration must be a object',
      Properties+::: { ReplicationConfiguration: ReplicationConfiguration },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withVersioningConfiguration': d.fn('`withVersioningConfiguration` VersioningConfiguration ', [d.arg('VersioningConfiguration', d.T.object)]),
    withVersioningConfiguration(VersioningConfiguration): {
      assert std.isObject(VersioningConfiguration) : 'VersioningConfiguration must be a object',
      Properties+::: { VersioningConfiguration: VersioningConfiguration },
    },
    '#withWebsiteConfiguration': d.fn('`withWebsiteConfiguration` WebsiteConfiguration ', [d.arg('WebsiteConfiguration', d.T.object)]),
    withWebsiteConfiguration(WebsiteConfiguration): {
      assert std.isObject(WebsiteConfiguration) : 'WebsiteConfiguration must be a object',
      Properties+::: { WebsiteConfiguration: WebsiteConfiguration },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withDomainName': d.fn('`withDomainName` DomainName ', [d.arg('DomainName', d.T.string)]),
    withDomainName(DomainName): {
      assert std.isString(DomainName) : 'DomainName must be a string',
      Properties+::: { DomainName: DomainName },
    },
    '#withDualStackDomainName': d.fn('`withDualStackDomainName` DualStackDomainName ', [d.arg('DualStackDomainName', d.T.string)]),
    withDualStackDomainName(DualStackDomainName): {
      assert std.isString(DualStackDomainName) : 'DualStackDomainName must be a string',
      Properties+::: { DualStackDomainName: DualStackDomainName },
    },
    '#withRegionalDomainName': d.fn('`withRegionalDomainName` RegionalDomainName ', [d.arg('RegionalDomainName', d.T.string)]),
    withRegionalDomainName(RegionalDomainName): {
      assert std.isString(RegionalDomainName) : 'RegionalDomainName must be a string',
      Properties+::: { RegionalDomainName: RegionalDomainName },
    },
    '#withWebsiteURL': d.fn('`withWebsiteURL` WebsiteURL ', [d.arg('WebsiteURL', d.T.string)]),
    withWebsiteURL(WebsiteURL): {
      assert std.isString(WebsiteURL) : 'WebsiteURL must be a string',
      Properties+::: { WebsiteURL: WebsiteURL },
    },
  },
  BucketPolicy: {
    '#': d.pkg(
      name='BucketPolicy',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/S3.libsonnet',
      help='Applies an Amazon S3 bucket policy to an Amazon S3 bucket. If you are using an identity other than the root user of the AWS-account that owns the bucket, the calling identity must have the PutBucketPolicy permissions on the specified bucket and belong to the bucket owners account in order to use this operation. If you dont have PutBucketPolicy permissions, Amazon S3 returns a 403 Access Denied error. If you have the correct permissions, but youre not using an identity that belongs to the bucket owners account, Amazon S3 returns a 405 Method Not Allowed error.As a security precaution, the root user of the AWS-account that owns a bucket can always use this operation, even if the policy explicitly denies the root user the ability to perform this action. For more information, see [Bucket policy examples](https://docs.aws.amazon.com/AmazonS3/latest/userguide/example-bucket-policies.html). The following operations are related to PutBucketPolicy:+[CreateBucket](https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateBucket.html) +[DeleteBucket](https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucket.html)',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::S3::BucketPolicy Resource
        * Bucket The name of the Amazon S3 bucket to which the policy applies.
        * PolicyDocument A policy document containing permissions to add to the specified bucket. In IAM, you must provide policy documents in JSON format. However, in CloudFormation you can provide the policy in JSON or YAML format because CloudFormation converts YAML to JSON before submitting it to IAM. For more information, see the AWS::IAM::Policy [PolicyDocument](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-policy.html#cfn-iam-policy-policydocument) resource description in this guide and [Access Policy Language Overview](https://docs.aws.amazon.com/AmazonS3/latest/dev/access-policy-language-overview.html) in the *Amazon S3 User Guide*.
      |||,
      args=[
        d.arg('Bucket', 'd.T.string'),
        d.arg('PolicyDocument', ''),
      ]
    ),
    new(
      Bucket,
      PolicyDocument,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Bucket) : 'Bucket must be a string',
        Bucket: Bucket,
        // Type: object,string
        PolicyDocument: PolicyDocument,
      },
      DependsOn:: [],
      Type: 'AWS::S3::BucketPolicy',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
  },
  MultiRegionAccessPoint: {
    '#': d.pkg(
      name='MultiRegionAccessPoint',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/S3.libsonnet',
      help='AWS::S3::MultiRegionAccessPoint is an Amazon S3 resource type that dynamically routes S3 requests to easily satisfy geographic compliance requirements based on customer-defined routing policies.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::S3::MultiRegionAccessPoint Resource
        * Regions The list of buckets that you want to associate this Multi Region Access Point with.
      |||,
      args=[
        d.arg('Regions', 'd.T.array'),
      ]
    ),
    new(
      Regions,
    ): {
      local base = self,
      Properties: {
        assert std.isArray(Regions) : 'Regions must be a array',
        Regions: Regions,
      },
      DependsOn:: [],
      Type: 'AWS::S3::MultiRegionAccessPoint',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
    '#withAlias': d.fn('`withAlias` Alias ', [d.arg('Alias', d.T.string)]),
    withAlias(Alias): {
      assert std.isString(Alias) : 'Alias must be a string',
      Properties+::: { Alias: Alias },
    },
    '#withCreatedAt': d.fn('`withCreatedAt` CreatedAt ', [d.arg('CreatedAt', d.T.string)]),
    withCreatedAt(CreatedAt): {
      assert std.isString(CreatedAt) : 'CreatedAt must be a string',
      Properties+::: { CreatedAt: CreatedAt },
    },
    '#withPublicAccessBlockConfiguration': d.fn('`withPublicAccessBlockConfiguration` PublicAccessBlockConfiguration ', [d.arg('PublicAccessBlockConfiguration', d.T.object)]),
    withPublicAccessBlockConfiguration(PublicAccessBlockConfiguration): {
      assert std.isObject(PublicAccessBlockConfiguration) : 'PublicAccessBlockConfiguration must be a object',
      Properties+::: { PublicAccessBlockConfiguration: PublicAccessBlockConfiguration },
    },
  },
  MultiRegionAccessPointPolicy: {
    '#': d.pkg(
      name='MultiRegionAccessPointPolicy',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/S3.libsonnet',
      help='The policy to be attached to a Multi Region Access Point',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::S3::MultiRegionAccessPointPolicy Resource
        * Policy Policy document to apply to a Multi Region Access Point
        * MrapName The name of the Multi Region Access Point to apply policy
      |||,
      args=[
        d.arg('Policy', 'd.T.object'),
        d.arg('MrapName', 'd.T.string'),
      ]
    ),
    new(
      Policy,
      MrapName,
    ): {
      local base = self,
      Properties: {
        assert std.isObject(Policy) : 'Policy must be a object',
        Policy: Policy,
        assert std.isString(MrapName) : 'MrapName must be a string',
        MrapName: MrapName,
      },
      DependsOn:: [],
      Type: 'AWS::S3::MultiRegionAccessPointPolicy',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withPolicyStatus': d.fn('`withPolicyStatus` PolicyStatus ', [d.arg('PolicyStatus', d.T.object)]),
    withPolicyStatus(PolicyStatus): {
      assert std.isObject(PolicyStatus) : 'PolicyStatus must be a object',
      Properties+::: { PolicyStatus: PolicyStatus },
    },
  },
  StorageLens: {
    '#': d.pkg(
      name='StorageLens',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/S3.libsonnet',
      help='The AWS::S3::StorageLens resource is an Amazon S3 resource type that you can use to create Storage Lens configurations.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::S3::StorageLens Resource
        * StorageLensConfiguration 
      |||,
      args=[
        d.arg('StorageLensConfiguration', 'd.T.object'),
      ]
    ),
    new(
      StorageLensConfiguration,
    ): {
      local base = self,
      Properties: {
        assert std.isObject(StorageLensConfiguration) : 'StorageLensConfiguration must be a object',
        StorageLensConfiguration: StorageLensConfiguration,
      },
      DependsOn:: [],
      Type: 'AWS::S3::StorageLens',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  StorageLensGroup: {
    '#': d.pkg(
      name='StorageLensGroup',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/S3.libsonnet',
      help='The AWS::S3::StorageLensGroup resource is an Amazon S3 resource type that you can use to create Storage Lens Group.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::S3::StorageLensGroup Resource
        * Name 
        * Filter 
      |||,
      args=[
        d.arg('Name', 'd.T.string'),
        d.arg('Filter', 'd.T.object'),
      ]
    ),
    new(
      Name,
      Filter,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isObject(Filter) : 'Filter must be a object',
        Filter: Filter,
      },
      DependsOn:: [],
      Type: 'AWS::S3::StorageLensGroup',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withStorageLensGroupArn': d.fn('`withStorageLensGroupArn` StorageLensGroupArn ', [d.arg('StorageLensGroupArn', d.T.string)]),
    withStorageLensGroupArn(StorageLensGroupArn): {
      assert std.isString(StorageLensGroupArn) : 'StorageLensGroupArn must be a string',
      Properties+::: { StorageLensGroupArn: StorageLensGroupArn },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
}
