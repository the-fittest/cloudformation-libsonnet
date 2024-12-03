local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  RepositoryAssociation: {
    '#': d.pkg(
      name='RepositoryAssociation',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/CodeGuruReviewer.libsonnet',
      help='This resource schema represents the RepositoryAssociation resource in the Amazon CodeGuru Reviewer service.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::CodeGuruReviewer::RepositoryAssociation Resource
        * Name Name of the repository to be associated.
        * Type The type of repository to be associated.
      |||,
      args=[
        d.arg('Name', 'd.T.string'),
        d.arg('Type', 'd.T.string'),
      ]
    ),
    new(
      Name,
      Type,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isString(Type) : 'Type must be a string',
        assert Type == 'CodeCommit' || Type == 'Bitbucket' || Type == 'GitHubEnterpriseServer' || Type == 'S3Bucket' : "Type must be either 'CodeCommit' or 'Bitbucket' or 'GitHubEnterpriseServer' or 'S3Bucket'",
        Type: Type,
      },
      DependsOn:: [],
      Type: 'AWS::CodeGuruReviewer::RepositoryAssociation',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withOwner': d.fn('`withOwner` Owner ', [d.arg('Owner', d.T.string)]),
    withOwner(Owner): {
      assert std.isString(Owner) : 'Owner must be a string',
      Properties+::: { Owner: Owner },
    },
    '#withBucketName': d.fn('`withBucketName` BucketName ', [d.arg('BucketName', d.T.string)]),
    withBucketName(BucketName): {
      assert std.isString(BucketName) : 'BucketName must be a string',
      Properties+::: { BucketName: BucketName },
    },
    '#withConnectionArn': d.fn('`withConnectionArn` ConnectionArn ', [d.arg('ConnectionArn', d.T.string)]),
    withConnectionArn(ConnectionArn): {
      assert std.isString(ConnectionArn) : 'ConnectionArn must be a string',
      Properties+::: { ConnectionArn: ConnectionArn },
    },
    '#withAssociationArn': d.fn('`withAssociationArn` AssociationArn ', [d.arg('AssociationArn', d.T.string)]),
    withAssociationArn(AssociationArn): {
      assert std.isString(AssociationArn) : 'AssociationArn must be a string',
      Properties+::: { AssociationArn: AssociationArn },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
}
