local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  ResourcePolicy: {
    '#': d.pkg(
      name='ResourcePolicy',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/SecretsManager.libsonnet',
      help='Resource Type definition for AWS::SecretsManager::ResourcePolicy',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::SecretsManager::ResourcePolicy Resource
        * ResourcePolicy A JSON-formatted string for an AWS resource-based policy.
        * SecretId The ARN or name of the secret to attach the resource-based policy.
      |||,
      args=[
        d.arg('ResourcePolicy', ''),
        d.arg('SecretId', 'd.T.string'),
      ]
    ),
    new(
      ResourcePolicy,
      SecretId,
    ): {
      local base = self,
      Properties: {
        // Type: string,object
        ResourcePolicy: ResourcePolicy,
        assert std.isString(SecretId) : 'SecretId must be a string',
        SecretId: SecretId,
      },
      DependsOn:: [],
      Type: 'AWS::SecretsManager::ResourcePolicy',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withBlockPublicPolicy': d.fn('`withBlockPublicPolicy` BlockPublicPolicy ', [d.arg('BlockPublicPolicy', d.T.boolean)]),
    withBlockPublicPolicy(BlockPublicPolicy): {
      assert std.isBoolean(BlockPublicPolicy) : 'BlockPublicPolicy must be a boolean',
      Properties+::: { BlockPublicPolicy: BlockPublicPolicy },
    },
  },
  RotationSchedule: {
    '#': d.pkg(
      name='RotationSchedule',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/SecretsManager.libsonnet',
      help='Resource Type definition for AWS::SecretsManager::RotationSchedule',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::SecretsManager::RotationSchedule Resource
        * SecretId The ARN or name of the secret to rotate.
      |||,
      args=[
        d.arg('SecretId', 'd.T.string'),
      ]
    ),
    new(
      SecretId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(SecretId) : 'SecretId must be a string',
        SecretId: SecretId,
      },
      DependsOn:: [],
      Type: 'AWS::SecretsManager::RotationSchedule',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withHostedRotationLambda': d.fn('`withHostedRotationLambda` HostedRotationLambda ', [d.arg('HostedRotationLambda', d.T.object)]),
    withHostedRotationLambda(HostedRotationLambda): {
      assert std.isObject(HostedRotationLambda) : 'HostedRotationLambda must be a object',
      Properties+::: { HostedRotationLambda: HostedRotationLambda },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withRotateImmediatelyOnUpdate': d.fn('`withRotateImmediatelyOnUpdate` RotateImmediatelyOnUpdate ', [d.arg('RotateImmediatelyOnUpdate', d.T.boolean)]),
    withRotateImmediatelyOnUpdate(RotateImmediatelyOnUpdate): {
      assert std.isBoolean(RotateImmediatelyOnUpdate) : 'RotateImmediatelyOnUpdate must be a boolean',
      Properties+::: { RotateImmediatelyOnUpdate: RotateImmediatelyOnUpdate },
    },
    '#withRotationLambdaARN': d.fn('`withRotationLambdaARN` RotationLambdaARN ', [d.arg('RotationLambdaARN', d.T.string)]),
    withRotationLambdaARN(RotationLambdaARN): {
      assert std.isString(RotationLambdaARN) : 'RotationLambdaARN must be a string',
      Properties+::: { RotationLambdaARN: RotationLambdaARN },
    },
    '#withRotationRules': d.fn('`withRotationRules` RotationRules ', [d.arg('RotationRules', d.T.object)]),
    withRotationRules(RotationRules): {
      assert std.isObject(RotationRules) : 'RotationRules must be a object',
      Properties+::: { RotationRules: RotationRules },
    },
  },
  Secret: {
    '#': d.pkg(
      name='Secret',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/SecretsManager.libsonnet',
      help='Creates a new secret. A *secret* can be a password, a set of credentials such as a user name and password, an OAuth token, or other secret information that you store in an encrypted form in Secrets Manager. For RDS master user credentials, see [AWS::RDS::DBCluster MasterUserSecret](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbcluster-masterusersecret.html). For RS admin user credentials, see [AWS::Redshift::Cluster](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-cluster.html). To retrieve a secret in a CFNshort template, use a *dynamic reference*. For more information, see [Retrieve a secret in an resource](https://docs.aws.amazon.com/secretsmanager/latest/userguide/cfn-example_reference-secret.html). For information about creating a secret in the console, see [Create a secret](https://docs.aws.amazon.com/secretsmanager/latest/userguide/manage_create-basic-secret.html). For information about creating a secret using the CLI or SDK, see [CreateSecret](https://docs.aws.amazon.com/secretsmanager/latest/apireference/API_CreateSecret.html). For information about retrieving a secret in code, see [Retrieve secrets from Secrets Manager](https://docs.aws.amazon.com/secretsmanager/latest/userguide/retrieving-secrets.html).',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::SecretsManager::Secret Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::SecretsManager::Secret',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withKmsKeyId': d.fn('`withKmsKeyId` KmsKeyId ', [d.arg('KmsKeyId', d.T.string)]),
    withKmsKeyId(KmsKeyId): {
      assert std.isString(KmsKeyId) : 'KmsKeyId must be a string',
      Properties+::: { KmsKeyId: KmsKeyId },
    },
    '#withSecretString': d.fn('`withSecretString` SecretString ', [d.arg('SecretString', d.T.string)]),
    withSecretString(SecretString): {
      assert std.isString(SecretString) : 'SecretString must be a string',
      Properties+::: { SecretString: SecretString },
    },
    '#withGenerateSecretString': d.fn('`withGenerateSecretString` GenerateSecretString ', [d.arg('GenerateSecretString', d.T.object)]),
    withGenerateSecretString(GenerateSecretString): {
      assert std.isObject(GenerateSecretString) : 'GenerateSecretString must be a object',
      Properties+::: { GenerateSecretString: GenerateSecretString },
    },
    '#withReplicaRegions': d.fn('`withReplicaRegions` ReplicaRegions ', [d.arg('ReplicaRegions', d.T.array)]),
    withReplicaRegions(ReplicaRegions): {
      assert std.isArray(ReplicaRegions) : 'ReplicaRegions must be a array',
      Properties+::: { ReplicaRegions: ReplicaRegions },
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
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
  },
  SecretTargetAttachment: {
    '#': d.pkg(
      name='SecretTargetAttachment',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/SecretsManager.libsonnet',
      help='Resource Type definition for AWS::SecretsManager::SecretTargetAttachment',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::SecretsManager::SecretTargetAttachment Resource
        * TargetType 
        * TargetId 
        * SecretId 
      |||,
      args=[
        d.arg('TargetType', 'd.T.string'),
        d.arg('TargetId', 'd.T.string'),
        d.arg('SecretId', 'd.T.string'),
      ]
    ),
    new(
      TargetType,
      TargetId,
      SecretId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(TargetType) : 'TargetType must be a string',
        TargetType: TargetType,
        assert std.isString(TargetId) : 'TargetId must be a string',
        TargetId: TargetId,
        assert std.isString(SecretId) : 'SecretId must be a string',
        SecretId: SecretId,
      },
      DependsOn:: [],
      Type: 'AWS::SecretsManager::SecretTargetAttachment',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
  },
}
