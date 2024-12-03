local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  Pipe: {
    '#': d.pkg(
      name='Pipe',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Pipes.libsonnet',
      help='Definition of AWS::Pipes::Pipe Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Pipes::Pipe Resource
        * RoleArn 
        * Source 
        * Target 
      |||,
      args=[
        d.arg('RoleArn', 'd.T.string'),
        d.arg('Source', 'd.T.string'),
        d.arg('Target', 'd.T.string'),
      ]
    ),
    new(
      RoleArn,
      Source,
      Target,
    ): {
      local base = self,
      Properties: {
        assert std.isString(RoleArn) : 'RoleArn must be a string',
        RoleArn: RoleArn,
        assert std.isString(Source) : 'Source must be a string',
        Source: Source,
        assert std.isString(Target) : 'Target must be a string',
        Target: Target,
      },
      DependsOn:: [],
      Type: 'AWS::Pipes::Pipe',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withCreationTime': d.fn('`withCreationTime` CreationTime ', [d.arg('CreationTime', d.T.string)]),
    withCreationTime(CreationTime): {
      assert std.isString(CreationTime) : 'CreationTime must be a string',
      Properties+::: { CreationTime: CreationTime },
    },
    '#withCurrentState': d.fn('`withCurrentState` CurrentState ', [d.arg('CurrentState', d.T.string)]),
    withCurrentState(CurrentState): {
      assert std.isString(CurrentState) : 'CurrentState must be a string',
      Properties+::: { CurrentState: CurrentState },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withDesiredState': d.fn('`withDesiredState` DesiredState ', [d.arg('DesiredState', d.T.string)]),
    withDesiredState(DesiredState): {
      assert std.isString(DesiredState) : 'DesiredState must be a string',
      Properties+::: { DesiredState: DesiredState },
    },
    '#withEnrichment': d.fn('`withEnrichment` Enrichment ', [d.arg('Enrichment', d.T.string)]),
    withEnrichment(Enrichment): {
      assert std.isString(Enrichment) : 'Enrichment must be a string',
      Properties+::: { Enrichment: Enrichment },
    },
    '#withEnrichmentParameters': d.fn('`withEnrichmentParameters` EnrichmentParameters ', [d.arg('EnrichmentParameters', d.T.object)]),
    withEnrichmentParameters(EnrichmentParameters): {
      assert std.isObject(EnrichmentParameters) : 'EnrichmentParameters must be a object',
      Properties+::: { EnrichmentParameters: EnrichmentParameters },
    },
    '#withKmsKeyIdentifier': d.fn('`withKmsKeyIdentifier` KmsKeyIdentifier ', [d.arg('KmsKeyIdentifier', d.T.string)]),
    withKmsKeyIdentifier(KmsKeyIdentifier): {
      assert std.isString(KmsKeyIdentifier) : 'KmsKeyIdentifier must be a string',
      Properties+::: { KmsKeyIdentifier: KmsKeyIdentifier },
    },
    '#withLastModifiedTime': d.fn('`withLastModifiedTime` LastModifiedTime ', [d.arg('LastModifiedTime', d.T.string)]),
    withLastModifiedTime(LastModifiedTime): {
      assert std.isString(LastModifiedTime) : 'LastModifiedTime must be a string',
      Properties+::: { LastModifiedTime: LastModifiedTime },
    },
    '#withLogConfiguration': d.fn('`withLogConfiguration` LogConfiguration ', [d.arg('LogConfiguration', d.T.object)]),
    withLogConfiguration(LogConfiguration): {
      assert std.isObject(LogConfiguration) : 'LogConfiguration must be a object',
      Properties+::: { LogConfiguration: LogConfiguration },
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
    '#withSourceParameters': d.fn('`withSourceParameters` SourceParameters ', [d.arg('SourceParameters', d.T.object)]),
    withSourceParameters(SourceParameters): {
      assert std.isObject(SourceParameters) : 'SourceParameters must be a object',
      Properties+::: { SourceParameters: SourceParameters },
    },
    '#withStateReason': d.fn('`withStateReason` StateReason ', [d.arg('StateReason', d.T.string)]),
    withStateReason(StateReason): {
      assert std.isString(StateReason) : 'StateReason must be a string',
      Properties+::: { StateReason: StateReason },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.object)]),
    withTags(Tags): {
      assert std.isObject(Tags) : 'Tags must be a object',
      Properties+::: { Tags: Tags },
    },
    '#withTargetParameters': d.fn('`withTargetParameters` TargetParameters ', [d.arg('TargetParameters', d.T.object)]),
    withTargetParameters(TargetParameters): {
      assert std.isObject(TargetParameters) : 'TargetParameters must be a object',
      Properties+::: { TargetParameters: TargetParameters },
    },
  },
}
