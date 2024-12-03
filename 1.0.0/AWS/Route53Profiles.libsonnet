local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  Profile: {
    '#': d.pkg(
      name='Profile',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Route53Profiles.libsonnet',
      help='Resource Type definition for AWS::Route53Profiles::Profile',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Route53Profiles::Profile Resource
        * Name The name of the profile.
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
      Type: 'AWS::Route53Profiles::Profile',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withClientToken': d.fn('`withClientToken` ClientToken ', [d.arg('ClientToken', d.T.string)]),
    withClientToken(ClientToken): {
      assert std.isString(ClientToken) : 'ClientToken must be a string',
      Properties+::: { ClientToken: ClientToken },
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
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
  },
  ProfileAssociation: {
    '#': d.pkg(
      name='ProfileAssociation',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Route53Profiles.libsonnet',
      help='Resource Type definition for AWS::Route53Profiles::ProfileAssociation',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Route53Profiles::ProfileAssociation Resource
        * ResourceId The resource that you associated theprofile with.
        * ProfileId The ID of theprofile that you associated with the resource that is specified by ResourceId.
        * Name The name of an association between aProfile and a VPC.
      |||,
      args=[
        d.arg('ResourceId', 'd.T.string'),
        d.arg('ProfileId', 'd.T.string'),
        d.arg('Name', 'd.T.string'),
      ]
    ),
    new(
      ResourceId,
      ProfileId,
      Name,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ResourceId) : 'ResourceId must be a string',
        ResourceId: ResourceId,
        assert std.isString(ProfileId) : 'ProfileId must be a string',
        ProfileId: ProfileId,
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
      },
      DependsOn:: [],
      Type: 'AWS::Route53Profiles::ProfileAssociation',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
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
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
  },
  ProfileResourceAssociation: {
    '#': d.pkg(
      name='ProfileResourceAssociation',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Route53Profiles.libsonnet',
      help='Resource Type definition for AWS::Route53Profiles::ProfileResourceAssociation',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Route53Profiles::ProfileResourceAssociation Resource
        * ProfileId The ID of theprofile that you associated the resource to that is specified by ResourceArn.
        * Name The name of an association between theProfile and resource.
        * ResourceArn The arn of the resource that you associated to theProfile.
      |||,
      args=[
        d.arg('ProfileId', 'd.T.string'),
        d.arg('Name', 'd.T.string'),
        d.arg('ResourceArn', 'd.T.string'),
      ]
    ),
    new(
      ProfileId,
      Name,
      ResourceArn,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ProfileId) : 'ProfileId must be a string',
        ProfileId: ProfileId,
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isString(ResourceArn) : 'ResourceArn must be a string',
        ResourceArn: ResourceArn,
      },
      DependsOn:: [],
      Type: 'AWS::Route53Profiles::ProfileResourceAssociation',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withResourceProperties': d.fn('`withResourceProperties` ResourceProperties ', [d.arg('ResourceProperties', d.T.string)]),
    withResourceProperties(ResourceProperties): {
      assert std.isString(ResourceProperties) : 'ResourceProperties must be a string',
      Properties+::: { ResourceProperties: ResourceProperties },
    },
    '#withResourceType': d.fn('`withResourceType` ResourceType ', [d.arg('ResourceType', d.T.string)]),
    withResourceType(ResourceType): {
      assert std.isString(ResourceType) : 'ResourceType must be a string',
      Properties+::: { ResourceType: ResourceType },
    },
  },
}
