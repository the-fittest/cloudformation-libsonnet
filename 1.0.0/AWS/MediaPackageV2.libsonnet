local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  Channel: {
    '#': d.pkg(
      name='Channel',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/MediaPackageV2.libsonnet',
      help='&lt;p&gt;Represents an entry point into AWS Elemental MediaPackage for an ABR video content stream sent from an upstream encoder such as AWS Elemental MediaLive. The channel continuously analyzes the content that it receives and prepares it to be distributed to consumers via one or more origin endpoints.&lt;/p&gt;',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::MediaPackageV2::Channel Resource
        * ChannelGroupName 
        * ChannelName 
      |||,
      args=[
        d.arg('ChannelGroupName', 'd.T.string'),
        d.arg('ChannelName', 'd.T.string'),
      ]
    ),
    new(
      ChannelGroupName,
      ChannelName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ChannelGroupName) : 'ChannelGroupName must be a string',
        ChannelGroupName: ChannelGroupName,
        assert std.isString(ChannelName) : 'ChannelName must be a string',
        ChannelName: ChannelName,
      },
      DependsOn:: [],
      Type: 'AWS::MediaPackageV2::Channel',
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
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withIngestEndpoints': d.fn('`withIngestEndpoints` IngestEndpoints ', [d.arg('IngestEndpoints', d.T.array)]),
    withIngestEndpoints(IngestEndpoints): {
      assert std.isArray(IngestEndpoints) : 'IngestEndpoints must be a array',
      Properties+::: { IngestEndpoints: IngestEndpoints },
    },
    '#withInputType': d.fn('`withInputType` InputType ', [d.arg('InputType', d.T.string)]),
    withInputType(InputType): {
      assert std.isString(InputType) : 'InputType must be a string',
      Properties+::: { InputType: InputType },
    },
    '#withModifiedAt': d.fn('`withModifiedAt` ModifiedAt ', [d.arg('ModifiedAt', d.T.string)]),
    withModifiedAt(ModifiedAt): {
      assert std.isString(ModifiedAt) : 'ModifiedAt must be a string',
      Properties+::: { ModifiedAt: ModifiedAt },
    },
    '#withIngestEndpointUrls': d.fn('`withIngestEndpointUrls` IngestEndpointUrls ', [d.arg('IngestEndpointUrls', d.T.array)]),
    withIngestEndpointUrls(IngestEndpointUrls): {
      assert std.isArray(IngestEndpointUrls) : 'IngestEndpointUrls must be a array',
      Properties+::: { IngestEndpointUrls: IngestEndpointUrls },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  ChannelGroup: {
    '#': d.pkg(
      name='ChannelGroup',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/MediaPackageV2.libsonnet',
      help='&lt;p&gt;Represents a channel group that facilitates the grouping of multiple channels.&lt;/p&gt;',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::MediaPackageV2::ChannelGroup Resource
        * ChannelGroupName 
      |||,
      args=[
        d.arg('ChannelGroupName', 'd.T.string'),
      ]
    ),
    new(
      ChannelGroupName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ChannelGroupName) : 'ChannelGroupName must be a string',
        ChannelGroupName: ChannelGroupName,
      },
      DependsOn:: [],
      Type: 'AWS::MediaPackageV2::ChannelGroup',
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
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withEgressDomain': d.fn('`withEgressDomain` EgressDomain ', [d.arg('EgressDomain', d.T.string)]),
    withEgressDomain(EgressDomain): {
      assert std.isString(EgressDomain) : 'EgressDomain must be a string',
      Properties+::: { EgressDomain: EgressDomain },
    },
    '#withModifiedAt': d.fn('`withModifiedAt` ModifiedAt ', [d.arg('ModifiedAt', d.T.string)]),
    withModifiedAt(ModifiedAt): {
      assert std.isString(ModifiedAt) : 'ModifiedAt must be a string',
      Properties+::: { ModifiedAt: ModifiedAt },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  ChannelPolicy: {
    '#': d.pkg(
      name='ChannelPolicy',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/MediaPackageV2.libsonnet',
      help='&lt;p&gt;Represents a resource-based policy that allows or denies access to a channel.&lt;/p&gt;',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::MediaPackageV2::ChannelPolicy Resource
        * ChannelGroupName 
        * ChannelName 
        * Policy 
      |||,
      args=[
        d.arg('ChannelGroupName', 'd.T.string'),
        d.arg('ChannelName', 'd.T.string'),
        d.arg('Policy', ''),
      ]
    ),
    new(
      ChannelGroupName,
      ChannelName,
      Policy,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ChannelGroupName) : 'ChannelGroupName must be a string',
        ChannelGroupName: ChannelGroupName,
        assert std.isString(ChannelName) : 'ChannelName must be a string',
        ChannelName: ChannelName,
        // Type: object,string
        Policy: Policy,
      },
      DependsOn:: [],
      Type: 'AWS::MediaPackageV2::ChannelPolicy',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
  },
  OriginEndpoint: {
    '#': d.pkg(
      name='OriginEndpoint',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/MediaPackageV2.libsonnet',
      help='&lt;p&gt;Represents an origin endpoint that is associated with a channel, offering a dynamically repackaged version of its content through various streaming media protocols. The content can be efficiently disseminated to end-users via a Content Delivery Network (CDN), like Amazon CloudFront.&lt;/p&gt;',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::MediaPackageV2::OriginEndpoint Resource
        * ChannelGroupName 
        * ChannelName 
        * OriginEndpointName 
        * ContainerType 
      |||,
      args=[
        d.arg('ChannelGroupName', 'd.T.string'),
        d.arg('ChannelName', 'd.T.string'),
        d.arg('OriginEndpointName', 'd.T.string'),
        d.arg('ContainerType', 'd.T.string'),
      ]
    ),
    new(
      ChannelGroupName,
      ChannelName,
      OriginEndpointName,
      ContainerType,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ChannelGroupName) : 'ChannelGroupName must be a string',
        ChannelGroupName: ChannelGroupName,
        assert std.isString(ChannelName) : 'ChannelName must be a string',
        ChannelName: ChannelName,
        assert std.isString(OriginEndpointName) : 'OriginEndpointName must be a string',
        OriginEndpointName: OriginEndpointName,
        assert std.isString(ContainerType) : 'ContainerType must be a string',
        ContainerType: ContainerType,
      },
      DependsOn:: [],
      Type: 'AWS::MediaPackageV2::OriginEndpoint',
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
    '#withDashManifests': d.fn('`withDashManifests` DashManifests ', [d.arg('DashManifests', d.T.array)]),
    withDashManifests(DashManifests): {
      assert std.isArray(DashManifests) : 'DashManifests must be a array',
      Properties+::: { DashManifests: DashManifests },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withForceEndpointErrorConfiguration': d.fn('`withForceEndpointErrorConfiguration` ForceEndpointErrorConfiguration ', [d.arg('ForceEndpointErrorConfiguration', d.T.object)]),
    withForceEndpointErrorConfiguration(ForceEndpointErrorConfiguration): {
      assert std.isObject(ForceEndpointErrorConfiguration) : 'ForceEndpointErrorConfiguration must be a object',
      Properties+::: { ForceEndpointErrorConfiguration: ForceEndpointErrorConfiguration },
    },
    '#withHlsManifests': d.fn('`withHlsManifests` HlsManifests ', [d.arg('HlsManifests', d.T.array)]),
    withHlsManifests(HlsManifests): {
      assert std.isArray(HlsManifests) : 'HlsManifests must be a array',
      Properties+::: { HlsManifests: HlsManifests },
    },
    '#withLowLatencyHlsManifests': d.fn('`withLowLatencyHlsManifests` LowLatencyHlsManifests ', [d.arg('LowLatencyHlsManifests', d.T.array)]),
    withLowLatencyHlsManifests(LowLatencyHlsManifests): {
      assert std.isArray(LowLatencyHlsManifests) : 'LowLatencyHlsManifests must be a array',
      Properties+::: { LowLatencyHlsManifests: LowLatencyHlsManifests },
    },
    '#withModifiedAt': d.fn('`withModifiedAt` ModifiedAt ', [d.arg('ModifiedAt', d.T.string)]),
    withModifiedAt(ModifiedAt): {
      assert std.isString(ModifiedAt) : 'ModifiedAt must be a string',
      Properties+::: { ModifiedAt: ModifiedAt },
    },
    '#withSegment': d.fn('`withSegment` Segment ', [d.arg('Segment', d.T.object)]),
    withSegment(Segment): {
      assert std.isObject(Segment) : 'Segment must be a object',
      Properties+::: { Segment: Segment },
    },
    '#withStartoverWindowSeconds': d.fn('`withStartoverWindowSeconds` StartoverWindowSeconds ', [d.arg('StartoverWindowSeconds', d.T.integer)]),
    withStartoverWindowSeconds(StartoverWindowSeconds): {
      assert std.isNumber(StartoverWindowSeconds) : 'StartoverWindowSeconds must be a integer',
      Properties+::: { StartoverWindowSeconds: StartoverWindowSeconds },
    },
    '#withDashManifestUrls': d.fn('`withDashManifestUrls` DashManifestUrls ', [d.arg('DashManifestUrls', d.T.array)]),
    withDashManifestUrls(DashManifestUrls): {
      assert std.isArray(DashManifestUrls) : 'DashManifestUrls must be a array',
      Properties+::: { DashManifestUrls: DashManifestUrls },
    },
    '#withHlsManifestUrls': d.fn('`withHlsManifestUrls` HlsManifestUrls ', [d.arg('HlsManifestUrls', d.T.array)]),
    withHlsManifestUrls(HlsManifestUrls): {
      assert std.isArray(HlsManifestUrls) : 'HlsManifestUrls must be a array',
      Properties+::: { HlsManifestUrls: HlsManifestUrls },
    },
    '#withLowLatencyHlsManifestUrls': d.fn('`withLowLatencyHlsManifestUrls` LowLatencyHlsManifestUrls ', [d.arg('LowLatencyHlsManifestUrls', d.T.array)]),
    withLowLatencyHlsManifestUrls(LowLatencyHlsManifestUrls): {
      assert std.isArray(LowLatencyHlsManifestUrls) : 'LowLatencyHlsManifestUrls must be a array',
      Properties+::: { LowLatencyHlsManifestUrls: LowLatencyHlsManifestUrls },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  OriginEndpointPolicy: {
    '#': d.pkg(
      name='OriginEndpointPolicy',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/MediaPackageV2.libsonnet',
      help='&lt;p&gt;Represents a resource policy that allows or denies access to an origin endpoint.&lt;/p&gt;',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::MediaPackageV2::OriginEndpointPolicy Resource
        * ChannelGroupName 
        * ChannelName 
        * OriginEndpointName 
        * Policy 
      |||,
      args=[
        d.arg('ChannelGroupName', 'd.T.string'),
        d.arg('ChannelName', 'd.T.string'),
        d.arg('OriginEndpointName', 'd.T.string'),
        d.arg('Policy', ''),
      ]
    ),
    new(
      ChannelGroupName,
      ChannelName,
      OriginEndpointName,
      Policy,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ChannelGroupName) : 'ChannelGroupName must be a string',
        ChannelGroupName: ChannelGroupName,
        assert std.isString(ChannelName) : 'ChannelName must be a string',
        ChannelName: ChannelName,
        assert std.isString(OriginEndpointName) : 'OriginEndpointName must be a string',
        OriginEndpointName: OriginEndpointName,
        // Type: object,string
        Policy: Policy,
      },
      DependsOn:: [],
      Type: 'AWS::MediaPackageV2::OriginEndpointPolicy',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
  },
}
