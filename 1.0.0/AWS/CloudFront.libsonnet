local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  CachePolicy: {
    '#': d.pkg(
      name='CachePolicy',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/CloudFront.libsonnet',
      help='A cache policy. When its attached to a cache behavior, the cache policy determines the following:+The values that CloudFront includes in the cache key. These values can include HTTP headers, cookies, and URL query strings. CloudFront uses the cache key to find an object in its cache that it can return to the viewer.+The default, minimum, and maximum time to live (TTL) values that you want objects to stay in the CloudFront cache. The headers, cookies, and query strings that are included in the cache key are also included in requests that CloudFront sends to the origin. CloudFront sends a request when it cant find a valid object in its cache that matches the requests cache key. If you want to send values to the origin but *not* include them in the cache key, use OriginRequestPolicy.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::CloudFront::CachePolicy Resource
        * CachePolicyConfig The cache policy configuration.
      |||,
      args=[
        d.arg('CachePolicyConfig', 'd.T.object'),
      ]
    ),
    new(
      CachePolicyConfig,
    ): {
      local base = self,
      Properties: {
        assert std.isObject(CachePolicyConfig) : 'CachePolicyConfig must be a object',
        CachePolicyConfig: CachePolicyConfig,
      },
      DependsOn:: [],
      Type: 'AWS::CloudFront::CachePolicy',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withLastModifiedTime': d.fn('`withLastModifiedTime` LastModifiedTime ', [d.arg('LastModifiedTime', d.T.string)]),
    withLastModifiedTime(LastModifiedTime): {
      assert std.isString(LastModifiedTime) : 'LastModifiedTime must be a string',
      Properties+::: { LastModifiedTime: LastModifiedTime },
    },
  },
  CloudFrontOriginAccessIdentity: {
    '#': d.pkg(
      name='CloudFrontOriginAccessIdentity',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/CloudFront.libsonnet',
      help='The request to create a new origin access identity (OAI). An origin access identity is a special CloudFront user that you can associate with Amazon S3 origins, so that you can secure all or just some of your Amazon S3 content. For more information, see [Restricting Access to Amazon S3 Content by Using an Origin Access Identity](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/private-content-restricting-access-to-s3.html) in the *Amazon CloudFront Developer Guide*.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::CloudFront::CloudFrontOriginAccessIdentity Resource
        * CloudFrontOriginAccessIdentityConfig The current configuration information for the identity.
      |||,
      args=[
        d.arg('CloudFrontOriginAccessIdentityConfig', 'd.T.object'),
      ]
    ),
    new(
      CloudFrontOriginAccessIdentityConfig,
    ): {
      local base = self,
      Properties: {
        assert std.isObject(CloudFrontOriginAccessIdentityConfig) : 'CloudFrontOriginAccessIdentityConfig must be a object',
        CloudFrontOriginAccessIdentityConfig: CloudFrontOriginAccessIdentityConfig,
      },
      DependsOn:: [],
      Type: 'AWS::CloudFront::CloudFrontOriginAccessIdentity',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withS3CanonicalUserId': d.fn('`withS3CanonicalUserId` S3CanonicalUserId ', [d.arg('S3CanonicalUserId', d.T.string)]),
    withS3CanonicalUserId(S3CanonicalUserId): {
      assert std.isString(S3CanonicalUserId) : 'S3CanonicalUserId must be a string',
      Properties+::: { S3CanonicalUserId: S3CanonicalUserId },
    },
  },
  ContinuousDeploymentPolicy: {
    '#': d.pkg(
      name='ContinuousDeploymentPolicy',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/CloudFront.libsonnet',
      help='Creates a continuous deployment policy that routes a subset of production traffic from a primary distribution to a staging distribution. After you create and update a staging distribution, you can use a continuous deployment policy to incrementally move traffic to the staging distribution. This enables you to test changes to a distributions configuration before moving all of your production traffic to the new configuration. For more information, see [Using CloudFront continuous deployment to safely test CDN configuration changes](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/continuous-deployment.html) in the *Amazon CloudFront Developer Guide*.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::CloudFront::ContinuousDeploymentPolicy Resource
        * ContinuousDeploymentPolicyConfig Contains the configuration for a continuous deployment policy.
      |||,
      args=[
        d.arg('ContinuousDeploymentPolicyConfig', 'd.T.object'),
      ]
    ),
    new(
      ContinuousDeploymentPolicyConfig,
    ): {
      local base = self,
      Properties: {
        assert std.isObject(ContinuousDeploymentPolicyConfig) : 'ContinuousDeploymentPolicyConfig must be a object',
        ContinuousDeploymentPolicyConfig: ContinuousDeploymentPolicyConfig,
      },
      DependsOn:: [],
      Type: 'AWS::CloudFront::ContinuousDeploymentPolicy',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withLastModifiedTime': d.fn('`withLastModifiedTime` LastModifiedTime ', [d.arg('LastModifiedTime', d.T.string)]),
    withLastModifiedTime(LastModifiedTime): {
      assert std.isString(LastModifiedTime) : 'LastModifiedTime must be a string',
      Properties+::: { LastModifiedTime: LastModifiedTime },
    },
  },
  Distribution: {
    '#': d.pkg(
      name='Distribution',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/CloudFront.libsonnet',
      help='A distribution tells CloudFront where you want content to be delivered from, and the details about how to track and manage content delivery.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::CloudFront::Distribution Resource
        * DistributionConfig The distributions configuration.
      |||,
      args=[
        d.arg('DistributionConfig', 'd.T.object'),
      ]
    ),
    new(
      DistributionConfig,
    ): {
      local base = self,
      Properties: {
        assert std.isObject(DistributionConfig) : 'DistributionConfig must be a object',
        DistributionConfig: DistributionConfig,
      },
      DependsOn:: [],
      Type: 'AWS::CloudFront::Distribution',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDomainName': d.fn('`withDomainName` DomainName ', [d.arg('DomainName', d.T.string)]),
    withDomainName(DomainName): {
      assert std.isString(DomainName) : 'DomainName must be a string',
      Properties+::: { DomainName: DomainName },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  Function: {
    '#': d.pkg(
      name='Function',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/CloudFront.libsonnet',
      help='Creates a CF function. To create a function, you provide the function code and some configuration information about the function. The response contains an Amazon Resource Name (ARN) that uniquely identifies the function, and the function’s stage. By default, when you create a function, it’s in the DEVELOPMENT stage. In this stage, you can [test the function](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/test-function.html) in the CF console (or with TestFunction in the CF API). When you’re ready to use your function with a CF distribution, publish the function to the LIVE stage. You can do this in the CF console, with PublishFunction in the CF API, or by updating the AWS::CloudFront::Function resource with the AutoPublish property set to true. When the function is published to the LIVE stage, you can attach it to a distribution’s cache behavior, using the function’s ARN. To automatically publish the function to the LIVE stage when it’s created, set the AutoPublish property to true.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::CloudFront::Function Resource
        * Name A name to identify the function.
        * FunctionConfig Contains configuration information about a CloudFront function.
        * FunctionCode The function code. For more information about writing a CloudFront function, see [Writing function code for CloudFront Functions](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/writing-function-code.html) in the *Amazon CloudFront Developer Guide*.
      |||,
      args=[
        d.arg('Name', 'd.T.string'),
        d.arg('FunctionConfig', 'd.T.object'),
        d.arg('FunctionCode', 'd.T.string'),
      ]
    ),
    new(
      Name,
      FunctionConfig,
      FunctionCode,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isObject(FunctionConfig) : 'FunctionConfig must be a object',
        FunctionConfig: FunctionConfig,
        assert std.isString(FunctionCode) : 'FunctionCode must be a string',
        FunctionCode: FunctionCode,
      },
      DependsOn:: [],
      Type: 'AWS::CloudFront::Function',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withAutoPublish': d.fn('`withAutoPublish` AutoPublish ', [d.arg('AutoPublish', d.T.boolean)]),
    withAutoPublish(AutoPublish): {
      assert std.isBoolean(AutoPublish) : 'AutoPublish must be a boolean',
      Properties+::: { AutoPublish: AutoPublish },
    },
    '#withFunctionARN': d.fn('`withFunctionARN` FunctionARN ', [d.arg('FunctionARN', d.T.string)]),
    withFunctionARN(FunctionARN): {
      assert std.isString(FunctionARN) : 'FunctionARN must be a string',
      Properties+::: { FunctionARN: FunctionARN },
    },
    '#withFunctionMetadata': d.fn('`withFunctionMetadata` FunctionMetadata ', [d.arg('FunctionMetadata', d.T.object)]),
    withFunctionMetadata(FunctionMetadata): {
      assert std.isObject(FunctionMetadata) : 'FunctionMetadata must be a object',
      Properties+::: { FunctionMetadata: FunctionMetadata },
    },
    '#withStage': d.fn('`withStage` Stage ', [d.arg('Stage', d.T.string)]),
    withStage(Stage): {
      assert std.isString(Stage) : 'Stage must be a string',
      Properties+::: { Stage: Stage },
    },
  },
  KeyGroup: {
    '#': d.pkg(
      name='KeyGroup',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/CloudFront.libsonnet',
      help='A key group. A key group contains a list of public keys that you can use with [CloudFront signed URLs and signed cookies](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html).',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::CloudFront::KeyGroup Resource
        * KeyGroupConfig The key group configuration.
      |||,
      args=[
        d.arg('KeyGroupConfig', 'd.T.object'),
      ]
    ),
    new(
      KeyGroupConfig,
    ): {
      local base = self,
      Properties: {
        assert std.isObject(KeyGroupConfig) : 'KeyGroupConfig must be a object',
        KeyGroupConfig: KeyGroupConfig,
      },
      DependsOn:: [],
      Type: 'AWS::CloudFront::KeyGroup',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withLastModifiedTime': d.fn('`withLastModifiedTime` LastModifiedTime ', [d.arg('LastModifiedTime', d.T.string)]),
    withLastModifiedTime(LastModifiedTime): {
      assert std.isString(LastModifiedTime) : 'LastModifiedTime must be a string',
      Properties+::: { LastModifiedTime: LastModifiedTime },
    },
  },
  KeyValueStore: {
    '#': d.pkg(
      name='KeyValueStore',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/CloudFront.libsonnet',
      help='The key value store. Use this to separate data from function code, allowing you to update data without having to publish a new version of a function. The key value store holds keys and their corresponding values.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::CloudFront::KeyValueStore Resource
        * Name The name of the key value store.
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
      Type: 'AWS::CloudFront::KeyValueStore',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withStatus': d.fn('`withStatus` Status ', [d.arg('Status', d.T.string)]),
    withStatus(Status): {
      assert std.isString(Status) : 'Status must be a string',
      Properties+::: { Status: Status },
    },
    '#withComment': d.fn('`withComment` Comment ', [d.arg('Comment', d.T.string)]),
    withComment(Comment): {
      assert std.isString(Comment) : 'Comment must be a string',
      Properties+::: { Comment: Comment },
    },
    '#withImportSource': d.fn('`withImportSource` ImportSource ', [d.arg('ImportSource', d.T.object)]),
    withImportSource(ImportSource): {
      assert std.isObject(ImportSource) : 'ImportSource must be a object',
      Properties+::: { ImportSource: ImportSource },
    },
  },
  MonitoringSubscription: {
    '#': d.pkg(
      name='MonitoringSubscription',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/CloudFront.libsonnet',
      help='A monitoring subscription. This structure contains information about whether additional CloudWatch metrics are enabled for a given CloudFront distribution.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::CloudFront::MonitoringSubscription Resource
        * DistributionId The ID of the distribution that you are enabling metrics for.
        * MonitoringSubscription A subscription configuration for additional CloudWatch metrics.
      |||,
      args=[
        d.arg('DistributionId', 'd.T.string'),
        d.arg('MonitoringSubscription', 'd.T.object'),
      ]
    ),
    new(
      DistributionId,
      MonitoringSubscription,
    ): {
      local base = self,
      Properties: {
        assert std.isString(DistributionId) : 'DistributionId must be a string',
        DistributionId: DistributionId,
        assert std.isObject(MonitoringSubscription) : 'MonitoringSubscription must be a object',
        MonitoringSubscription: MonitoringSubscription,
      },
      DependsOn:: [],
      Type: 'AWS::CloudFront::MonitoringSubscription',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
  },
  OriginAccessControl: {
    '#': d.pkg(
      name='OriginAccessControl',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/CloudFront.libsonnet',
      help='Creates a new origin access control in CloudFront. After you create an origin access control, you can add it to an origin in a CloudFront distribution so that CloudFront sends authenticated (signed) requests to the origin. This makes it possible to block public access to the origin, allowing viewers (users) to access the origins content only through CloudFront. For more information about using a CloudFront origin access control, see [Restricting access to an origin](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/private-content-restricting-access-to-origin.html) in the *Amazon CloudFront Developer Guide*.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::CloudFront::OriginAccessControl Resource
        * OriginAccessControlConfig The origin access control.
      |||,
      args=[
        d.arg('OriginAccessControlConfig', 'd.T.object'),
      ]
    ),
    new(
      OriginAccessControlConfig,
    ): {
      local base = self,
      Properties: {
        assert std.isObject(OriginAccessControlConfig) : 'OriginAccessControlConfig must be a object',
        OriginAccessControlConfig: OriginAccessControlConfig,
      },
      DependsOn:: [],
      Type: 'AWS::CloudFront::OriginAccessControl',
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
  OriginRequestPolicy: {
    '#': d.pkg(
      name='OriginRequestPolicy',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/CloudFront.libsonnet',
      help='An origin request policy. When its attached to a cache behavior, the origin request policy determines the values that CloudFront includes in requests that it sends to the origin. Each request that CloudFront sends to the origin includes the following:+The request body and the URL path (without the domain name) from the viewer request.+The headers that CloudFront automatically includes in every origin request, including Host, User-Agent, and X-Amz-Cf-Id.+All HTTP headers, cookies, and URL query strings that are specified in the cache policy or the origin request policy. These can include items from the viewer request and, in the case of headers, additional ones that are added by CloudFront. CloudFront sends a request when it cant find an object in its cache that matches the request. If you want to send values to the origin and also include them in the cache key, use CachePolicy.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::CloudFront::OriginRequestPolicy Resource
        * OriginRequestPolicyConfig The origin request policy configuration.
      |||,
      args=[
        d.arg('OriginRequestPolicyConfig', 'd.T.object'),
      ]
    ),
    new(
      OriginRequestPolicyConfig,
    ): {
      local base = self,
      Properties: {
        assert std.isObject(OriginRequestPolicyConfig) : 'OriginRequestPolicyConfig must be a object',
        OriginRequestPolicyConfig: OriginRequestPolicyConfig,
      },
      DependsOn:: [],
      Type: 'AWS::CloudFront::OriginRequestPolicy',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withLastModifiedTime': d.fn('`withLastModifiedTime` LastModifiedTime ', [d.arg('LastModifiedTime', d.T.string)]),
    withLastModifiedTime(LastModifiedTime): {
      assert std.isString(LastModifiedTime) : 'LastModifiedTime must be a string',
      Properties+::: { LastModifiedTime: LastModifiedTime },
    },
  },
  PublicKey: {
    '#': d.pkg(
      name='PublicKey',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/CloudFront.libsonnet',
      help='A public key that you can use with [signed URLs and signed cookies](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html), or with [field-level encryption](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/field-level-encryption.html).',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::CloudFront::PublicKey Resource
        * PublicKeyConfig Configuration information about a public key that you can use with [signed URLs and signed cookies](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html), or with [field-level encryption](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/field-level-encryption.html).
      |||,
      args=[
        d.arg('PublicKeyConfig', 'd.T.object'),
      ]
    ),
    new(
      PublicKeyConfig,
    ): {
      local base = self,
      Properties: {
        assert std.isObject(PublicKeyConfig) : 'PublicKeyConfig must be a object',
        PublicKeyConfig: PublicKeyConfig,
      },
      DependsOn:: [],
      Type: 'AWS::CloudFront::PublicKey',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withCreatedTime': d.fn('`withCreatedTime` CreatedTime ', [d.arg('CreatedTime', d.T.string)]),
    withCreatedTime(CreatedTime): {
      assert std.isString(CreatedTime) : 'CreatedTime must be a string',
      Properties+::: { CreatedTime: CreatedTime },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
  },
  RealtimeLogConfig: {
    '#': d.pkg(
      name='RealtimeLogConfig',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/CloudFront.libsonnet',
      help='A real-time log configuration.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::CloudFront::RealtimeLogConfig Resource
        * Name The unique name of this real-time log configuration.
        * EndPoints Contains information about the Amazon Kinesis data stream where you are sending real-time log data for this real-time log configuration.
        * Fields A list of fields that are included in each real-time log record. In an API response, the fields are provided in the same order in which they are sent to the Amazon Kinesis data stream. For more information about fields, see [Real-time log configuration fields](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/real-time-logs.html#understand-real-time-log-config-fields) in the *Amazon CloudFront Developer Guide*.
        * SamplingRate The sampling rate for this real-time log configuration. The sampling rate determines the percentage of viewer requests that are represented in the real-time log data. The sampling rate is an integer between 1 and 100, inclusive.
      |||,
      args=[
        d.arg('Name', 'd.T.string'),
        d.arg('EndPoints', 'd.T.array'),
        d.arg('Fields', 'd.T.array'),
        d.arg('SamplingRate', 'd.T.integer'),
      ]
    ),
    new(
      Name,
      EndPoints,
      Fields,
      SamplingRate,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isArray(EndPoints) : 'EndPoints must be a array',
        EndPoints: EndPoints,
        assert std.isArray(Fields) : 'Fields must be a array',
        Fields: Fields,
        // Type: number
        SamplingRate: SamplingRate,
      },
      DependsOn:: [],
      Type: 'AWS::CloudFront::RealtimeLogConfig',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
  },
  ResponseHeadersPolicy: {
    '#': d.pkg(
      name='ResponseHeadersPolicy',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/CloudFront.libsonnet',
      help='A response headers policy. A response headers policy contains information about a set of HTTP response headers. After you create a response headers policy, you can use its ID to attach it to one or more cache behaviors in a CloudFront distribution. When its attached to a cache behavior, the response headers policy affects the HTTP headers that CloudFront includes in HTTP responses to requests that match the cache behavior. CloudFront adds or removes response headers according to the configuration of the response headers policy. For more information, see [Adding or removing HTTP headers in CloudFront responses](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/modifying-response-headers.html) in the *Amazon CloudFront Developer Guide*.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::CloudFront::ResponseHeadersPolicy Resource
        * ResponseHeadersPolicyConfig A response headers policy configuration.
      |||,
      args=[
        d.arg('ResponseHeadersPolicyConfig', 'd.T.object'),
      ]
    ),
    new(
      ResponseHeadersPolicyConfig,
    ): {
      local base = self,
      Properties: {
        assert std.isObject(ResponseHeadersPolicyConfig) : 'ResponseHeadersPolicyConfig must be a object',
        ResponseHeadersPolicyConfig: ResponseHeadersPolicyConfig,
      },
      DependsOn:: [],
      Type: 'AWS::CloudFront::ResponseHeadersPolicy',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withLastModifiedTime': d.fn('`withLastModifiedTime` LastModifiedTime ', [d.arg('LastModifiedTime', d.T.string)]),
    withLastModifiedTime(LastModifiedTime): {
      assert std.isString(LastModifiedTime) : 'LastModifiedTime must be a string',
      Properties+::: { LastModifiedTime: LastModifiedTime },
    },
  },
  StreamingDistribution: {
    '#': d.pkg(
      name='StreamingDistribution',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/CloudFront.libsonnet',
      help='Resource Type definition for AWS::CloudFront::StreamingDistribution',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::CloudFront::StreamingDistribution Resource
        * StreamingDistributionConfig 
        * Tags 
      |||,
      args=[
        d.arg('StreamingDistributionConfig', 'd.T.object'),
        d.arg('Tags', 'd.T.array'),
      ]
    ),
    new(
      StreamingDistributionConfig,
      Tags,
    ): {
      local base = self,
      Properties: {
        assert std.isObject(StreamingDistributionConfig) : 'StreamingDistributionConfig must be a object',
        StreamingDistributionConfig: StreamingDistributionConfig,
        assert std.isArray(Tags) : 'Tags must be a array',
        Tags: Tags,
      },
      DependsOn:: [],
      Type: 'AWS::CloudFront::StreamingDistribution',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withDomainName': d.fn('`withDomainName` DomainName ', [d.arg('DomainName', d.T.string)]),
    withDomainName(DomainName): {
      assert std.isString(DomainName) : 'DomainName must be a string',
      Properties+::: { DomainName: DomainName },
    },
  },
}
