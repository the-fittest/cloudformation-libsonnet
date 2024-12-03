local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  AccessPoint: {
    '#': d.pkg(
      name='AccessPoint',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/S3ObjectLambda.libsonnet',
      help='The AWS::S3ObjectLambda::AccessPoint resource is an Amazon S3ObjectLambda resource type that you can use to add computation to S3 actions',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::S3ObjectLambda::AccessPoint Resource
        * ObjectLambdaConfiguration The Object lambda Access Point Configuration that configures transformations to be applied on the objects on specified S3 Actions
      |||,
      args=[
        d.arg('ObjectLambdaConfiguration', 'd.T.object'),
      ]
    ),
    new(
      ObjectLambdaConfiguration,
    ): {
      local base = self,
      Properties: {
        assert std.isObject(ObjectLambdaConfiguration) : 'ObjectLambdaConfiguration must be a object',
        ObjectLambdaConfiguration: ObjectLambdaConfiguration,
      },
      DependsOn:: [],
      Type: 'AWS::S3ObjectLambda::AccessPoint',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
    '#withAlias': d.fn('`withAlias` Alias ', [d.arg('Alias', d.T.object)]),
    withAlias(Alias): {
      assert std.isObject(Alias) : 'Alias must be a object',
      Properties+::: { Alias: Alias },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withCreationDate': d.fn('`withCreationDate` CreationDate ', [d.arg('CreationDate', d.T.string)]),
    withCreationDate(CreationDate): {
      assert std.isString(CreationDate) : 'CreationDate must be a string',
      Properties+::: { CreationDate: CreationDate },
    },
    '#withPublicAccessBlockConfiguration': d.fn('`withPublicAccessBlockConfiguration` PublicAccessBlockConfiguration ', [d.arg('PublicAccessBlockConfiguration', d.T.object)]),
    withPublicAccessBlockConfiguration(PublicAccessBlockConfiguration): {
      assert std.isObject(PublicAccessBlockConfiguration) : 'PublicAccessBlockConfiguration must be a object',
      Properties+::: { PublicAccessBlockConfiguration: PublicAccessBlockConfiguration },
    },
    '#withPolicyStatus': d.fn('`withPolicyStatus` PolicyStatus ', [d.arg('PolicyStatus', d.T.object)]),
    withPolicyStatus(PolicyStatus): {
      assert std.isObject(PolicyStatus) : 'PolicyStatus must be a object',
      Properties+::: { PolicyStatus: PolicyStatus },
    },
  },
  AccessPointPolicy: {
    '#': d.pkg(
      name='AccessPointPolicy',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/S3ObjectLambda.libsonnet',
      help='AWS::S3ObjectLambda::AccessPointPolicy resource is an Amazon S3ObjectLambda policy type that you can use to control permissions for your S3ObjectLambda',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::S3ObjectLambda::AccessPointPolicy Resource
        * ObjectLambdaAccessPoint The name of the Amazon S3 ObjectLambdaAccessPoint to which the policy applies.
        * PolicyDocument A policy document containing permissions to add to the specified ObjectLambdaAccessPoint. For more information, see Access Policy Language Overview (https://docs.aws.amazon.com/AmazonS3/latest/dev/access-policy-language-overview.html) in the Amazon Simple Storage Service Developer Guide. 
      |||,
      args=[
        d.arg('ObjectLambdaAccessPoint', 'd.T.string'),
        d.arg('PolicyDocument', 'd.T.object'),
      ]
    ),
    new(
      ObjectLambdaAccessPoint,
      PolicyDocument,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ObjectLambdaAccessPoint) : 'ObjectLambdaAccessPoint must be a string',
        ObjectLambdaAccessPoint: ObjectLambdaAccessPoint,
        assert std.isObject(PolicyDocument) : 'PolicyDocument must be a object',
        PolicyDocument: PolicyDocument,
      },
      DependsOn:: [],
      Type: 'AWS::S3ObjectLambda::AccessPointPolicy',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
  },
}
