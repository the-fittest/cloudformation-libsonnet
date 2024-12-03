local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  Permission: {
    '#': d.pkg(
      name='Permission',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/RAM.libsonnet',
      help='Resource type definition for AWS::RAM::Permission',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::RAM::Permission Resource
        * Name The name of the permission.
        * ResourceType The resource type this permission can be used with.
        * PolicyTemplate Policy template for the permission.
      |||,
      args=[
        d.arg('Name', 'd.T.string'),
        d.arg('ResourceType', 'd.T.string'),
        d.arg('PolicyTemplate', 'd.T.object'),
      ]
    ),
    new(
      Name,
      ResourceType,
      PolicyTemplate,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isString(ResourceType) : 'ResourceType must be a string',
        ResourceType: ResourceType,
        assert std.isObject(PolicyTemplate) : 'PolicyTemplate must be a object',
        PolicyTemplate: PolicyTemplate,
      },
      DependsOn:: [],
      Type: 'AWS::RAM::Permission',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withVersion': d.fn('`withVersion` Version ', [d.arg('Version', d.T.string)]),
    withVersion(Version): {
      assert std.isString(Version) : 'Version must be a string',
      Properties+::: { Version: Version },
    },
    '#withIsResourceTypeDefault': d.fn('`withIsResourceTypeDefault` IsResourceTypeDefault ', [d.arg('IsResourceTypeDefault', d.T.boolean)]),
    withIsResourceTypeDefault(IsResourceTypeDefault): {
      assert std.isBoolean(IsResourceTypeDefault) : 'IsResourceTypeDefault must be a boolean',
      Properties+::: { IsResourceTypeDefault: IsResourceTypeDefault },
    },
    '#withPermissionType': d.fn('`withPermissionType` PermissionType ', [d.arg('PermissionType', d.T.string)]),
    withPermissionType(PermissionType): {
      assert std.isString(PermissionType) : 'PermissionType must be a string',
      Properties+::: { PermissionType: PermissionType },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  ResourceShare: {
    '#': d.pkg(
      name='ResourceShare',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/RAM.libsonnet',
      help='Resource Type definition for AWS::RAM::ResourceShare',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::RAM::ResourceShare Resource
        * Name 
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
      Type: 'AWS::RAM::ResourceShare',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withPermissionArns': d.fn('`withPermissionArns` PermissionArns ', [d.arg('PermissionArns', d.T.array)]),
    withPermissionArns(PermissionArns): {
      assert std.isArray(PermissionArns) : 'PermissionArns must be a array',
      Properties+::: { PermissionArns: PermissionArns },
    },
    '#withPrincipals': d.fn('`withPrincipals` Principals ', [d.arg('Principals', d.T.array)]),
    withPrincipals(Principals): {
      assert std.isArray(Principals) : 'Principals must be a array',
      Properties+::: { Principals: Principals },
    },
    '#withAllowExternalPrincipals': d.fn('`withAllowExternalPrincipals` AllowExternalPrincipals ', [d.arg('AllowExternalPrincipals', d.T.boolean)]),
    withAllowExternalPrincipals(AllowExternalPrincipals): {
      assert std.isBoolean(AllowExternalPrincipals) : 'AllowExternalPrincipals must be a boolean',
      Properties+::: { AllowExternalPrincipals: AllowExternalPrincipals },
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
    '#withResourceArns': d.fn('`withResourceArns` ResourceArns ', [d.arg('ResourceArns', d.T.array)]),
    withResourceArns(ResourceArns): {
      assert std.isArray(ResourceArns) : 'ResourceArns must be a array',
      Properties+::: { ResourceArns: ResourceArns },
    },
    '#withSources': d.fn('`withSources` Sources ', [d.arg('Sources', d.T.array)]),
    withSources(Sources): {
      assert std.isArray(Sources) : 'Sources must be a array',
      Properties+::: { Sources: Sources },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
}
