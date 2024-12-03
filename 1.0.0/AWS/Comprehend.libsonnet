local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  DocumentClassifier: {
    '#': d.pkg(
      name='DocumentClassifier',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Comprehend.libsonnet',
      help='Document Classifier enables training document classifier models.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Comprehend::DocumentClassifier Resource
        * DocumentClassifierName 
        * DataAccessRoleArn 
        * InputDataConfig 
        * LanguageCode 
      |||,
      args=[
        d.arg('DocumentClassifierName', 'd.T.string'),
        d.arg('DataAccessRoleArn', 'd.T.string'),
        d.arg('InputDataConfig', 'd.T.object'),
        d.arg('LanguageCode', 'd.T.string'),
      ]
    ),
    new(
      DocumentClassifierName,
      DataAccessRoleArn,
      InputDataConfig,
      LanguageCode,
    ): {
      local base = self,
      Properties: {
        assert std.isString(DocumentClassifierName) : 'DocumentClassifierName must be a string',
        DocumentClassifierName: DocumentClassifierName,
        assert std.isString(DataAccessRoleArn) : 'DataAccessRoleArn must be a string',
        DataAccessRoleArn: DataAccessRoleArn,
        assert std.isObject(InputDataConfig) : 'InputDataConfig must be a object',
        InputDataConfig: InputDataConfig,
        assert std.isString(LanguageCode) : 'LanguageCode must be a string',
        assert LanguageCode == 'en' || LanguageCode == 'es' || LanguageCode == 'fr' || LanguageCode == 'it' || LanguageCode == 'de' || LanguageCode == 'pt' : "LanguageCode must be either 'en' or 'es' or 'fr' or 'it' or 'de' or 'pt'",
        LanguageCode: LanguageCode,
      },
      DependsOn:: [],
      Type: 'AWS::Comprehend::DocumentClassifier',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withOutputDataConfig': d.fn('`withOutputDataConfig` OutputDataConfig ', [d.arg('OutputDataConfig', d.T.object)]),
    withOutputDataConfig(OutputDataConfig): {
      assert std.isObject(OutputDataConfig) : 'OutputDataConfig must be a object',
      Properties+::: { OutputDataConfig: OutputDataConfig },
    },
    '#withModelKmsKeyId': d.fn('`withModelKmsKeyId` ModelKmsKeyId ', [d.arg('ModelKmsKeyId', d.T.string)]),
    withModelKmsKeyId(ModelKmsKeyId): {
      assert std.isString(ModelKmsKeyId) : 'ModelKmsKeyId must be a string',
      Properties+::: { ModelKmsKeyId: ModelKmsKeyId },
    },
    '#withModelPolicy': d.fn('`withModelPolicy` ModelPolicy ', [d.arg('ModelPolicy', d.T.string)]),
    withModelPolicy(ModelPolicy): {
      assert std.isString(ModelPolicy) : 'ModelPolicy must be a string',
      Properties+::: { ModelPolicy: ModelPolicy },
    },
    '#withMode': d.fn('`withMode` Mode ', [d.arg('Mode', d.T.string)]),
    withMode(Mode): {
      assert std.isString(Mode) : 'Mode must be a string',
      assert Mode == 'MULTI_CLASS' || Mode == 'MULTI_LABEL' : "Mode must be either 'MULTI_CLASS' or 'MULTI_LABEL'",
      Properties+::: { Mode: Mode },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withVersionName': d.fn('`withVersionName` VersionName ', [d.arg('VersionName', d.T.string)]),
    withVersionName(VersionName): {
      assert std.isString(VersionName) : 'VersionName must be a string',
      Properties+::: { VersionName: VersionName },
    },
    '#withVolumeKmsKeyId': d.fn('`withVolumeKmsKeyId` VolumeKmsKeyId ', [d.arg('VolumeKmsKeyId', d.T.string)]),
    withVolumeKmsKeyId(VolumeKmsKeyId): {
      assert std.isString(VolumeKmsKeyId) : 'VolumeKmsKeyId must be a string',
      Properties+::: { VolumeKmsKeyId: VolumeKmsKeyId },
    },
    '#withVpcConfig': d.fn('`withVpcConfig` VpcConfig ', [d.arg('VpcConfig', d.T.object)]),
    withVpcConfig(VpcConfig): {
      assert std.isObject(VpcConfig) : 'VpcConfig must be a object',
      Properties+::: { VpcConfig: VpcConfig },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
  },
  Flywheel: {
    '#': d.pkg(
      name='Flywheel',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Comprehend.libsonnet',
      help='The AWS::Comprehend::Flywheel resource creates an Amazon Comprehend Flywheel that enables customer to train their model.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Comprehend::Flywheel Resource
        * FlywheelName 
        * DataAccessRoleArn 
        * DataLakeS3Uri 
      |||,
      args=[
        d.arg('FlywheelName', 'd.T.string'),
        d.arg('DataAccessRoleArn', 'd.T.string'),
        d.arg('DataLakeS3Uri', 'd.T.string'),
      ]
    ),
    new(
      FlywheelName,
      DataAccessRoleArn,
      DataLakeS3Uri,
    ): {
      local base = self,
      Properties: {
        assert std.isString(FlywheelName) : 'FlywheelName must be a string',
        FlywheelName: FlywheelName,
        assert std.isString(DataAccessRoleArn) : 'DataAccessRoleArn must be a string',
        DataAccessRoleArn: DataAccessRoleArn,
        assert std.isString(DataLakeS3Uri) : 'DataLakeS3Uri must be a string',
        DataLakeS3Uri: DataLakeS3Uri,
      },
      DependsOn:: [],
      Type: 'AWS::Comprehend::Flywheel',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withActiveModelArn': d.fn('`withActiveModelArn` ActiveModelArn ', [d.arg('ActiveModelArn', d.T.string)]),
    withActiveModelArn(ActiveModelArn): {
      assert std.isString(ActiveModelArn) : 'ActiveModelArn must be a string',
      Properties+::: { ActiveModelArn: ActiveModelArn },
    },
    '#withDataSecurityConfig': d.fn('`withDataSecurityConfig` DataSecurityConfig ', [d.arg('DataSecurityConfig', d.T.object)]),
    withDataSecurityConfig(DataSecurityConfig): {
      assert std.isObject(DataSecurityConfig) : 'DataSecurityConfig must be a object',
      Properties+::: { DataSecurityConfig: DataSecurityConfig },
    },
    '#withModelType': d.fn('`withModelType` ModelType ', [d.arg('ModelType', d.T.string)]),
    withModelType(ModelType): {
      assert std.isString(ModelType) : 'ModelType must be a string',
      assert ModelType == 'DOCUMENT_CLASSIFIER' || ModelType == 'ENTITY_RECOGNIZER' : "ModelType must be either 'DOCUMENT_CLASSIFIER' or 'ENTITY_RECOGNIZER'",
      Properties+::: { ModelType: ModelType },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withTaskConfig': d.fn('`withTaskConfig` TaskConfig ', [d.arg('TaskConfig', d.T.object)]),
    withTaskConfig(TaskConfig): {
      assert std.isObject(TaskConfig) : 'TaskConfig must be a object',
      Properties+::: { TaskConfig: TaskConfig },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
  },
}
