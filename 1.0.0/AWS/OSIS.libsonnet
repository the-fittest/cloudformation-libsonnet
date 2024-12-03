local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  Pipeline: {
    '#': d.pkg(
      name='Pipeline',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/OSIS.libsonnet',
      help='An OpenSearch Ingestion Service Data Prepper pipeline running Data Prepper.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::OSIS::Pipeline Resource
        * MaxUnits The maximum pipeline capacity, in Ingestion OpenSearch Compute Units (OCUs).
        * MinUnits The minimum pipeline capacity, in Ingestion OpenSearch Compute Units (OCUs).
        * PipelineConfigurationBody The Data Prepper pipeline configuration.
        * PipelineName Name of the OpenSearch Ingestion Service pipeline to create. Pipeline names are unique across the pipelines owned by an account within an AWS Region.
      |||,
      args=[
        d.arg('MaxUnits', 'd.T.integer'),
        d.arg('MinUnits', 'd.T.integer'),
        d.arg('PipelineConfigurationBody', 'd.T.string'),
        d.arg('PipelineName', 'd.T.string'),
      ]
    ),
    new(
      MaxUnits,
      MinUnits,
      PipelineConfigurationBody,
      PipelineName,
    ): {
      local base = self,
      Properties: {
        assert std.isNumber(MaxUnits) : 'MaxUnits must be a integer',
        MaxUnits: MaxUnits,
        assert std.isNumber(MinUnits) : 'MinUnits must be a integer',
        MinUnits: MinUnits,
        assert std.isString(PipelineConfigurationBody) : 'PipelineConfigurationBody must be a string',
        PipelineConfigurationBody: PipelineConfigurationBody,
        assert std.isString(PipelineName) : 'PipelineName must be a string',
        PipelineName: PipelineName,
      },
      DependsOn:: [],
      Type: 'AWS::OSIS::Pipeline',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withBufferOptions': d.fn('`withBufferOptions` BufferOptions ', [d.arg('BufferOptions', d.T.object)]),
    withBufferOptions(BufferOptions): {
      assert std.isObject(BufferOptions) : 'BufferOptions must be a object',
      Properties+::: { BufferOptions: BufferOptions },
    },
    '#withEncryptionAtRestOptions': d.fn('`withEncryptionAtRestOptions` EncryptionAtRestOptions ', [d.arg('EncryptionAtRestOptions', d.T.object)]),
    withEncryptionAtRestOptions(EncryptionAtRestOptions): {
      assert std.isObject(EncryptionAtRestOptions) : 'EncryptionAtRestOptions must be a object',
      Properties+::: { EncryptionAtRestOptions: EncryptionAtRestOptions },
    },
    '#withLogPublishingOptions': d.fn('`withLogPublishingOptions` LogPublishingOptions ', [d.arg('LogPublishingOptions', d.T.object)]),
    withLogPublishingOptions(LogPublishingOptions): {
      assert std.isObject(LogPublishingOptions) : 'LogPublishingOptions must be a object',
      Properties+::: { LogPublishingOptions: LogPublishingOptions },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withVpcOptions': d.fn('`withVpcOptions` VpcOptions ', [d.arg('VpcOptions', d.T.object)]),
    withVpcOptions(VpcOptions): {
      assert std.isObject(VpcOptions) : 'VpcOptions must be a object',
      Properties+::: { VpcOptions: VpcOptions },
    },
    '#withVpcEndpoints': d.fn('`withVpcEndpoints` VpcEndpoints ', [d.arg('VpcEndpoints', d.T.array)]),
    withVpcEndpoints(VpcEndpoints): {
      assert std.isArray(VpcEndpoints) : 'VpcEndpoints must be a array',
      Properties+::: { VpcEndpoints: VpcEndpoints },
    },
    '#withVpcEndpointService': d.fn('`withVpcEndpointService` VpcEndpointService ', [d.arg('VpcEndpointService', d.T.string)]),
    withVpcEndpointService(VpcEndpointService): {
      assert std.isString(VpcEndpointService) : 'VpcEndpointService must be a string',
      Properties+::: { VpcEndpointService: VpcEndpointService },
    },
    '#withPipelineArn': d.fn('`withPipelineArn` PipelineArn ', [d.arg('PipelineArn', d.T.string)]),
    withPipelineArn(PipelineArn): {
      assert std.isString(PipelineArn) : 'PipelineArn must be a string',
      Properties+::: { PipelineArn: PipelineArn },
    },
    '#withIngestEndpointUrls': d.fn('`withIngestEndpointUrls` IngestEndpointUrls ', [d.arg('IngestEndpointUrls', d.T.array)]),
    withIngestEndpointUrls(IngestEndpointUrls): {
      assert std.isArray(IngestEndpointUrls) : 'IngestEndpointUrls must be a array',
      Properties+::: { IngestEndpointUrls: IngestEndpointUrls },
    },
  },
}
