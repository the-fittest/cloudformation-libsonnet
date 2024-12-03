local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  PullThroughCacheRule: {
    '#': d.pkg(
      name='PullThroughCacheRule',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ECR.libsonnet',
      help='The AWS::ECR::PullThroughCacheRule resource configures the upstream registry configuration details for an Amazon Elastic Container Registry (Amazon Private ECR) pull-through cache.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ECR::PullThroughCacheRule Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::ECR::PullThroughCacheRule',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withEcrRepositoryPrefix': d.fn('`withEcrRepositoryPrefix` EcrRepositoryPrefix ', [d.arg('EcrRepositoryPrefix', d.T.string)]),
    withEcrRepositoryPrefix(EcrRepositoryPrefix): {
      assert std.isString(EcrRepositoryPrefix) : 'EcrRepositoryPrefix must be a string',
      Properties+::: { EcrRepositoryPrefix: EcrRepositoryPrefix },
    },
    '#withUpstreamRegistryUrl': d.fn('`withUpstreamRegistryUrl` UpstreamRegistryUrl ', [d.arg('UpstreamRegistryUrl', d.T.string)]),
    withUpstreamRegistryUrl(UpstreamRegistryUrl): {
      assert std.isString(UpstreamRegistryUrl) : 'UpstreamRegistryUrl must be a string',
      Properties+::: { UpstreamRegistryUrl: UpstreamRegistryUrl },
    },
    '#withCredentialArn': d.fn('`withCredentialArn` CredentialArn ', [d.arg('CredentialArn', d.T.string)]),
    withCredentialArn(CredentialArn): {
      assert std.isString(CredentialArn) : 'CredentialArn must be a string',
      Properties+::: { CredentialArn: CredentialArn },
    },
    '#withUpstreamRegistry': d.fn('`withUpstreamRegistry` UpstreamRegistry ', [d.arg('UpstreamRegistry', d.T.string)]),
    withUpstreamRegistry(UpstreamRegistry): {
      assert std.isString(UpstreamRegistry) : 'UpstreamRegistry must be a string',
      Properties+::: { UpstreamRegistry: UpstreamRegistry },
    },
  },
  RegistryPolicy: {
    '#': d.pkg(
      name='RegistryPolicy',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ECR.libsonnet',
      help='The AWS::ECR::RegistryPolicy resource creates or updates the permissions policy for a private registry. A private registry policy is used to specify permissions for another AWS-account and is used when configuring cross-account replication. For more information, see [Registry permissions](https://docs.aws.amazon.com/AmazonECR/latest/userguide/registry-permissions.html) in the *Amazon Elastic Container Registry User Guide*.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ECR::RegistryPolicy Resource
        * PolicyText The JSON policy text for your registry.
      |||,
      args=[
        d.arg('PolicyText', 'd.T.object'),
      ]
    ),
    new(
      PolicyText,
    ): {
      local base = self,
      Properties: {
        assert std.isObject(PolicyText) : 'PolicyText must be a object',
        PolicyText: PolicyText,
      },
      DependsOn:: [],
      Type: 'AWS::ECR::RegistryPolicy',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withRegistryId': d.fn('`withRegistryId` RegistryId ', [d.arg('RegistryId', d.T.string)]),
    withRegistryId(RegistryId): {
      assert std.isString(RegistryId) : 'RegistryId must be a string',
      Properties+::: { RegistryId: RegistryId },
    },
  },
  ReplicationConfiguration: {
    '#': d.pkg(
      name='ReplicationConfiguration',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ECR.libsonnet',
      help='The AWS::ECR::ReplicationConfiguration resource configures the replication destinations for an Amazon Elastic Container Registry (Amazon Private ECR). For more information, see https://docs.aws.amazon.com/AmazonECR/latest/userguide/replication.html',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ECR::ReplicationConfiguration Resource
        * ReplicationConfiguration 
      |||,
      args=[
        d.arg('ReplicationConfiguration', 'd.T.object'),
      ]
    ),
    new(
      ReplicationConfiguration,
    ): {
      local base = self,
      Properties: {
        assert std.isObject(ReplicationConfiguration) : 'ReplicationConfiguration must be a object',
        ReplicationConfiguration: ReplicationConfiguration,
      },
      DependsOn:: [],
      Type: 'AWS::ECR::ReplicationConfiguration',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withRegistryId': d.fn('`withRegistryId` RegistryId ', [d.arg('RegistryId', d.T.string)]),
    withRegistryId(RegistryId): {
      assert std.isString(RegistryId) : 'RegistryId must be a string',
      Properties+::: { RegistryId: RegistryId },
    },
  },
  Repository: {
    '#': d.pkg(
      name='Repository',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ECR.libsonnet',
      help='The AWS::ECR::Repository resource specifies an Amazon Elastic Container Registry (Amazon ECR) repository, where users can push and pull Docker images, Open Container Initiative (OCI) images, and OCI compatible artifacts. For more information, see [Amazon ECR private repositories](https://docs.aws.amazon.com/AmazonECR/latest/userguide/Repositories.html) in the *Amazon ECR User Guide*.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ECR::Repository Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::ECR::Repository',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withEmptyOnDelete': d.fn('`withEmptyOnDelete` EmptyOnDelete ', [d.arg('EmptyOnDelete', d.T.boolean)]),
    withEmptyOnDelete(EmptyOnDelete): {
      assert std.isBoolean(EmptyOnDelete) : 'EmptyOnDelete must be a boolean',
      Properties+::: { EmptyOnDelete: EmptyOnDelete },
    },
    '#withLifecyclePolicy': d.fn('`withLifecyclePolicy` LifecyclePolicy ', [d.arg('LifecyclePolicy', d.T.object)]),
    withLifecyclePolicy(LifecyclePolicy): {
      assert std.isObject(LifecyclePolicy) : 'LifecyclePolicy must be a object',
      Properties+::: { LifecyclePolicy: LifecyclePolicy },
    },
    '#withRepositoryName': d.fn('`withRepositoryName` RepositoryName ', [d.arg('RepositoryName', d.T.string)]),
    withRepositoryName(RepositoryName): {
      assert std.isString(RepositoryName) : 'RepositoryName must be a string',
      Properties+::: { RepositoryName: RepositoryName },
    },
    '#withRepositoryPolicyText': d.fn('`withRepositoryPolicyText` RepositoryPolicyText ', [d.arg('RepositoryPolicyText')]),
    withRepositoryPolicyText(RepositoryPolicyText): {
      // Type: object,string
      Properties+::: { RepositoryPolicyText: RepositoryPolicyText },
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
    '#withRepositoryUri': d.fn('`withRepositoryUri` RepositoryUri ', [d.arg('RepositoryUri', d.T.string)]),
    withRepositoryUri(RepositoryUri): {
      assert std.isString(RepositoryUri) : 'RepositoryUri must be a string',
      Properties+::: { RepositoryUri: RepositoryUri },
    },
    '#withImageTagMutability': d.fn('`withImageTagMutability` ImageTagMutability ', [d.arg('ImageTagMutability', d.T.string)]),
    withImageTagMutability(ImageTagMutability): {
      assert std.isString(ImageTagMutability) : 'ImageTagMutability must be a string',
      assert ImageTagMutability == 'MUTABLE' || ImageTagMutability == 'IMMUTABLE' : "ImageTagMutability must be either 'MUTABLE' or 'IMMUTABLE'",
      Properties+::: { ImageTagMutability: ImageTagMutability },
    },
    '#withImageScanningConfiguration': d.fn('`withImageScanningConfiguration` ImageScanningConfiguration ', [d.arg('ImageScanningConfiguration', d.T.object)]),
    withImageScanningConfiguration(ImageScanningConfiguration): {
      assert std.isObject(ImageScanningConfiguration) : 'ImageScanningConfiguration must be a object',
      Properties+::: { ImageScanningConfiguration: ImageScanningConfiguration },
    },
    '#withEncryptionConfiguration': d.fn('`withEncryptionConfiguration` EncryptionConfiguration ', [d.arg('EncryptionConfiguration', d.T.object)]),
    withEncryptionConfiguration(EncryptionConfiguration): {
      assert std.isObject(EncryptionConfiguration) : 'EncryptionConfiguration must be a object',
      Properties+::: { EncryptionConfiguration: EncryptionConfiguration },
    },
  },
  RepositoryCreationTemplate: {
    '#': d.pkg(
      name='RepositoryCreationTemplate',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ECR.libsonnet',
      help='AWS::ECR::RepositoryCreationTemplate is used to create repository with configuration from a pre-defined template.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ECR::RepositoryCreationTemplate Resource
        * Prefix The prefix use to match the repository name and apply the template.
        * AppliedFor A list of enumerable Strings representing the repository creation scenarios that the template will apply towards.
      |||,
      args=[
        d.arg('Prefix', 'd.T.string'),
        d.arg('AppliedFor', 'd.T.array'),
      ]
    ),
    new(
      Prefix,
      AppliedFor,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Prefix) : 'Prefix must be a string',
        Prefix: Prefix,
        assert std.isArray(AppliedFor) : 'AppliedFor must be a array',
        AppliedFor: AppliedFor,
      },
      DependsOn:: [],
      Type: 'AWS::ECR::RepositoryCreationTemplate',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withImageTagMutability': d.fn('`withImageTagMutability` ImageTagMutability ', [d.arg('ImageTagMutability', d.T.string)]),
    withImageTagMutability(ImageTagMutability): {
      assert std.isString(ImageTagMutability) : 'ImageTagMutability must be a string',
      assert ImageTagMutability == 'MUTABLE' || ImageTagMutability == 'IMMUTABLE' : "ImageTagMutability must be either 'MUTABLE' or 'IMMUTABLE'",
      Properties+::: { ImageTagMutability: ImageTagMutability },
    },
    '#withRepositoryPolicy': d.fn('`withRepositoryPolicy` RepositoryPolicy ', [d.arg('RepositoryPolicy', d.T.string)]),
    withRepositoryPolicy(RepositoryPolicy): {
      assert std.isString(RepositoryPolicy) : 'RepositoryPolicy must be a string',
      Properties+::: { RepositoryPolicy: RepositoryPolicy },
    },
    '#withLifecyclePolicy': d.fn('`withLifecyclePolicy` LifecyclePolicy ', [d.arg('LifecyclePolicy', d.T.string)]),
    withLifecyclePolicy(LifecyclePolicy): {
      assert std.isString(LifecyclePolicy) : 'LifecyclePolicy must be a string',
      Properties+::: { LifecyclePolicy: LifecyclePolicy },
    },
    '#withEncryptionConfiguration': d.fn('`withEncryptionConfiguration` EncryptionConfiguration ', [d.arg('EncryptionConfiguration', d.T.object)]),
    withEncryptionConfiguration(EncryptionConfiguration): {
      assert std.isObject(EncryptionConfiguration) : 'EncryptionConfiguration must be a object',
      Properties+::: { EncryptionConfiguration: EncryptionConfiguration },
    },
    '#withResourceTags': d.fn('`withResourceTags` ResourceTags ', [d.arg('ResourceTags', d.T.array)]),
    withResourceTags(ResourceTags): {
      assert std.isArray(ResourceTags) : 'ResourceTags must be a array',
      Properties+::: { ResourceTags: ResourceTags },
    },
    '#withCustomRoleArn': d.fn('`withCustomRoleArn` CustomRoleArn ', [d.arg('CustomRoleArn', d.T.string)]),
    withCustomRoleArn(CustomRoleArn): {
      assert std.isString(CustomRoleArn) : 'CustomRoleArn must be a string',
      Properties+::: { CustomRoleArn: CustomRoleArn },
    },
    '#withCreatedAt': d.fn('`withCreatedAt` CreatedAt ', [d.arg('CreatedAt', d.T.string)]),
    withCreatedAt(CreatedAt): {
      assert std.isString(CreatedAt) : 'CreatedAt must be a string',
      Properties+::: { CreatedAt: CreatedAt },
    },
    '#withUpdatedAt': d.fn('`withUpdatedAt` UpdatedAt ', [d.arg('UpdatedAt', d.T.string)]),
    withUpdatedAt(UpdatedAt): {
      assert std.isString(UpdatedAt) : 'UpdatedAt must be a string',
      Properties+::: { UpdatedAt: UpdatedAt },
    },
  },
}
