local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  Canary: {
    '#': d.pkg(
      name='Canary',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Synthetics.libsonnet',
      help='Resource Type definition for AWS::Synthetics::Canary',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Synthetics::Canary Resource
        * Name Name of the canary.
        * Code Provide the canary script source
        * ArtifactS3Location Provide the s3 bucket output location for test results
        * ExecutionRoleArn Lambda Execution role used to run your canaries
        * Schedule Frequency to run your canaries
        * RuntimeVersion Runtime version of Synthetics Library
      |||,
      args=[
        d.arg('Name', 'd.T.string'),
        d.arg('Code', 'd.T.object'),
        d.arg('ArtifactS3Location', 'd.T.string'),
        d.arg('ExecutionRoleArn', 'd.T.string'),
        d.arg('Schedule', 'd.T.object'),
        d.arg('RuntimeVersion', 'd.T.string'),
      ]
    ),
    new(
      Name,
      Code,
      ArtifactS3Location,
      ExecutionRoleArn,
      Schedule,
      RuntimeVersion,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isObject(Code) : 'Code must be a object',
        Code: Code,
        assert std.isString(ArtifactS3Location) : 'ArtifactS3Location must be a string',
        ArtifactS3Location: ArtifactS3Location,
        assert std.isString(ExecutionRoleArn) : 'ExecutionRoleArn must be a string',
        ExecutionRoleArn: ExecutionRoleArn,
        assert std.isObject(Schedule) : 'Schedule must be a object',
        Schedule: Schedule,
        assert std.isString(RuntimeVersion) : 'RuntimeVersion must be a string',
        RuntimeVersion: RuntimeVersion,
      },
      DependsOn:: [],
      Type: 'AWS::Synthetics::Canary',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withState': d.fn('`withState` State ', [d.arg('State', d.T.string)]),
    withState(State): {
      assert std.isString(State) : 'State must be a string',
      Properties+::: { State: State },
    },
    '#withArtifactConfig': d.fn('`withArtifactConfig` ArtifactConfig ', [d.arg('ArtifactConfig', d.T.object)]),
    withArtifactConfig(ArtifactConfig): {
      assert std.isObject(ArtifactConfig) : 'ArtifactConfig must be a object',
      Properties+::: { ArtifactConfig: ArtifactConfig },
    },
    '#withSuccessRetentionPeriod': d.fn('`withSuccessRetentionPeriod` SuccessRetentionPeriod ', [d.arg('SuccessRetentionPeriod', d.T.integer)]),
    withSuccessRetentionPeriod(SuccessRetentionPeriod): {
      assert std.isNumber(SuccessRetentionPeriod) : 'SuccessRetentionPeriod must be a integer',
      Properties+::: { SuccessRetentionPeriod: SuccessRetentionPeriod },
    },
    '#withFailureRetentionPeriod': d.fn('`withFailureRetentionPeriod` FailureRetentionPeriod ', [d.arg('FailureRetentionPeriod', d.T.integer)]),
    withFailureRetentionPeriod(FailureRetentionPeriod): {
      assert std.isNumber(FailureRetentionPeriod) : 'FailureRetentionPeriod must be a integer',
      Properties+::: { FailureRetentionPeriod: FailureRetentionPeriod },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withVPCConfig': d.fn('`withVPCConfig` VPCConfig ', [d.arg('VPCConfig', d.T.object)]),
    withVPCConfig(VPCConfig): {
      assert std.isObject(VPCConfig) : 'VPCConfig must be a object',
      Properties+::: { VPCConfig: VPCConfig },
    },
    '#withRunConfig': d.fn('`withRunConfig` RunConfig ', [d.arg('RunConfig', d.T.object)]),
    withRunConfig(RunConfig): {
      assert std.isObject(RunConfig) : 'RunConfig must be a object',
      Properties+::: { RunConfig: RunConfig },
    },
    '#withStartCanaryAfterCreation': d.fn('`withStartCanaryAfterCreation` StartCanaryAfterCreation ', [d.arg('StartCanaryAfterCreation', d.T.boolean)]),
    withStartCanaryAfterCreation(StartCanaryAfterCreation): {
      assert std.isBoolean(StartCanaryAfterCreation) : 'StartCanaryAfterCreation must be a boolean',
      Properties+::: { StartCanaryAfterCreation: StartCanaryAfterCreation },
    },
    '#withVisualReference': d.fn('`withVisualReference` VisualReference ', [d.arg('VisualReference', d.T.object)]),
    withVisualReference(VisualReference): {
      assert std.isObject(VisualReference) : 'VisualReference must be a object',
      Properties+::: { VisualReference: VisualReference },
    },
    '#withDeleteLambdaResourcesOnCanaryDeletion': d.fn('`withDeleteLambdaResourcesOnCanaryDeletion` DeleteLambdaResourcesOnCanaryDeletion ', [d.arg('DeleteLambdaResourcesOnCanaryDeletion', d.T.boolean)]),
    withDeleteLambdaResourcesOnCanaryDeletion(DeleteLambdaResourcesOnCanaryDeletion): {
      assert std.isBoolean(DeleteLambdaResourcesOnCanaryDeletion) : 'DeleteLambdaResourcesOnCanaryDeletion must be a boolean',
      Properties+::: { DeleteLambdaResourcesOnCanaryDeletion: DeleteLambdaResourcesOnCanaryDeletion },
    },
    '#withResourcesToReplicateTags': d.fn('`withResourcesToReplicateTags` ResourcesToReplicateTags ', [d.arg('ResourcesToReplicateTags', d.T.array)]),
    withResourcesToReplicateTags(ResourcesToReplicateTags): {
      assert std.isArray(ResourcesToReplicateTags) : 'ResourcesToReplicateTags must be a array',
      Properties+::: { ResourcesToReplicateTags: ResourcesToReplicateTags },
    },
    '#withProvisionedResourceCleanup': d.fn('`withProvisionedResourceCleanup` ProvisionedResourceCleanup ', [d.arg('ProvisionedResourceCleanup', d.T.string)]),
    withProvisionedResourceCleanup(ProvisionedResourceCleanup): {
      assert std.isString(ProvisionedResourceCleanup) : 'ProvisionedResourceCleanup must be a string',
      assert ProvisionedResourceCleanup == 'AUTOMATIC' || ProvisionedResourceCleanup == 'OFF' : "ProvisionedResourceCleanup must be either 'AUTOMATIC' or 'OFF'",
      Properties+::: { ProvisionedResourceCleanup: ProvisionedResourceCleanup },
    },
  },
  Group: {
    '#': d.pkg(
      name='Group',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Synthetics.libsonnet',
      help='Resource Type definition for AWS::Synthetics::Group',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Synthetics::Group Resource
        * Name Name of the group.
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
      Type: 'AWS::Synthetics::Group',
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
    '#withResourceArns': d.fn('`withResourceArns` ResourceArns ', [d.arg('ResourceArns', d.T.array)]),
    withResourceArns(ResourceArns): {
      assert std.isArray(ResourceArns) : 'ResourceArns must be a array',
      Properties+::: { ResourceArns: ResourceArns },
    },
  },
}
