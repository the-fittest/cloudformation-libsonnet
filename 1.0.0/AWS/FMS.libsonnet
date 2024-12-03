local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  NotificationChannel: {
    '#': d.pkg(
      name='NotificationChannel',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/FMS.libsonnet',
      help='Designates the IAM role and Amazon Simple Notification Service (SNS) topic that AWS Firewall Manager uses to record SNS logs.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::FMS::NotificationChannel Resource
        * SnsRoleName 
        * SnsTopicArn 
      |||,
      args=[
        d.arg('SnsRoleName', 'd.T.string'),
        d.arg('SnsTopicArn', 'd.T.string'),
      ]
    ),
    new(
      SnsRoleName,
      SnsTopicArn,
    ): {
      local base = self,
      Properties: {
        assert std.isString(SnsRoleName) : 'SnsRoleName must be a string',
        SnsRoleName: SnsRoleName,
        assert std.isString(SnsTopicArn) : 'SnsTopicArn must be a string',
        SnsTopicArn: SnsTopicArn,
      },
      DependsOn:: [],
      Type: 'AWS::FMS::NotificationChannel',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
  },
  Policy: {
    '#': d.pkg(
      name='Policy',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/FMS.libsonnet',
      help='Creates an AWS Firewall Manager policy.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::FMS::Policy Resource
        * ExcludeResourceTags 
        * PolicyName 
        * RemediationEnabled 
        * SecurityServicePolicyData 
      |||,
      args=[
        d.arg('ExcludeResourceTags', 'd.T.boolean'),
        d.arg('PolicyName', 'd.T.string'),
        d.arg('RemediationEnabled', 'd.T.boolean'),
        d.arg('SecurityServicePolicyData', 'd.T.object'),
      ]
    ),
    new(
      ExcludeResourceTags,
      PolicyName,
      RemediationEnabled,
      SecurityServicePolicyData,
    ): {
      local base = self,
      Properties: {
        assert std.isBoolean(ExcludeResourceTags) : 'ExcludeResourceTags must be a boolean',
        ExcludeResourceTags: ExcludeResourceTags,
        assert std.isString(PolicyName) : 'PolicyName must be a string',
        PolicyName: PolicyName,
        assert std.isBoolean(RemediationEnabled) : 'RemediationEnabled must be a boolean',
        RemediationEnabled: RemediationEnabled,
        assert std.isObject(SecurityServicePolicyData) : 'SecurityServicePolicyData must be a object',
        SecurityServicePolicyData: SecurityServicePolicyData,
      },
      DependsOn:: [],
      Type: 'AWS::FMS::Policy',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withExcludeMap': d.fn('`withExcludeMap` ExcludeMap ', [d.arg('ExcludeMap', d.T.object)]),
    withExcludeMap(ExcludeMap): {
      assert std.isObject(ExcludeMap) : 'ExcludeMap must be a object',
      Properties+::: { ExcludeMap: ExcludeMap },
    },
    '#withIncludeMap': d.fn('`withIncludeMap` IncludeMap ', [d.arg('IncludeMap', d.T.object)]),
    withIncludeMap(IncludeMap): {
      assert std.isObject(IncludeMap) : 'IncludeMap must be a object',
      Properties+::: { IncludeMap: IncludeMap },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withPolicyDescription': d.fn('`withPolicyDescription` PolicyDescription ', [d.arg('PolicyDescription', d.T.string)]),
    withPolicyDescription(PolicyDescription): {
      assert std.isString(PolicyDescription) : 'PolicyDescription must be a string',
      Properties+::: { PolicyDescription: PolicyDescription },
    },
    '#withResourceTags': d.fn('`withResourceTags` ResourceTags ', [d.arg('ResourceTags', d.T.array)]),
    withResourceTags(ResourceTags): {
      assert std.isArray(ResourceTags) : 'ResourceTags must be a array',
      Properties+::: { ResourceTags: ResourceTags },
    },
    '#withResourceType': d.fn('`withResourceType` ResourceType ', [d.arg('ResourceType', d.T.string)]),
    withResourceType(ResourceType): {
      assert std.isString(ResourceType) : 'ResourceType must be a string',
      Properties+::: { ResourceType: ResourceType },
    },
    '#withResourceTypeList': d.fn('`withResourceTypeList` ResourceTypeList ', [d.arg('ResourceTypeList', d.T.array)]),
    withResourceTypeList(ResourceTypeList): {
      assert std.isArray(ResourceTypeList) : 'ResourceTypeList must be a array',
      Properties+::: { ResourceTypeList: ResourceTypeList },
    },
    '#withResourceSetIds': d.fn('`withResourceSetIds` ResourceSetIds ', [d.arg('ResourceSetIds', d.T.array)]),
    withResourceSetIds(ResourceSetIds): {
      assert std.isArray(ResourceSetIds) : 'ResourceSetIds must be a array',
      Properties+::: { ResourceSetIds: ResourceSetIds },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withDeleteAllPolicyResources': d.fn('`withDeleteAllPolicyResources` DeleteAllPolicyResources ', [d.arg('DeleteAllPolicyResources', d.T.boolean)]),
    withDeleteAllPolicyResources(DeleteAllPolicyResources): {
      assert std.isBoolean(DeleteAllPolicyResources) : 'DeleteAllPolicyResources must be a boolean',
      Properties+::: { DeleteAllPolicyResources: DeleteAllPolicyResources },
    },
    '#withResourcesCleanUp': d.fn('`withResourcesCleanUp` ResourcesCleanUp ', [d.arg('ResourcesCleanUp', d.T.boolean)]),
    withResourcesCleanUp(ResourcesCleanUp): {
      assert std.isBoolean(ResourcesCleanUp) : 'ResourcesCleanUp must be a boolean',
      Properties+::: { ResourcesCleanUp: ResourcesCleanUp },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  ResourceSet: {
    '#': d.pkg(
      name='ResourceSet',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/FMS.libsonnet',
      help='Creates an AWS Firewall Manager resource set.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::FMS::ResourceSet Resource
        * Name 
        * ResourceTypeList 
      |||,
      args=[
        d.arg('Name', 'd.T.string'),
        d.arg('ResourceTypeList', 'd.T.array'),
      ]
    ),
    new(
      Name,
      ResourceTypeList,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isArray(ResourceTypeList) : 'ResourceTypeList must be a array',
        ResourceTypeList: ResourceTypeList,
      },
      DependsOn:: [],
      Type: 'AWS::FMS::ResourceSet',
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
    '#withResources': d.fn('`withResources` Resources ', [d.arg('Resources', d.T.array)]),
    withResources(Resources): {
      assert std.isArray(Resources) : 'Resources must be a array',
      Properties+::: { Resources: Resources },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
}
