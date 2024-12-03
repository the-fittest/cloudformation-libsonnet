local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  DRTAccess: {
    '#': d.pkg(
      name='DRTAccess',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Shield.libsonnet',
      help='Config the role and list of Amazon S3 log buckets used by the Shield Response Team (SRT) to access your AWS account while assisting with attack mitigation.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Shield::DRTAccess Resource
        * RoleArn Authorizes the Shield Response Team (SRT) using the specified role, to access your AWS account to assist with DDoS attack mitigation during potential attacks. This enables the SRT to inspect your AWS WAF configuration and create or update AWS WAF rules and web ACLs.
      |||,
      args=[
        d.arg('RoleArn', 'd.T.string'),
      ]
    ),
    new(
      RoleArn,
    ): {
      local base = self,
      Properties: {
        assert std.isString(RoleArn) : 'RoleArn must be a string',
        RoleArn: RoleArn,
      },
      DependsOn:: [],
      Type: 'AWS::Shield::DRTAccess',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withAccountId': d.fn('`withAccountId` AccountId ', [d.arg('AccountId', d.T.string)]),
    withAccountId(AccountId): {
      assert std.isString(AccountId) : 'AccountId must be a string',
      Properties+::: { AccountId: AccountId },
    },
    '#withLogBucketList': d.fn('`withLogBucketList` LogBucketList ', [d.arg('LogBucketList', d.T.array)]),
    withLogBucketList(LogBucketList): {
      assert std.isArray(LogBucketList) : 'LogBucketList must be a array',
      Properties+::: { LogBucketList: LogBucketList },
    },
  },
  ProactiveEngagement: {
    '#': d.pkg(
      name='ProactiveEngagement',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Shield.libsonnet',
      help='Authorizes the Shield Response Team (SRT) to use email and phone to notify contacts about escalations to the SRT and to initiate proactive customer support.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Shield::ProactiveEngagement Resource
        * ProactiveEngagementStatus If ENABLED, the Shield Response Team (SRT) will use email and phone to notify contacts about escalations to the SRT and to initiate proactive customer support.If DISABLED, the SRT will not proactively notify contacts about escalations or to initiate proactive customer support.
        * EmergencyContactList A list of email addresses and phone numbers that the Shield Response Team (SRT) can use to contact you for escalations to the SRT and to initiate proactive customer support.To enable proactive engagement, the contact list must include at least one phone number.
      |||,
      args=[
        d.arg('ProactiveEngagementStatus', 'd.T.string'),
        d.arg('EmergencyContactList', 'd.T.array'),
      ]
    ),
    new(
      ProactiveEngagementStatus,
      EmergencyContactList,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ProactiveEngagementStatus) : 'ProactiveEngagementStatus must be a string',
        assert ProactiveEngagementStatus == 'ENABLED' || ProactiveEngagementStatus == 'DISABLED' : "ProactiveEngagementStatus must be either 'ENABLED' or 'DISABLED'",
        ProactiveEngagementStatus: ProactiveEngagementStatus,
        assert std.isArray(EmergencyContactList) : 'EmergencyContactList must be a array',
        EmergencyContactList: EmergencyContactList,
      },
      DependsOn:: [],
      Type: 'AWS::Shield::ProactiveEngagement',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withAccountId': d.fn('`withAccountId` AccountId ', [d.arg('AccountId', d.T.string)]),
    withAccountId(AccountId): {
      assert std.isString(AccountId) : 'AccountId must be a string',
      Properties+::: { AccountId: AccountId },
    },
  },
  Protection: {
    '#': d.pkg(
      name='Protection',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Shield.libsonnet',
      help='Enables AWS Shield Advanced for a specific AWS resource. The resource can be an Amazon CloudFront distribution, Amazon Route 53 hosted zone, AWS Global Accelerator standard accelerator, Elastic IP Address, Application Load Balancer, or a Classic Load Balancer. You can protect Amazon EC2 instances and Network Load Balancers by association with protected Amazon EC2 Elastic IP addresses.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Shield::Protection Resource
        * Name Friendly name for the Protection.
        * ResourceArn The ARN (Amazon Resource Name) of the resource to be protected.
      |||,
      args=[
        d.arg('Name', 'd.T.string'),
        d.arg('ResourceArn', 'd.T.string'),
      ]
    ),
    new(
      Name,
      ResourceArn,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isString(ResourceArn) : 'ResourceArn must be a string',
        ResourceArn: ResourceArn,
      },
      DependsOn:: [],
      Type: 'AWS::Shield::Protection',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withProtectionId': d.fn('`withProtectionId` ProtectionId ', [d.arg('ProtectionId', d.T.string)]),
    withProtectionId(ProtectionId): {
      assert std.isString(ProtectionId) : 'ProtectionId must be a string',
      Properties+::: { ProtectionId: ProtectionId },
    },
    '#withProtectionArn': d.fn('`withProtectionArn` ProtectionArn ', [d.arg('ProtectionArn', d.T.string)]),
    withProtectionArn(ProtectionArn): {
      assert std.isString(ProtectionArn) : 'ProtectionArn must be a string',
      Properties+::: { ProtectionArn: ProtectionArn },
    },
    '#withHealthCheckArns': d.fn('`withHealthCheckArns` HealthCheckArns ', [d.arg('HealthCheckArns', d.T.array)]),
    withHealthCheckArns(HealthCheckArns): {
      assert std.isArray(HealthCheckArns) : 'HealthCheckArns must be a array',
      Properties+::: { HealthCheckArns: HealthCheckArns },
    },
    '#withApplicationLayerAutomaticResponseConfiguration': d.fn('`withApplicationLayerAutomaticResponseConfiguration` ApplicationLayerAutomaticResponseConfiguration ', [d.arg('ApplicationLayerAutomaticResponseConfiguration', d.T.object)]),
    withApplicationLayerAutomaticResponseConfiguration(ApplicationLayerAutomaticResponseConfiguration): {
      assert std.isObject(ApplicationLayerAutomaticResponseConfiguration) : 'ApplicationLayerAutomaticResponseConfiguration must be a object',
      Properties+::: { ApplicationLayerAutomaticResponseConfiguration: ApplicationLayerAutomaticResponseConfiguration },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  ProtectionGroup: {
    '#': d.pkg(
      name='ProtectionGroup',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Shield.libsonnet',
      help='A grouping of protected resources so they can be handled as a collective. This resource grouping improves the accuracy of detection and reduces false positives.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Shield::ProtectionGroup Resource
        * Aggregation Defines how AWS Shield combines resource data for the group in order to detect, mitigate, and report events.* Sum - Use the total traffic across the group. This is a good choice for most cases. Examples include Elastic IP addresses for EC2 instances that scale manually or automatically.* Mean - Use the average of the traffic across the group. This is a good choice for resources that share traffic uniformly. Examples include accelerators and load balancers.* Max - Use the highest traffic from each resource. This is useful for resources that dont share traffic and for resources that share that traffic in a non-uniform way. Examples include Amazon CloudFront and origin resources for CloudFront distributions.
        * Pattern The criteria to use to choose the protected resources for inclusion in the group. You can include all resources that have protections, provide a list of resource Amazon Resource Names (ARNs), or include all resources of a specified resource type.
        * ProtectionGroupId The name of the protection group. You use this to identify the protection group in lists and to manage the protection group, for example to update, delete, or describe it.
      |||,
      args=[
        d.arg('Aggregation', 'd.T.string'),
        d.arg('Pattern', 'd.T.string'),
        d.arg('ProtectionGroupId', 'd.T.string'),
      ]
    ),
    new(
      Aggregation,
      Pattern,
      ProtectionGroupId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Aggregation) : 'Aggregation must be a string',
        assert Aggregation == 'SUM' || Aggregation == 'MEAN' || Aggregation == 'MAX' : "Aggregation must be either 'SUM' or 'MEAN' or 'MAX'",
        Aggregation: Aggregation,
        assert std.isString(Pattern) : 'Pattern must be a string',
        assert Pattern == 'ALL' || Pattern == 'ARBITRARY' || Pattern == 'BY_RESOURCE_TYPE' : "Pattern must be either 'ALL' or 'ARBITRARY' or 'BY_RESOURCE_TYPE'",
        Pattern: Pattern,
        assert std.isString(ProtectionGroupId) : 'ProtectionGroupId must be a string',
        ProtectionGroupId: ProtectionGroupId,
      },
      DependsOn:: [],
      Type: 'AWS::Shield::ProtectionGroup',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withProtectionGroupArn': d.fn('`withProtectionGroupArn` ProtectionGroupArn ', [d.arg('ProtectionGroupArn', d.T.string)]),
    withProtectionGroupArn(ProtectionGroupArn): {
      assert std.isString(ProtectionGroupArn) : 'ProtectionGroupArn must be a string',
      Properties+::: { ProtectionGroupArn: ProtectionGroupArn },
    },
    '#withMembers': d.fn('`withMembers` Members ', [d.arg('Members', d.T.array)]),
    withMembers(Members): {
      assert std.isArray(Members) : 'Members must be a array',
      Properties+::: { Members: Members },
    },
    '#withResourceType': d.fn('`withResourceType` ResourceType ', [d.arg('ResourceType', d.T.string)]),
    withResourceType(ResourceType): {
      assert std.isString(ResourceType) : 'ResourceType must be a string',
      assert ResourceType == 'CLOUDFRONT_DISTRIBUTION' || ResourceType == 'ROUTE_53_HOSTED_ZONE' || ResourceType == 'ELASTIC_IP_ALLOCATION' || ResourceType == 'CLASSIC_LOAD_BALANCER' || ResourceType == 'APPLICATION_LOAD_BALANCER' || ResourceType == 'GLOBAL_ACCELERATOR' : "ResourceType must be either 'CLOUDFRONT_DISTRIBUTION' or 'ROUTE_53_HOSTED_ZONE' or 'ELASTIC_IP_ALLOCATION' or 'CLASSIC_LOAD_BALANCER' or 'APPLICATION_LOAD_BALANCER' or 'GLOBAL_ACCELERATOR'",
      Properties+::: { ResourceType: ResourceType },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
}
