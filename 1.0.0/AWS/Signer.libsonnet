local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  ProfilePermission: {
    '#': d.pkg(
      name='ProfilePermission',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Signer.libsonnet',
      help='An example resource schema demonstrating some basic constructs and validation rules.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Signer::ProfilePermission Resource
        * ProfileName 
        * Action 
        * Principal 
        * StatementId 
      |||,
      args=[
        d.arg('ProfileName', 'd.T.string'),
        d.arg('Action', 'd.T.string'),
        d.arg('Principal', 'd.T.string'),
        d.arg('StatementId', 'd.T.string'),
      ]
    ),
    new(
      ProfileName,
      Action,
      Principal,
      StatementId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ProfileName) : 'ProfileName must be a string',
        ProfileName: ProfileName,
        assert std.isString(Action) : 'Action must be a string',
        Action: Action,
        assert std.isString(Principal) : 'Principal must be a string',
        Principal: Principal,
        assert std.isString(StatementId) : 'StatementId must be a string',
        StatementId: StatementId,
      },
      DependsOn:: [],
      Type: 'AWS::Signer::ProfilePermission',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withProfileVersion': d.fn('`withProfileVersion` ProfileVersion ', [d.arg('ProfileVersion', d.T.string)]),
    withProfileVersion(ProfileVersion): {
      assert std.isString(ProfileVersion) : 'ProfileVersion must be a string',
      Properties+::: { ProfileVersion: ProfileVersion },
    },
  },
  SigningProfile: {
    '#': d.pkg(
      name='SigningProfile',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Signer.libsonnet',
      help='A signing profile is a signing template that can be used to carry out a pre-defined signing job.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Signer::SigningProfile Resource
        * PlatformId The ID of the target signing platform.
      |||,
      args=[
        d.arg('PlatformId', 'd.T.string'),
      ]
    ),
    new(
      PlatformId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(PlatformId) : 'PlatformId must be a string',
        PlatformId: PlatformId,
      },
      DependsOn:: [],
      Type: 'AWS::Signer::SigningProfile',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withProfileName': d.fn('`withProfileName` ProfileName ', [d.arg('ProfileName', d.T.string)]),
    withProfileName(ProfileName): {
      assert std.isString(ProfileName) : 'ProfileName must be a string',
      Properties+::: { ProfileName: ProfileName },
    },
    '#withProfileVersion': d.fn('`withProfileVersion` ProfileVersion ', [d.arg('ProfileVersion', d.T.string)]),
    withProfileVersion(ProfileVersion): {
      assert std.isString(ProfileVersion) : 'ProfileVersion must be a string',
      Properties+::: { ProfileVersion: ProfileVersion },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withProfileVersionArn': d.fn('`withProfileVersionArn` ProfileVersionArn ', [d.arg('ProfileVersionArn', d.T.string)]),
    withProfileVersionArn(ProfileVersionArn): {
      assert std.isString(ProfileVersionArn) : 'ProfileVersionArn must be a string',
      Properties+::: { ProfileVersionArn: ProfileVersionArn },
    },
    '#withSignatureValidityPeriod': d.fn('`withSignatureValidityPeriod` SignatureValidityPeriod ', [d.arg('SignatureValidityPeriod', d.T.object)]),
    withSignatureValidityPeriod(SignatureValidityPeriod): {
      assert std.isObject(SignatureValidityPeriod) : 'SignatureValidityPeriod must be a object',
      Properties+::: { SignatureValidityPeriod: SignatureValidityPeriod },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
}
