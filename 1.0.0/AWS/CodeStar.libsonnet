local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  GitHubRepository: {
    '#': d.pkg(
      name='GitHubRepository',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/CodeStar.libsonnet',
      help='Resource Type definition for AWS::CodeStar::GitHubRepository',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::CodeStar::GitHubRepository Resource
        * RepositoryName 
        * RepositoryOwner 
      |||,
      args=[
        d.arg('RepositoryName', 'd.T.string'),
        d.arg('RepositoryOwner', 'd.T.string'),
      ]
    ),
    new(
      RepositoryName,
      RepositoryOwner,
    ): {
      local base = self,
      Properties: {
        assert std.isString(RepositoryName) : 'RepositoryName must be a string',
        RepositoryName: RepositoryName,
        assert std.isString(RepositoryOwner) : 'RepositoryOwner must be a string',
        RepositoryOwner: RepositoryOwner,
      },
      DependsOn:: [],
      Type: 'AWS::CodeStar::GitHubRepository',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withEnableIssues': d.fn('`withEnableIssues` EnableIssues ', [d.arg('EnableIssues', d.T.boolean)]),
    withEnableIssues(EnableIssues): {
      assert std.isBoolean(EnableIssues) : 'EnableIssues must be a boolean',
      Properties+::: { EnableIssues: EnableIssues },
    },
    '#withConnectionArn': d.fn('`withConnectionArn` ConnectionArn ', [d.arg('ConnectionArn', d.T.string)]),
    withConnectionArn(ConnectionArn): {
      assert std.isString(ConnectionArn) : 'ConnectionArn must be a string',
      Properties+::: { ConnectionArn: ConnectionArn },
    },
    '#withRepositoryAccessToken': d.fn('`withRepositoryAccessToken` RepositoryAccessToken ', [d.arg('RepositoryAccessToken', d.T.string)]),
    withRepositoryAccessToken(RepositoryAccessToken): {
      assert std.isString(RepositoryAccessToken) : 'RepositoryAccessToken must be a string',
      Properties+::: { RepositoryAccessToken: RepositoryAccessToken },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withIsPrivate': d.fn('`withIsPrivate` IsPrivate ', [d.arg('IsPrivate', d.T.boolean)]),
    withIsPrivate(IsPrivate): {
      assert std.isBoolean(IsPrivate) : 'IsPrivate must be a boolean',
      Properties+::: { IsPrivate: IsPrivate },
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
  },
}
