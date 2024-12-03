local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  Studio: {
    '#': d.pkg(
      name='Studio',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/NimbleStudio.libsonnet',
      help='Represents a studio that contains other Nimble Studio resources',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::NimbleStudio::Studio Resource
        * DisplayName &lt;p&gt;A friendly name for the studio.&lt;/p&gt;
        * UserRoleArn &lt;p&gt;The IAM role that Studio Users will assume when logging in to the Nimble Studio portal.&lt;/p&gt;
        * AdminRoleArn &lt;p&gt;The IAM role that Studio Admins will assume when logging in to the Nimble Studio portal.&lt;/p&gt;
        * StudioName &lt;p&gt;The studio name that is used in the URL of the Nimble Studio portal when accessed by Nimble Studio users.&lt;/p&gt;
      |||,
      args=[
        d.arg('DisplayName', 'd.T.string'),
        d.arg('UserRoleArn', 'd.T.string'),
        d.arg('AdminRoleArn', 'd.T.string'),
        d.arg('StudioName', 'd.T.string'),
      ]
    ),
    new(
      DisplayName,
      UserRoleArn,
      AdminRoleArn,
      StudioName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(DisplayName) : 'DisplayName must be a string',
        DisplayName: DisplayName,
        assert std.isString(UserRoleArn) : 'UserRoleArn must be a string',
        UserRoleArn: UserRoleArn,
        assert std.isString(AdminRoleArn) : 'AdminRoleArn must be a string',
        AdminRoleArn: AdminRoleArn,
        assert std.isString(StudioName) : 'StudioName must be a string',
        StudioName: StudioName,
      },
      DependsOn:: [],
      Type: 'AWS::NimbleStudio::Studio',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withHomeRegion': d.fn('`withHomeRegion` HomeRegion ', [d.arg('HomeRegion', d.T.string)]),
    withHomeRegion(HomeRegion): {
      assert std.isString(HomeRegion) : 'HomeRegion must be a string',
      Properties+::: { HomeRegion: HomeRegion },
    },
    '#withSsoClientId': d.fn('`withSsoClientId` SsoClientId ', [d.arg('SsoClientId', d.T.string)]),
    withSsoClientId(SsoClientId): {
      assert std.isString(SsoClientId) : 'SsoClientId must be a string',
      Properties+::: { SsoClientId: SsoClientId },
    },
    '#withStudioEncryptionConfiguration': d.fn('`withStudioEncryptionConfiguration` StudioEncryptionConfiguration ', [d.arg('StudioEncryptionConfiguration', d.T.object)]),
    withStudioEncryptionConfiguration(StudioEncryptionConfiguration): {
      assert std.isObject(StudioEncryptionConfiguration) : 'StudioEncryptionConfiguration must be a object',
      Properties+::: { StudioEncryptionConfiguration: StudioEncryptionConfiguration },
    },
    '#withStudioId': d.fn('`withStudioId` StudioId ', [d.arg('StudioId', d.T.string)]),
    withStudioId(StudioId): {
      assert std.isString(StudioId) : 'StudioId must be a string',
      Properties+::: { StudioId: StudioId },
    },
    '#withStudioUrl': d.fn('`withStudioUrl` StudioUrl ', [d.arg('StudioUrl', d.T.string)]),
    withStudioUrl(StudioUrl): {
      assert std.isString(StudioUrl) : 'StudioUrl must be a string',
      Properties+::: { StudioUrl: StudioUrl },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.object)]),
    withTags(Tags): {
      assert std.isObject(Tags) : 'Tags must be a object',
      Properties+::: { Tags: Tags },
    },
  },
}
