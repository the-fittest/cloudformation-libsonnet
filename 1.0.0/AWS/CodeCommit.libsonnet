local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  Repository: {
    '#': d.pkg(
      name='Repository',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/CodeCommit.libsonnet',
      help='Resource Type definition for AWS::CodeCommit::Repository',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::CodeCommit::Repository Resource
        * RepositoryName 
      |||,
      args=[
        d.arg('RepositoryName', 'd.T.string'),
      ]
    ),
    new(
      RepositoryName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(RepositoryName) : 'RepositoryName must be a string',
        RepositoryName: RepositoryName,
      },
      DependsOn:: [],
      Type: 'AWS::CodeCommit::Repository',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withCloneUrlHttp': d.fn('`withCloneUrlHttp` CloneUrlHttp ', [d.arg('CloneUrlHttp', d.T.string)]),
    withCloneUrlHttp(CloneUrlHttp): {
      assert std.isString(CloneUrlHttp) : 'CloneUrlHttp must be a string',
      Properties+::: { CloneUrlHttp: CloneUrlHttp },
    },
    '#withKmsKeyId': d.fn('`withKmsKeyId` KmsKeyId ', [d.arg('KmsKeyId', d.T.string)]),
    withKmsKeyId(KmsKeyId): {
      assert std.isString(KmsKeyId) : 'KmsKeyId must be a string',
      Properties+::: { KmsKeyId: KmsKeyId },
    },
    '#withCloneUrlSsh': d.fn('`withCloneUrlSsh` CloneUrlSsh ', [d.arg('CloneUrlSsh', d.T.string)]),
    withCloneUrlSsh(CloneUrlSsh): {
      assert std.isString(CloneUrlSsh) : 'CloneUrlSsh must be a string',
      Properties+::: { CloneUrlSsh: CloneUrlSsh },
    },
    '#withTriggers': d.fn('`withTriggers` Triggers ', [d.arg('Triggers', d.T.array)]),
    withTriggers(Triggers): {
      assert std.isArray(Triggers) : 'Triggers must be a array',
      Properties+::: { Triggers: Triggers },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withCode': d.fn('`withCode` Code ', [d.arg('Code', d.T.object)]),
    withCode(Code): {
      assert std.isObject(Code) : 'Code must be a object',
      Properties+::: { Code: Code },
    },
    '#withRepositoryDescription': d.fn('`withRepositoryDescription` RepositoryDescription ', [d.arg('RepositoryDescription', d.T.string)]),
    withRepositoryDescription(RepositoryDescription): {
      assert std.isString(RepositoryDescription) : 'RepositoryDescription must be a string',
      Properties+::: { RepositoryDescription: RepositoryDescription },
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
}
