local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  Group: {
    '#': d.pkg(
      name='Group',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/IdentityStore.libsonnet',
      help='Resource Type definition for AWS::IdentityStore::Group',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::IdentityStore::Group Resource
        * IdentityStoreId The globally unique identifier for the identity store.
        * DisplayName A string containing the name of the group. This value is commonly displayed when the group is referenced.
      |||,
      args=[
        d.arg('IdentityStoreId', 'd.T.string'),
        d.arg('DisplayName', 'd.T.string'),
      ]
    ),
    new(
      IdentityStoreId,
      DisplayName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(IdentityStoreId) : 'IdentityStoreId must be a string',
        IdentityStoreId: IdentityStoreId,
        assert std.isString(DisplayName) : 'DisplayName must be a string',
        DisplayName: DisplayName,
      },
      DependsOn:: [],
      Type: 'AWS::IdentityStore::Group',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withGroupId': d.fn('`withGroupId` GroupId ', [d.arg('GroupId', d.T.string)]),
    withGroupId(GroupId): {
      assert std.isString(GroupId) : 'GroupId must be a string',
      Properties+::: { GroupId: GroupId },
    },
  },
  GroupMembership: {
    '#': d.pkg(
      name='GroupMembership',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/IdentityStore.libsonnet',
      help='Resource Type Definition for AWS:IdentityStore::GroupMembership',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::IdentityStore::GroupMembership Resource
        * IdentityStoreId The globally unique identifier for the identity store.
        * GroupId The unique identifier for a group in the identity store.
        * MemberId An object containing the identifier of a group member.
      |||,
      args=[
        d.arg('IdentityStoreId', 'd.T.string'),
        d.arg('GroupId', 'd.T.string'),
        d.arg('MemberId', 'd.T.object'),
      ]
    ),
    new(
      IdentityStoreId,
      GroupId,
      MemberId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(IdentityStoreId) : 'IdentityStoreId must be a string',
        IdentityStoreId: IdentityStoreId,
        assert std.isString(GroupId) : 'GroupId must be a string',
        GroupId: GroupId,
        assert std.isObject(MemberId) : 'MemberId must be a object',
        MemberId: MemberId,
      },
      DependsOn:: [],
      Type: 'AWS::IdentityStore::GroupMembership',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withMembershipId': d.fn('`withMembershipId` MembershipId ', [d.arg('MembershipId', d.T.string)]),
    withMembershipId(MembershipId): {
      assert std.isString(MembershipId) : 'MembershipId must be a string',
      Properties+::: { MembershipId: MembershipId },
    },
  },
}
