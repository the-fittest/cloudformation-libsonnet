local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  Container: {
    '#': d.pkg(
      name='Container',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/MediaStore.libsonnet',
      help='Resource Type definition for AWS::MediaStore::Container',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::MediaStore::Container Resource
        * ContainerName 
      |||,
      args=[
        d.arg('ContainerName', 'd.T.string'),
      ]
    ),
    new(
      ContainerName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ContainerName) : 'ContainerName must be a string',
        ContainerName: ContainerName,
      },
      DependsOn:: [],
      Type: 'AWS::MediaStore::Container',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withPolicy': d.fn('`withPolicy` Policy ', [d.arg('Policy', d.T.string)]),
    withPolicy(Policy): {
      assert std.isString(Policy) : 'Policy must be a string',
      Properties+::: { Policy: Policy },
    },
    '#withMetricPolicy': d.fn('`withMetricPolicy` MetricPolicy ', [d.arg('MetricPolicy', d.T.object)]),
    withMetricPolicy(MetricPolicy): {
      assert std.isObject(MetricPolicy) : 'MetricPolicy must be a object',
      Properties+::: { MetricPolicy: MetricPolicy },
    },
    '#withEndpoint': d.fn('`withEndpoint` Endpoint ', [d.arg('Endpoint', d.T.string)]),
    withEndpoint(Endpoint): {
      assert std.isString(Endpoint) : 'Endpoint must be a string',
      Properties+::: { Endpoint: Endpoint },
    },
    '#withCorsPolicy': d.fn('`withCorsPolicy` CorsPolicy ', [d.arg('CorsPolicy', d.T.array)]),
    withCorsPolicy(CorsPolicy): {
      assert std.isArray(CorsPolicy) : 'CorsPolicy must be a array',
      Properties+::: { CorsPolicy: CorsPolicy },
    },
    '#withLifecyclePolicy': d.fn('`withLifecyclePolicy` LifecyclePolicy ', [d.arg('LifecyclePolicy', d.T.string)]),
    withLifecyclePolicy(LifecyclePolicy): {
      assert std.isString(LifecyclePolicy) : 'LifecyclePolicy must be a string',
      Properties+::: { LifecyclePolicy: LifecyclePolicy },
    },
    '#withAccessLoggingEnabled': d.fn('`withAccessLoggingEnabled` AccessLoggingEnabled ', [d.arg('AccessLoggingEnabled', d.T.boolean)]),
    withAccessLoggingEnabled(AccessLoggingEnabled): {
      assert std.isBoolean(AccessLoggingEnabled) : 'AccessLoggingEnabled must be a boolean',
      Properties+::: { AccessLoggingEnabled: AccessLoggingEnabled },
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
  },
}
