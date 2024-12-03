local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  Group: {
    '#': d.pkg(
      name='Group',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ResourceGroups.libsonnet',
      help='Schema for ResourceGroups::Group',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ResourceGroups::Group Resource
        * Name The name of the resource group
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
      Type: 'AWS::ResourceGroups::Group',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withResourceQuery': d.fn('`withResourceQuery` ResourceQuery ', [d.arg('ResourceQuery', d.T.object)]),
    withResourceQuery(ResourceQuery): {
      assert std.isObject(ResourceQuery) : 'ResourceQuery must be a object',
      Properties+::: { ResourceQuery: ResourceQuery },
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
    '#withConfiguration': d.fn('`withConfiguration` Configuration ', [d.arg('Configuration', d.T.array)]),
    withConfiguration(Configuration): {
      assert std.isArray(Configuration) : 'Configuration must be a array',
      Properties+::: { Configuration: Configuration },
    },
    '#withResources': d.fn('`withResources` Resources ', [d.arg('Resources', d.T.array)]),
    withResources(Resources): {
      assert std.isArray(Resources) : 'Resources must be a array',
      Properties+::: { Resources: Resources },
    },
  },
  TagSyncTask: {
    '#': d.pkg(
      name='TagSyncTask',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ResourceGroups.libsonnet',
      help='Schema for ResourceGroups::TagSyncTask',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ResourceGroups::TagSyncTask Resource
        * Group The Amazon resource name (ARN) or name of the application group for which you want to create a tag-sync task
        * TagKey The tag key. Resources tagged with this tag key-value pair will be added to the application. If a resource with this tag is later untagged, the tag-sync task removes the resource from the application.
        * TagValue The tag value. Resources tagged with this tag key-value pair will be added to the application. If a resource with this tag is later untagged, the tag-sync task removes the resource from the application.
        * RoleArn The Amazon resource name (ARN) of the role assumed by the service to tag and untag resources on your behalf.
      |||,
      args=[
        d.arg('Group', 'd.T.string'),
        d.arg('TagKey', 'd.T.string'),
        d.arg('TagValue', 'd.T.string'),
        d.arg('RoleArn', 'd.T.string'),
      ]
    ),
    new(
      Group,
      TagKey,
      TagValue,
      RoleArn,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Group) : 'Group must be a string',
        Group: Group,
        assert std.isString(TagKey) : 'TagKey must be a string',
        TagKey: TagKey,
        assert std.isString(TagValue) : 'TagValue must be a string',
        TagValue: TagValue,
        assert std.isString(RoleArn) : 'RoleArn must be a string',
        RoleArn: RoleArn,
      },
      DependsOn:: [],
      Type: 'AWS::ResourceGroups::TagSyncTask',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withGroupArn': d.fn('`withGroupArn` GroupArn ', [d.arg('GroupArn', d.T.string)]),
    withGroupArn(GroupArn): {
      assert std.isString(GroupArn) : 'GroupArn must be a string',
      Properties+::: { GroupArn: GroupArn },
    },
    '#withGroupName': d.fn('`withGroupName` GroupName ', [d.arg('GroupName', d.T.string)]),
    withGroupName(GroupName): {
      assert std.isString(GroupName) : 'GroupName must be a string',
      Properties+::: { GroupName: GroupName },
    },
    '#withTaskArn': d.fn('`withTaskArn` TaskArn ', [d.arg('TaskArn', d.T.string)]),
    withTaskArn(TaskArn): {
      assert std.isString(TaskArn) : 'TaskArn must be a string',
      Properties+::: { TaskArn: TaskArn },
    },
    '#withStatus': d.fn('`withStatus` Status ', [d.arg('Status', d.T.string)]),
    withStatus(Status): {
      assert std.isString(Status) : 'Status must be a string',
      assert Status == 'ACTIVE' || Status == 'ERROR' : "Status must be either 'ACTIVE' or 'ERROR'",
      Properties+::: { Status: Status },
    },
  },
}
