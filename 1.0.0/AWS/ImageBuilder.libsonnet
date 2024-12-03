local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  Component: {
    '#': d.pkg(
      name='Component',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ImageBuilder.libsonnet',
      help='Resource schema for AWS::ImageBuilder::Component',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ImageBuilder::Component Resource
        * Name The name of the component.
        * Platform The platform of the component.
        * Version The version of the component.
      |||,
      args=[
        d.arg('Name', 'd.T.string'),
        d.arg('Platform', 'd.T.string'),
        d.arg('Version', 'd.T.string'),
      ]
    ),
    new(
      Name,
      Platform,
      Version,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isString(Platform) : 'Platform must be a string',
        assert Platform == 'Windows' || Platform == 'Linux' || Platform == 'macOS' : "Platform must be either 'Windows' or 'Linux' or 'macOS'",
        Platform: Platform,
        assert std.isString(Version) : 'Version must be a string',
        Version: Version,
      },
      DependsOn:: [],
      Type: 'AWS::ImageBuilder::Component',
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
    '#withChangeDescription': d.fn('`withChangeDescription` ChangeDescription ', [d.arg('ChangeDescription', d.T.string)]),
    withChangeDescription(ChangeDescription): {
      assert std.isString(ChangeDescription) : 'ChangeDescription must be a string',
      Properties+::: { ChangeDescription: ChangeDescription },
    },
    '#withType': d.fn('`withType` Type ', [d.arg('Type', d.T.string)]),
    withType(Type): {
      assert std.isString(Type) : 'Type must be a string',
      assert Type == 'BUILD' || Type == 'TEST' : "Type must be either 'BUILD' or 'TEST'",
      Properties+::: { Type: Type },
    },
    '#withData': d.fn('`withData` Data ', [d.arg('Data', d.T.string)]),
    withData(Data): {
      assert std.isString(Data) : 'Data must be a string',
      Properties+::: { Data: Data },
    },
    '#withKmsKeyId': d.fn('`withKmsKeyId` KmsKeyId ', [d.arg('KmsKeyId', d.T.string)]),
    withKmsKeyId(KmsKeyId): {
      assert std.isString(KmsKeyId) : 'KmsKeyId must be a string',
      Properties+::: { KmsKeyId: KmsKeyId },
    },
    '#withEncrypted': d.fn('`withEncrypted` Encrypted ', [d.arg('Encrypted', d.T.boolean)]),
    withEncrypted(Encrypted): {
      assert std.isBoolean(Encrypted) : 'Encrypted must be a boolean',
      Properties+::: { Encrypted: Encrypted },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.object)]),
    withTags(Tags): {
      assert std.isObject(Tags) : 'Tags must be a object',
      Properties+::: { Tags: Tags },
    },
    '#withUri': d.fn('`withUri` Uri ', [d.arg('Uri', d.T.string)]),
    withUri(Uri): {
      assert std.isString(Uri) : 'Uri must be a string',
      Properties+::: { Uri: Uri },
    },
    '#withSupportedOsVersions': d.fn('`withSupportedOsVersions` SupportedOsVersions ', [d.arg('SupportedOsVersions', d.T.array)]),
    withSupportedOsVersions(SupportedOsVersions): {
      assert std.isArray(SupportedOsVersions) : 'SupportedOsVersions must be a array',
      Properties+::: { SupportedOsVersions: SupportedOsVersions },
    },
  },
  ContainerRecipe: {
    '#': d.pkg(
      name='ContainerRecipe',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ImageBuilder.libsonnet',
      help='Resource schema for AWS::ImageBuilder::ContainerRecipe',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ImageBuilder::ContainerRecipe Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::ImageBuilder::ContainerRecipe',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withVersion': d.fn('`withVersion` Version ', [d.arg('Version', d.T.string)]),
    withVersion(Version): {
      assert std.isString(Version) : 'Version must be a string',
      Properties+::: { Version: Version },
    },
    '#withComponents': d.fn('`withComponents` Components ', [d.arg('Components', d.T.array)]),
    withComponents(Components): {
      assert std.isArray(Components) : 'Components must be a array',
      Properties+::: { Components: Components },
    },
    '#withInstanceConfiguration': d.fn('`withInstanceConfiguration` InstanceConfiguration ', [d.arg('InstanceConfiguration', d.T.object)]),
    withInstanceConfiguration(InstanceConfiguration): {
      assert std.isObject(InstanceConfiguration) : 'InstanceConfiguration must be a object',
      Properties+::: { InstanceConfiguration: InstanceConfiguration },
    },
    '#withDockerfileTemplateData': d.fn('`withDockerfileTemplateData` DockerfileTemplateData ', [d.arg('DockerfileTemplateData', d.T.string)]),
    withDockerfileTemplateData(DockerfileTemplateData): {
      assert std.isString(DockerfileTemplateData) : 'DockerfileTemplateData must be a string',
      Properties+::: { DockerfileTemplateData: DockerfileTemplateData },
    },
    '#withDockerfileTemplateUri': d.fn('`withDockerfileTemplateUri` DockerfileTemplateUri ', [d.arg('DockerfileTemplateUri', d.T.string)]),
    withDockerfileTemplateUri(DockerfileTemplateUri): {
      assert std.isString(DockerfileTemplateUri) : 'DockerfileTemplateUri must be a string',
      Properties+::: { DockerfileTemplateUri: DockerfileTemplateUri },
    },
    '#withPlatformOverride': d.fn('`withPlatformOverride` PlatformOverride ', [d.arg('PlatformOverride', d.T.string)]),
    withPlatformOverride(PlatformOverride): {
      assert std.isString(PlatformOverride) : 'PlatformOverride must be a string',
      assert PlatformOverride == 'Windows' || PlatformOverride == 'Linux' : "PlatformOverride must be either 'Windows' or 'Linux'",
      Properties+::: { PlatformOverride: PlatformOverride },
    },
    '#withContainerType': d.fn('`withContainerType` ContainerType ', [d.arg('ContainerType', d.T.string)]),
    withContainerType(ContainerType): {
      assert std.isString(ContainerType) : 'ContainerType must be a string',
      assert ContainerType == 'DOCKER' : "ContainerType must be either 'DOCKER'",
      Properties+::: { ContainerType: ContainerType },
    },
    '#withImageOsVersionOverride': d.fn('`withImageOsVersionOverride` ImageOsVersionOverride ', [d.arg('ImageOsVersionOverride', d.T.string)]),
    withImageOsVersionOverride(ImageOsVersionOverride): {
      assert std.isString(ImageOsVersionOverride) : 'ImageOsVersionOverride must be a string',
      Properties+::: { ImageOsVersionOverride: ImageOsVersionOverride },
    },
    '#withTargetRepository': d.fn('`withTargetRepository` TargetRepository ', [d.arg('TargetRepository', d.T.object)]),
    withTargetRepository(TargetRepository): {
      assert std.isObject(TargetRepository) : 'TargetRepository must be a object',
      Properties+::: { TargetRepository: TargetRepository },
    },
    '#withKmsKeyId': d.fn('`withKmsKeyId` KmsKeyId ', [d.arg('KmsKeyId', d.T.string)]),
    withKmsKeyId(KmsKeyId): {
      assert std.isString(KmsKeyId) : 'KmsKeyId must be a string',
      Properties+::: { KmsKeyId: KmsKeyId },
    },
    '#withParentImage': d.fn('`withParentImage` ParentImage ', [d.arg('ParentImage', d.T.string)]),
    withParentImage(ParentImage): {
      assert std.isString(ParentImage) : 'ParentImage must be a string',
      Properties+::: { ParentImage: ParentImage },
    },
    '#withWorkingDirectory': d.fn('`withWorkingDirectory` WorkingDirectory ', [d.arg('WorkingDirectory', d.T.string)]),
    withWorkingDirectory(WorkingDirectory): {
      assert std.isString(WorkingDirectory) : 'WorkingDirectory must be a string',
      Properties+::: { WorkingDirectory: WorkingDirectory },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.object)]),
    withTags(Tags): {
      assert std.isObject(Tags) : 'Tags must be a object',
      Properties+::: { Tags: Tags },
    },
  },
  DistributionConfiguration: {
    '#': d.pkg(
      name='DistributionConfiguration',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ImageBuilder.libsonnet',
      help='Resource schema for AWS::ImageBuilder::DistributionConfiguration',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ImageBuilder::DistributionConfiguration Resource
        * Name The name of the distribution configuration.
        * Distributions The distributions of the distribution configuration.
      |||,
      args=[
        d.arg('Name', 'd.T.string'),
        d.arg('Distributions', 'd.T.array'),
      ]
    ),
    new(
      Name,
      Distributions,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isArray(Distributions) : 'Distributions must be a array',
        Distributions: Distributions,
      },
      DependsOn:: [],
      Type: 'AWS::ImageBuilder::DistributionConfiguration',
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
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.object)]),
    withTags(Tags): {
      assert std.isObject(Tags) : 'Tags must be a object',
      Properties+::: { Tags: Tags },
    },
  },
  Image: {
    '#': d.pkg(
      name='Image',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ImageBuilder.libsonnet',
      help='Resource schema for AWS::ImageBuilder::Image',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ImageBuilder::Image Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::ImageBuilder::Image',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
    '#withImageTestsConfiguration': d.fn('`withImageTestsConfiguration` ImageTestsConfiguration ', [d.arg('ImageTestsConfiguration', d.T.object)]),
    withImageTestsConfiguration(ImageTestsConfiguration): {
      assert std.isObject(ImageTestsConfiguration) : 'ImageTestsConfiguration must be a object',
      Properties+::: { ImageTestsConfiguration: ImageTestsConfiguration },
    },
    '#withImageRecipeArn': d.fn('`withImageRecipeArn` ImageRecipeArn ', [d.arg('ImageRecipeArn', d.T.string)]),
    withImageRecipeArn(ImageRecipeArn): {
      assert std.isString(ImageRecipeArn) : 'ImageRecipeArn must be a string',
      Properties+::: { ImageRecipeArn: ImageRecipeArn },
    },
    '#withContainerRecipeArn': d.fn('`withContainerRecipeArn` ContainerRecipeArn ', [d.arg('ContainerRecipeArn', d.T.string)]),
    withContainerRecipeArn(ContainerRecipeArn): {
      assert std.isString(ContainerRecipeArn) : 'ContainerRecipeArn must be a string',
      Properties+::: { ContainerRecipeArn: ContainerRecipeArn },
    },
    '#withDistributionConfigurationArn': d.fn('`withDistributionConfigurationArn` DistributionConfigurationArn ', [d.arg('DistributionConfigurationArn', d.T.string)]),
    withDistributionConfigurationArn(DistributionConfigurationArn): {
      assert std.isString(DistributionConfigurationArn) : 'DistributionConfigurationArn must be a string',
      Properties+::: { DistributionConfigurationArn: DistributionConfigurationArn },
    },
    '#withInfrastructureConfigurationArn': d.fn('`withInfrastructureConfigurationArn` InfrastructureConfigurationArn ', [d.arg('InfrastructureConfigurationArn', d.T.string)]),
    withInfrastructureConfigurationArn(InfrastructureConfigurationArn): {
      assert std.isString(InfrastructureConfigurationArn) : 'InfrastructureConfigurationArn must be a string',
      Properties+::: { InfrastructureConfigurationArn: InfrastructureConfigurationArn },
    },
    '#withWorkflows': d.fn('`withWorkflows` Workflows ', [d.arg('Workflows', d.T.array)]),
    withWorkflows(Workflows): {
      assert std.isArray(Workflows) : 'Workflows must be a array',
      Properties+::: { Workflows: Workflows },
    },
    '#withImageId': d.fn('`withImageId` ImageId ', [d.arg('ImageId', d.T.string)]),
    withImageId(ImageId): {
      assert std.isString(ImageId) : 'ImageId must be a string',
      Properties+::: { ImageId: ImageId },
    },
    '#withImageUri': d.fn('`withImageUri` ImageUri ', [d.arg('ImageUri', d.T.string)]),
    withImageUri(ImageUri): {
      assert std.isString(ImageUri) : 'ImageUri must be a string',
      Properties+::: { ImageUri: ImageUri },
    },
    '#withEnhancedImageMetadataEnabled': d.fn('`withEnhancedImageMetadataEnabled` EnhancedImageMetadataEnabled ', [d.arg('EnhancedImageMetadataEnabled', d.T.boolean)]),
    withEnhancedImageMetadataEnabled(EnhancedImageMetadataEnabled): {
      assert std.isBoolean(EnhancedImageMetadataEnabled) : 'EnhancedImageMetadataEnabled must be a boolean',
      Properties+::: { EnhancedImageMetadataEnabled: EnhancedImageMetadataEnabled },
    },
    '#withImageScanningConfiguration': d.fn('`withImageScanningConfiguration` ImageScanningConfiguration ', [d.arg('ImageScanningConfiguration', d.T.object)]),
    withImageScanningConfiguration(ImageScanningConfiguration): {
      assert std.isObject(ImageScanningConfiguration) : 'ImageScanningConfiguration must be a object',
      Properties+::: { ImageScanningConfiguration: ImageScanningConfiguration },
    },
    '#withExecutionRole': d.fn('`withExecutionRole` ExecutionRole ', [d.arg('ExecutionRole', d.T.string)]),
    withExecutionRole(ExecutionRole): {
      assert std.isString(ExecutionRole) : 'ExecutionRole must be a string',
      Properties+::: { ExecutionRole: ExecutionRole },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.object)]),
    withTags(Tags): {
      assert std.isObject(Tags) : 'Tags must be a object',
      Properties+::: { Tags: Tags },
    },
  },
  ImagePipeline: {
    '#': d.pkg(
      name='ImagePipeline',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ImageBuilder.libsonnet',
      help='Resource schema for AWS::ImageBuilder::ImagePipeline',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ImageBuilder::ImagePipeline Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::ImageBuilder::ImagePipeline',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withImageTestsConfiguration': d.fn('`withImageTestsConfiguration` ImageTestsConfiguration ', [d.arg('ImageTestsConfiguration', d.T.object)]),
    withImageTestsConfiguration(ImageTestsConfiguration): {
      assert std.isObject(ImageTestsConfiguration) : 'ImageTestsConfiguration must be a object',
      Properties+::: { ImageTestsConfiguration: ImageTestsConfiguration },
    },
    '#withStatus': d.fn('`withStatus` Status ', [d.arg('Status', d.T.string)]),
    withStatus(Status): {
      assert std.isString(Status) : 'Status must be a string',
      assert Status == 'DISABLED' || Status == 'ENABLED' : "Status must be either 'DISABLED' or 'ENABLED'",
      Properties+::: { Status: Status },
    },
    '#withSchedule': d.fn('`withSchedule` Schedule ', [d.arg('Schedule', d.T.object)]),
    withSchedule(Schedule): {
      assert std.isObject(Schedule) : 'Schedule must be a object',
      Properties+::: { Schedule: Schedule },
    },
    '#withImageRecipeArn': d.fn('`withImageRecipeArn` ImageRecipeArn ', [d.arg('ImageRecipeArn', d.T.string)]),
    withImageRecipeArn(ImageRecipeArn): {
      assert std.isString(ImageRecipeArn) : 'ImageRecipeArn must be a string',
      Properties+::: { ImageRecipeArn: ImageRecipeArn },
    },
    '#withContainerRecipeArn': d.fn('`withContainerRecipeArn` ContainerRecipeArn ', [d.arg('ContainerRecipeArn', d.T.string)]),
    withContainerRecipeArn(ContainerRecipeArn): {
      assert std.isString(ContainerRecipeArn) : 'ContainerRecipeArn must be a string',
      Properties+::: { ContainerRecipeArn: ContainerRecipeArn },
    },
    '#withDistributionConfigurationArn': d.fn('`withDistributionConfigurationArn` DistributionConfigurationArn ', [d.arg('DistributionConfigurationArn', d.T.string)]),
    withDistributionConfigurationArn(DistributionConfigurationArn): {
      assert std.isString(DistributionConfigurationArn) : 'DistributionConfigurationArn must be a string',
      Properties+::: { DistributionConfigurationArn: DistributionConfigurationArn },
    },
    '#withInfrastructureConfigurationArn': d.fn('`withInfrastructureConfigurationArn` InfrastructureConfigurationArn ', [d.arg('InfrastructureConfigurationArn', d.T.string)]),
    withInfrastructureConfigurationArn(InfrastructureConfigurationArn): {
      assert std.isString(InfrastructureConfigurationArn) : 'InfrastructureConfigurationArn must be a string',
      Properties+::: { InfrastructureConfigurationArn: InfrastructureConfigurationArn },
    },
    '#withWorkflows': d.fn('`withWorkflows` Workflows ', [d.arg('Workflows', d.T.array)]),
    withWorkflows(Workflows): {
      assert std.isArray(Workflows) : 'Workflows must be a array',
      Properties+::: { Workflows: Workflows },
    },
    '#withEnhancedImageMetadataEnabled': d.fn('`withEnhancedImageMetadataEnabled` EnhancedImageMetadataEnabled ', [d.arg('EnhancedImageMetadataEnabled', d.T.boolean)]),
    withEnhancedImageMetadataEnabled(EnhancedImageMetadataEnabled): {
      assert std.isBoolean(EnhancedImageMetadataEnabled) : 'EnhancedImageMetadataEnabled must be a boolean',
      Properties+::: { EnhancedImageMetadataEnabled: EnhancedImageMetadataEnabled },
    },
    '#withImageScanningConfiguration': d.fn('`withImageScanningConfiguration` ImageScanningConfiguration ', [d.arg('ImageScanningConfiguration', d.T.object)]),
    withImageScanningConfiguration(ImageScanningConfiguration): {
      assert std.isObject(ImageScanningConfiguration) : 'ImageScanningConfiguration must be a object',
      Properties+::: { ImageScanningConfiguration: ImageScanningConfiguration },
    },
    '#withExecutionRole': d.fn('`withExecutionRole` ExecutionRole ', [d.arg('ExecutionRole', d.T.string)]),
    withExecutionRole(ExecutionRole): {
      assert std.isString(ExecutionRole) : 'ExecutionRole must be a string',
      Properties+::: { ExecutionRole: ExecutionRole },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.object)]),
    withTags(Tags): {
      assert std.isObject(Tags) : 'Tags must be a object',
      Properties+::: { Tags: Tags },
    },
  },
  ImageRecipe: {
    '#': d.pkg(
      name='ImageRecipe',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ImageBuilder.libsonnet',
      help='Resource schema for AWS::ImageBuilder::ImageRecipe',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ImageBuilder::ImageRecipe Resource
        * Name The name of the image recipe.
        * Version The version of the image recipe.
        * Components The components of the image recipe.
        * ParentImage The parent image of the image recipe.
      |||,
      args=[
        d.arg('Name', 'd.T.string'),
        d.arg('Version', 'd.T.string'),
        d.arg('Components', 'd.T.array'),
        d.arg('ParentImage', 'd.T.string'),
      ]
    ),
    new(
      Name,
      Version,
      Components,
      ParentImage,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isString(Version) : 'Version must be a string',
        Version: Version,
        assert std.isArray(Components) : 'Components must be a array',
        Components: Components,
        assert std.isString(ParentImage) : 'ParentImage must be a string',
        ParentImage: ParentImage,
      },
      DependsOn:: [],
      Type: 'AWS::ImageBuilder::ImageRecipe',
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
    '#withBlockDeviceMappings': d.fn('`withBlockDeviceMappings` BlockDeviceMappings ', [d.arg('BlockDeviceMappings', d.T.array)]),
    withBlockDeviceMappings(BlockDeviceMappings): {
      assert std.isArray(BlockDeviceMappings) : 'BlockDeviceMappings must be a array',
      Properties+::: { BlockDeviceMappings: BlockDeviceMappings },
    },
    '#withWorkingDirectory': d.fn('`withWorkingDirectory` WorkingDirectory ', [d.arg('WorkingDirectory', d.T.string)]),
    withWorkingDirectory(WorkingDirectory): {
      assert std.isString(WorkingDirectory) : 'WorkingDirectory must be a string',
      Properties+::: { WorkingDirectory: WorkingDirectory },
    },
    '#withAdditionalInstanceConfiguration': d.fn('`withAdditionalInstanceConfiguration` AdditionalInstanceConfiguration ', [d.arg('AdditionalInstanceConfiguration', d.T.object)]),
    withAdditionalInstanceConfiguration(AdditionalInstanceConfiguration): {
      assert std.isObject(AdditionalInstanceConfiguration) : 'AdditionalInstanceConfiguration must be a object',
      Properties+::: { AdditionalInstanceConfiguration: AdditionalInstanceConfiguration },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.object)]),
    withTags(Tags): {
      assert std.isObject(Tags) : 'Tags must be a object',
      Properties+::: { Tags: Tags },
    },
  },
  InfrastructureConfiguration: {
    '#': d.pkg(
      name='InfrastructureConfiguration',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ImageBuilder.libsonnet',
      help='Resource schema for AWS::ImageBuilder::InfrastructureConfiguration',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ImageBuilder::InfrastructureConfiguration Resource
        * Name The name of the infrastructure configuration.
        * InstanceProfileName The instance profile of the infrastructure configuration.
      |||,
      args=[
        d.arg('Name', 'd.T.string'),
        d.arg('InstanceProfileName', 'd.T.string'),
      ]
    ),
    new(
      Name,
      InstanceProfileName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isString(InstanceProfileName) : 'InstanceProfileName must be a string',
        InstanceProfileName: InstanceProfileName,
      },
      DependsOn:: [],
      Type: 'AWS::ImageBuilder::InfrastructureConfiguration',
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
    '#withInstanceTypes': d.fn('`withInstanceTypes` InstanceTypes ', [d.arg('InstanceTypes', d.T.array)]),
    withInstanceTypes(InstanceTypes): {
      assert std.isArray(InstanceTypes) : 'InstanceTypes must be a array',
      Properties+::: { InstanceTypes: InstanceTypes },
    },
    '#withSecurityGroupIds': d.fn('`withSecurityGroupIds` SecurityGroupIds ', [d.arg('SecurityGroupIds', d.T.array)]),
    withSecurityGroupIds(SecurityGroupIds): {
      assert std.isArray(SecurityGroupIds) : 'SecurityGroupIds must be a array',
      Properties+::: { SecurityGroupIds: SecurityGroupIds },
    },
    '#withLogging': d.fn('`withLogging` Logging ', [d.arg('Logging', d.T.object)]),
    withLogging(Logging): {
      assert std.isObject(Logging) : 'Logging must be a object',
      Properties+::: { Logging: Logging },
    },
    '#withSubnetId': d.fn('`withSubnetId` SubnetId ', [d.arg('SubnetId', d.T.string)]),
    withSubnetId(SubnetId): {
      assert std.isString(SubnetId) : 'SubnetId must be a string',
      Properties+::: { SubnetId: SubnetId },
    },
    '#withKeyPair': d.fn('`withKeyPair` KeyPair ', [d.arg('KeyPair', d.T.string)]),
    withKeyPair(KeyPair): {
      assert std.isString(KeyPair) : 'KeyPair must be a string',
      Properties+::: { KeyPair: KeyPair },
    },
    '#withTerminateInstanceOnFailure': d.fn('`withTerminateInstanceOnFailure` TerminateInstanceOnFailure ', [d.arg('TerminateInstanceOnFailure', d.T.boolean)]),
    withTerminateInstanceOnFailure(TerminateInstanceOnFailure): {
      assert std.isBoolean(TerminateInstanceOnFailure) : 'TerminateInstanceOnFailure must be a boolean',
      Properties+::: { TerminateInstanceOnFailure: TerminateInstanceOnFailure },
    },
    '#withInstanceMetadataOptions': d.fn('`withInstanceMetadataOptions` InstanceMetadataOptions ', [d.arg('InstanceMetadataOptions', d.T.object)]),
    withInstanceMetadataOptions(InstanceMetadataOptions): {
      assert std.isObject(InstanceMetadataOptions) : 'InstanceMetadataOptions must be a object',
      Properties+::: { InstanceMetadataOptions: InstanceMetadataOptions },
    },
    '#withSnsTopicArn': d.fn('`withSnsTopicArn` SnsTopicArn ', [d.arg('SnsTopicArn', d.T.string)]),
    withSnsTopicArn(SnsTopicArn): {
      assert std.isString(SnsTopicArn) : 'SnsTopicArn must be a string',
      Properties+::: { SnsTopicArn: SnsTopicArn },
    },
    '#withResourceTags': d.fn('`withResourceTags` ResourceTags ', [d.arg('ResourceTags', d.T.object)]),
    withResourceTags(ResourceTags): {
      assert std.isObject(ResourceTags) : 'ResourceTags must be a object',
      Properties+::: { ResourceTags: ResourceTags },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.object)]),
    withTags(Tags): {
      assert std.isObject(Tags) : 'Tags must be a object',
      Properties+::: { Tags: Tags },
    },
    '#withPlacement': d.fn('`withPlacement` Placement ', [d.arg('Placement', d.T.object)]),
    withPlacement(Placement): {
      assert std.isObject(Placement) : 'Placement must be a object',
      Properties+::: { Placement: Placement },
    },
  },
  LifecyclePolicy: {
    '#': d.pkg(
      name='LifecyclePolicy',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ImageBuilder.libsonnet',
      help='Resource schema for AWS::ImageBuilder::LifecyclePolicy',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ImageBuilder::LifecyclePolicy Resource
        * Name The name of the lifecycle policy.
        * ExecutionRole The execution role of the lifecycle policy.
        * ResourceType The resource type of the lifecycle policy.
        * PolicyDetails The policy details of the lifecycle policy.
        * ResourceSelection The resource selection of the lifecycle policy.
      |||,
      args=[
        d.arg('Name', 'd.T.string'),
        d.arg('ExecutionRole', 'd.T.string'),
        d.arg('ResourceType', 'd.T.string'),
        d.arg('PolicyDetails', 'd.T.array'),
        d.arg('ResourceSelection', 'd.T.object'),
      ]
    ),
    new(
      Name,
      ExecutionRole,
      ResourceType,
      PolicyDetails,
      ResourceSelection,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isString(ExecutionRole) : 'ExecutionRole must be a string',
        ExecutionRole: ExecutionRole,
        assert std.isString(ResourceType) : 'ResourceType must be a string',
        assert ResourceType == 'AMI_IMAGE' || ResourceType == 'CONTAINER_IMAGE' : "ResourceType must be either 'AMI_IMAGE' or 'CONTAINER_IMAGE'",
        ResourceType: ResourceType,
        assert std.isArray(PolicyDetails) : 'PolicyDetails must be a array',
        PolicyDetails: PolicyDetails,
        assert std.isObject(ResourceSelection) : 'ResourceSelection must be a object',
        ResourceSelection: ResourceSelection,
      },
      DependsOn:: [],
      Type: 'AWS::ImageBuilder::LifecyclePolicy',
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
    '#withStatus': d.fn('`withStatus` Status ', [d.arg('Status', d.T.string)]),
    withStatus(Status): {
      assert std.isString(Status) : 'Status must be a string',
      assert Status == 'DISABLED' || Status == 'ENABLED' : "Status must be either 'DISABLED' or 'ENABLED'",
      Properties+::: { Status: Status },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.object)]),
    withTags(Tags): {
      assert std.isObject(Tags) : 'Tags must be a object',
      Properties+::: { Tags: Tags },
    },
  },
  Workflow: {
    '#': d.pkg(
      name='Workflow',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ImageBuilder.libsonnet',
      help='Resource schema for AWS::ImageBuilder::Workflow',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ImageBuilder::Workflow Resource
        * Name The name of the workflow.
        * Type The type of the workflow denotes whether the workflow is used to build, test, or distribute.
        * Version The version of the workflow.
      |||,
      args=[
        d.arg('Name', 'd.T.string'),
        d.arg('Type', 'd.T.string'),
        d.arg('Version', 'd.T.string'),
      ]
    ),
    new(
      Name,
      Type,
      Version,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isString(Type) : 'Type must be a string',
        assert Type == 'BUILD' || Type == 'TEST' || Type == 'DISTRIBUTION' : "Type must be either 'BUILD' or 'TEST' or 'DISTRIBUTION'",
        Type: Type,
        assert std.isString(Version) : 'Version must be a string',
        Version: Version,
      },
      DependsOn:: [],
      Type: 'AWS::ImageBuilder::Workflow',
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
    '#withChangeDescription': d.fn('`withChangeDescription` ChangeDescription ', [d.arg('ChangeDescription', d.T.string)]),
    withChangeDescription(ChangeDescription): {
      assert std.isString(ChangeDescription) : 'ChangeDescription must be a string',
      Properties+::: { ChangeDescription: ChangeDescription },
    },
    '#withData': d.fn('`withData` Data ', [d.arg('Data', d.T.string)]),
    withData(Data): {
      assert std.isString(Data) : 'Data must be a string',
      Properties+::: { Data: Data },
    },
    '#withUri': d.fn('`withUri` Uri ', [d.arg('Uri', d.T.string)]),
    withUri(Uri): {
      assert std.isString(Uri) : 'Uri must be a string',
      Properties+::: { Uri: Uri },
    },
    '#withKmsKeyId': d.fn('`withKmsKeyId` KmsKeyId ', [d.arg('KmsKeyId', d.T.string)]),
    withKmsKeyId(KmsKeyId): {
      assert std.isString(KmsKeyId) : 'KmsKeyId must be a string',
      Properties+::: { KmsKeyId: KmsKeyId },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.object)]),
    withTags(Tags): {
      assert std.isObject(Tags) : 'Tags must be a object',
      Properties+::: { Tags: Tags },
    },
  },
}
