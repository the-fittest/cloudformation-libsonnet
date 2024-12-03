local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  Asset: {
    '#': d.pkg(
      name='Asset',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/MediaPackage.libsonnet',
      help='Resource schema for AWS::MediaPackage::Asset',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::MediaPackage::Asset Resource
        * Id The unique identifier for the Asset.
        * PackagingGroupId The ID of the PackagingGroup for the Asset.
        * SourceArn ARN of the source object in S3.
        * SourceRoleArn The IAM role_arn used to access the source S3 bucket.
      |||,
      args=[
        d.arg('Id', 'd.T.string'),
        d.arg('PackagingGroupId', 'd.T.string'),
        d.arg('SourceArn', 'd.T.string'),
        d.arg('SourceRoleArn', 'd.T.string'),
      ]
    ),
    new(
      Id,
      PackagingGroupId,
      SourceArn,
      SourceRoleArn,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Id) : 'Id must be a string',
        Id: Id,
        assert std.isString(PackagingGroupId) : 'PackagingGroupId must be a string',
        PackagingGroupId: PackagingGroupId,
        assert std.isString(SourceArn) : 'SourceArn must be a string',
        SourceArn: SourceArn,
        assert std.isString(SourceRoleArn) : 'SourceRoleArn must be a string',
        SourceRoleArn: SourceRoleArn,
      },
      DependsOn:: [],
      Type: 'AWS::MediaPackage::Asset',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withCreatedAt': d.fn('`withCreatedAt` CreatedAt ', [d.arg('CreatedAt', d.T.string)]),
    withCreatedAt(CreatedAt): {
      assert std.isString(CreatedAt) : 'CreatedAt must be a string',
      Properties+::: { CreatedAt: CreatedAt },
    },
    '#withEgressEndpoints': d.fn('`withEgressEndpoints` EgressEndpoints ', [d.arg('EgressEndpoints', d.T.array)]),
    withEgressEndpoints(EgressEndpoints): {
      assert std.isArray(EgressEndpoints) : 'EgressEndpoints must be a array',
      Properties+::: { EgressEndpoints: EgressEndpoints },
    },
    '#withResourceId': d.fn('`withResourceId` ResourceId ', [d.arg('ResourceId', d.T.string)]),
    withResourceId(ResourceId): {
      assert std.isString(ResourceId) : 'ResourceId must be a string',
      Properties+::: { ResourceId: ResourceId },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  Channel: {
    '#': d.pkg(
      name='Channel',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/MediaPackage.libsonnet',
      help='Resource schema for AWS::MediaPackage::Channel',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::MediaPackage::Channel Resource
        * Id The ID of the Channel.
      |||,
      args=[
        d.arg('Id', 'd.T.string'),
      ]
    ),
    new(
      Id,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Id) : 'Id must be a string',
        Id: Id,
      },
      DependsOn:: [],
      Type: 'AWS::MediaPackage::Channel',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withHlsIngest': d.fn('`withHlsIngest` HlsIngest ', [d.arg('HlsIngest', d.T.object)]),
    withHlsIngest(HlsIngest): {
      assert std.isObject(HlsIngest) : 'HlsIngest must be a object',
      Properties+::: { HlsIngest: HlsIngest },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withEgressAccessLogs': d.fn('`withEgressAccessLogs` EgressAccessLogs ', [d.arg('EgressAccessLogs', d.T.object)]),
    withEgressAccessLogs(EgressAccessLogs): {
      assert std.isObject(EgressAccessLogs) : 'EgressAccessLogs must be a object',
      Properties+::: { EgressAccessLogs: EgressAccessLogs },
    },
    '#withIngressAccessLogs': d.fn('`withIngressAccessLogs` IngressAccessLogs ', [d.arg('IngressAccessLogs', d.T.object)]),
    withIngressAccessLogs(IngressAccessLogs): {
      assert std.isObject(IngressAccessLogs) : 'IngressAccessLogs must be a object',
      Properties+::: { IngressAccessLogs: IngressAccessLogs },
    },
  },
  OriginEndpoint: {
    '#': d.pkg(
      name='OriginEndpoint',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/MediaPackage.libsonnet',
      help='Resource schema for AWS::MediaPackage::OriginEndpoint',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::MediaPackage::OriginEndpoint Resource
        * Id The ID of the OriginEndpoint.
        * ChannelId The ID of the Channel the OriginEndpoint is associated with.
      |||,
      args=[
        d.arg('Id', 'd.T.string'),
        d.arg('ChannelId', 'd.T.string'),
      ]
    ),
    new(
      Id,
      ChannelId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Id) : 'Id must be a string',
        Id: Id,
        assert std.isString(ChannelId) : 'ChannelId must be a string',
        ChannelId: ChannelId,
      },
      DependsOn:: [],
      Type: 'AWS::MediaPackage::OriginEndpoint',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withUrl': d.fn('`withUrl` Url ', [d.arg('Url', d.T.string)]),
    withUrl(Url): {
      assert std.isString(Url) : 'Url must be a string',
      Properties+::: { Url: Url },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withWhitelist': d.fn('`withWhitelist` Whitelist ', [d.arg('Whitelist', d.T.array)]),
    withWhitelist(Whitelist): {
      assert std.isArray(Whitelist) : 'Whitelist must be a array',
      Properties+::: { Whitelist: Whitelist },
    },
    '#withStartoverWindowSeconds': d.fn('`withStartoverWindowSeconds` StartoverWindowSeconds ', [d.arg('StartoverWindowSeconds', d.T.integer)]),
    withStartoverWindowSeconds(StartoverWindowSeconds): {
      assert std.isNumber(StartoverWindowSeconds) : 'StartoverWindowSeconds must be a integer',
      Properties+::: { StartoverWindowSeconds: StartoverWindowSeconds },
    },
    '#withTimeDelaySeconds': d.fn('`withTimeDelaySeconds` TimeDelaySeconds ', [d.arg('TimeDelaySeconds', d.T.integer)]),
    withTimeDelaySeconds(TimeDelaySeconds): {
      assert std.isNumber(TimeDelaySeconds) : 'TimeDelaySeconds must be a integer',
      Properties+::: { TimeDelaySeconds: TimeDelaySeconds },
    },
    '#withManifestName': d.fn('`withManifestName` ManifestName ', [d.arg('ManifestName', d.T.string)]),
    withManifestName(ManifestName): {
      assert std.isString(ManifestName) : 'ManifestName must be a string',
      Properties+::: { ManifestName: ManifestName },
    },
    '#withOrigination': d.fn('`withOrigination` Origination ', [d.arg('Origination', d.T.string)]),
    withOrigination(Origination): {
      assert std.isString(Origination) : 'Origination must be a string',
      assert Origination == 'ALLOW' || Origination == 'DENY' : "Origination must be either 'ALLOW' or 'DENY'",
      Properties+::: { Origination: Origination },
    },
    '#withAuthorization': d.fn('`withAuthorization` Authorization ', [d.arg('Authorization', d.T.object)]),
    withAuthorization(Authorization): {
      assert std.isObject(Authorization) : 'Authorization must be a object',
      Properties+::: { Authorization: Authorization },
    },
    '#withHlsPackage': d.fn('`withHlsPackage` HlsPackage ', [d.arg('HlsPackage', d.T.object)]),
    withHlsPackage(HlsPackage): {
      assert std.isObject(HlsPackage) : 'HlsPackage must be a object',
      Properties+::: { HlsPackage: HlsPackage },
    },
    '#withDashPackage': d.fn('`withDashPackage` DashPackage ', [d.arg('DashPackage', d.T.object)]),
    withDashPackage(DashPackage): {
      assert std.isObject(DashPackage) : 'DashPackage must be a object',
      Properties+::: { DashPackage: DashPackage },
    },
    '#withMssPackage': d.fn('`withMssPackage` MssPackage ', [d.arg('MssPackage', d.T.object)]),
    withMssPackage(MssPackage): {
      assert std.isObject(MssPackage) : 'MssPackage must be a object',
      Properties+::: { MssPackage: MssPackage },
    },
    '#withCmafPackage': d.fn('`withCmafPackage` CmafPackage ', [d.arg('CmafPackage', d.T.object)]),
    withCmafPackage(CmafPackage): {
      assert std.isObject(CmafPackage) : 'CmafPackage must be a object',
      Properties+::: { CmafPackage: CmafPackage },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  PackagingConfiguration: {
    '#': d.pkg(
      name='PackagingConfiguration',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/MediaPackage.libsonnet',
      help='Resource schema for AWS::MediaPackage::PackagingConfiguration',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::MediaPackage::PackagingConfiguration Resource
        * PackagingGroupId The ID of a PackagingGroup.
        * Id The ID of the PackagingConfiguration.
      |||,
      args=[
        d.arg('PackagingGroupId', 'd.T.string'),
        d.arg('Id', 'd.T.string'),
      ]
    ),
    new(
      PackagingGroupId,
      Id,
    ): {
      local base = self,
      Properties: {
        assert std.isString(PackagingGroupId) : 'PackagingGroupId must be a string',
        PackagingGroupId: PackagingGroupId,
        assert std.isString(Id) : 'Id must be a string',
        Id: Id,
      },
      DependsOn:: [],
      Type: 'AWS::MediaPackage::PackagingConfiguration',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withCmafPackage': d.fn('`withCmafPackage` CmafPackage ', [d.arg('CmafPackage', d.T.object)]),
    withCmafPackage(CmafPackage): {
      assert std.isObject(CmafPackage) : 'CmafPackage must be a object',
      Properties+::: { CmafPackage: CmafPackage },
    },
    '#withDashPackage': d.fn('`withDashPackage` DashPackage ', [d.arg('DashPackage', d.T.object)]),
    withDashPackage(DashPackage): {
      assert std.isObject(DashPackage) : 'DashPackage must be a object',
      Properties+::: { DashPackage: DashPackage },
    },
    '#withHlsPackage': d.fn('`withHlsPackage` HlsPackage ', [d.arg('HlsPackage', d.T.object)]),
    withHlsPackage(HlsPackage): {
      assert std.isObject(HlsPackage) : 'HlsPackage must be a object',
      Properties+::: { HlsPackage: HlsPackage },
    },
    '#withMssPackage': d.fn('`withMssPackage` MssPackage ', [d.arg('MssPackage', d.T.object)]),
    withMssPackage(MssPackage): {
      assert std.isObject(MssPackage) : 'MssPackage must be a object',
      Properties+::: { MssPackage: MssPackage },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  PackagingGroup: {
    '#': d.pkg(
      name='PackagingGroup',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/MediaPackage.libsonnet',
      help='Resource schema for AWS::MediaPackage::PackagingGroup',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::MediaPackage::PackagingGroup Resource
        * Id The ID of the PackagingGroup.
      |||,
      args=[
        d.arg('Id', 'd.T.string'),
      ]
    ),
    new(
      Id,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Id) : 'Id must be a string',
        Id: Id,
      },
      DependsOn:: [],
      Type: 'AWS::MediaPackage::PackagingGroup',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
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
    '#withAuthorization': d.fn('`withAuthorization` Authorization ', [d.arg('Authorization', d.T.object)]),
    withAuthorization(Authorization): {
      assert std.isObject(Authorization) : 'Authorization must be a object',
      Properties+::: { Authorization: Authorization },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withEgressAccessLogs': d.fn('`withEgressAccessLogs` EgressAccessLogs ', [d.arg('EgressAccessLogs', d.T.object)]),
    withEgressAccessLogs(EgressAccessLogs): {
      assert std.isObject(EgressAccessLogs) : 'EgressAccessLogs must be a object',
      Properties+::: { EgressAccessLogs: EgressAccessLogs },
    },
  },
}
