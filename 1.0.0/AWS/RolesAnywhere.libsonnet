local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  CRL: {
    '#': d.pkg(
      name='CRL',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/RolesAnywhere.libsonnet',
      help='Definition of AWS::RolesAnywhere::CRL Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::RolesAnywhere::CRL Resource
        * Name 
        * CrlData 
      |||,
      args=[
        d.arg('Name', 'd.T.string'),
        d.arg('CrlData', 'd.T.string'),
      ]
    ),
    new(
      Name,
      CrlData,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isString(CrlData) : 'CrlData must be a string',
        CrlData: CrlData,
      },
      DependsOn:: [],
      Type: 'AWS::RolesAnywhere::CRL',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withCrlId': d.fn('`withCrlId` CrlId ', [d.arg('CrlId', d.T.string)]),
    withCrlId(CrlId): {
      assert std.isString(CrlId) : 'CrlId must be a string',
      Properties+::: { CrlId: CrlId },
    },
    '#withEnabled': d.fn('`withEnabled` Enabled ', [d.arg('Enabled', d.T.boolean)]),
    withEnabled(Enabled): {
      assert std.isBoolean(Enabled) : 'Enabled must be a boolean',
      Properties+::: { Enabled: Enabled },
    },
    '#withTrustAnchorArn': d.fn('`withTrustAnchorArn` TrustAnchorArn ', [d.arg('TrustAnchorArn', d.T.string)]),
    withTrustAnchorArn(TrustAnchorArn): {
      assert std.isString(TrustAnchorArn) : 'TrustAnchorArn must be a string',
      Properties+::: { TrustAnchorArn: TrustAnchorArn },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  Profile: {
    '#': d.pkg(
      name='Profile',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/RolesAnywhere.libsonnet',
      help='Definition of AWS::RolesAnywhere::Profile Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::RolesAnywhere::Profile Resource
        * Name 
        * RoleArns 
      |||,
      args=[
        d.arg('Name', 'd.T.string'),
        d.arg('RoleArns', 'd.T.array'),
      ]
    ),
    new(
      Name,
      RoleArns,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isArray(RoleArns) : 'RoleArns must be a array',
        RoleArns: RoleArns,
      },
      DependsOn:: [],
      Type: 'AWS::RolesAnywhere::Profile',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDurationSeconds': d.fn('`withDurationSeconds` DurationSeconds ', [d.arg('DurationSeconds', d.T.integer)]),
    withDurationSeconds(DurationSeconds): {
      // Type: number
      Properties+::: { DurationSeconds: DurationSeconds },
    },
    '#withEnabled': d.fn('`withEnabled` Enabled ', [d.arg('Enabled', d.T.boolean)]),
    withEnabled(Enabled): {
      assert std.isBoolean(Enabled) : 'Enabled must be a boolean',
      Properties+::: { Enabled: Enabled },
    },
    '#withManagedPolicyArns': d.fn('`withManagedPolicyArns` ManagedPolicyArns ', [d.arg('ManagedPolicyArns', d.T.array)]),
    withManagedPolicyArns(ManagedPolicyArns): {
      assert std.isArray(ManagedPolicyArns) : 'ManagedPolicyArns must be a array',
      Properties+::: { ManagedPolicyArns: ManagedPolicyArns },
    },
    '#withProfileArn': d.fn('`withProfileArn` ProfileArn ', [d.arg('ProfileArn', d.T.string)]),
    withProfileArn(ProfileArn): {
      assert std.isString(ProfileArn) : 'ProfileArn must be a string',
      Properties+::: { ProfileArn: ProfileArn },
    },
    '#withProfileId': d.fn('`withProfileId` ProfileId ', [d.arg('ProfileId', d.T.string)]),
    withProfileId(ProfileId): {
      assert std.isString(ProfileId) : 'ProfileId must be a string',
      Properties+::: { ProfileId: ProfileId },
    },
    '#withRequireInstanceProperties': d.fn('`withRequireInstanceProperties` RequireInstanceProperties ', [d.arg('RequireInstanceProperties', d.T.boolean)]),
    withRequireInstanceProperties(RequireInstanceProperties): {
      assert std.isBoolean(RequireInstanceProperties) : 'RequireInstanceProperties must be a boolean',
      Properties+::: { RequireInstanceProperties: RequireInstanceProperties },
    },
    '#withSessionPolicy': d.fn('`withSessionPolicy` SessionPolicy ', [d.arg('SessionPolicy', d.T.string)]),
    withSessionPolicy(SessionPolicy): {
      assert std.isString(SessionPolicy) : 'SessionPolicy must be a string',
      Properties+::: { SessionPolicy: SessionPolicy },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withAttributeMappings': d.fn('`withAttributeMappings` AttributeMappings ', [d.arg('AttributeMappings', d.T.array)]),
    withAttributeMappings(AttributeMappings): {
      assert std.isArray(AttributeMappings) : 'AttributeMappings must be a array',
      Properties+::: { AttributeMappings: AttributeMappings },
    },
    '#withAcceptRoleSessionName': d.fn('`withAcceptRoleSessionName` AcceptRoleSessionName ', [d.arg('AcceptRoleSessionName', d.T.boolean)]),
    withAcceptRoleSessionName(AcceptRoleSessionName): {
      assert std.isBoolean(AcceptRoleSessionName) : 'AcceptRoleSessionName must be a boolean',
      Properties+::: { AcceptRoleSessionName: AcceptRoleSessionName },
    },
  },
  TrustAnchor: {
    '#': d.pkg(
      name='TrustAnchor',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/RolesAnywhere.libsonnet',
      help='Definition of AWS::RolesAnywhere::TrustAnchor Resource Type.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::RolesAnywhere::TrustAnchor Resource
        * Name 
        * Source 
      |||,
      args=[
        d.arg('Name', 'd.T.string'),
        d.arg('Source', 'd.T.object'),
      ]
    ),
    new(
      Name,
      Source,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isObject(Source) : 'Source must be a object',
        Source: Source,
      },
      DependsOn:: [],
      Type: 'AWS::RolesAnywhere::TrustAnchor',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withEnabled': d.fn('`withEnabled` Enabled ', [d.arg('Enabled', d.T.boolean)]),
    withEnabled(Enabled): {
      assert std.isBoolean(Enabled) : 'Enabled must be a boolean',
      Properties+::: { Enabled: Enabled },
    },
    '#withNotificationSettings': d.fn('`withNotificationSettings` NotificationSettings ', [d.arg('NotificationSettings', d.T.array)]),
    withNotificationSettings(NotificationSettings): {
      assert std.isArray(NotificationSettings) : 'NotificationSettings must be a array',
      Properties+::: { NotificationSettings: NotificationSettings },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withTrustAnchorId': d.fn('`withTrustAnchorId` TrustAnchorId ', [d.arg('TrustAnchorId', d.T.string)]),
    withTrustAnchorId(TrustAnchorId): {
      assert std.isString(TrustAnchorId) : 'TrustAnchorId must be a string',
      Properties+::: { TrustAnchorId: TrustAnchorId },
    },
    '#withTrustAnchorArn': d.fn('`withTrustAnchorArn` TrustAnchorArn ', [d.arg('TrustAnchorArn', d.T.string)]),
    withTrustAnchorArn(TrustAnchorArn): {
      assert std.isString(TrustAnchorArn) : 'TrustAnchorArn must be a string',
      Properties+::: { TrustAnchorArn: TrustAnchorArn },
    },
  },
}
