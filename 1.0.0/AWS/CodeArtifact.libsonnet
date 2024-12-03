local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  Domain: {
    '#': d.pkg(
      name='Domain',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/CodeArtifact.libsonnet',
      help='The resource schema to create a CodeArtifact domain.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::CodeArtifact::Domain Resource
        * DomainName The name of the domain.
      |||,
      args=[
        d.arg('DomainName', 'd.T.string'),
      ]
    ),
    new(
      DomainName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(DomainName) : 'DomainName must be a string',
        DomainName: DomainName,
      },
      DependsOn:: [],
      Type: 'AWS::CodeArtifact::Domain',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
    '#withOwner': d.fn('`withOwner` Owner ', [d.arg('Owner', d.T.string)]),
    withOwner(Owner): {
      assert std.isString(Owner) : 'Owner must be a string',
      Properties+::: { Owner: Owner },
    },
    '#withEncryptionKey': d.fn('`withEncryptionKey` EncryptionKey ', [d.arg('EncryptionKey', d.T.string)]),
    withEncryptionKey(EncryptionKey): {
      assert std.isString(EncryptionKey) : 'EncryptionKey must be a string',
      Properties+::: { EncryptionKey: EncryptionKey },
    },
    '#withPermissionsPolicyDocument': d.fn('`withPermissionsPolicyDocument` PermissionsPolicyDocument ', [d.arg('PermissionsPolicyDocument', d.T.object)]),
    withPermissionsPolicyDocument(PermissionsPolicyDocument): {
      assert std.isObject(PermissionsPolicyDocument) : 'PermissionsPolicyDocument must be a object',
      Properties+::: { PermissionsPolicyDocument: PermissionsPolicyDocument },
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
  },
  PackageGroup: {
    '#': d.pkg(
      name='PackageGroup',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/CodeArtifact.libsonnet',
      help='The resource schema to create a CodeArtifact package group.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::CodeArtifact::PackageGroup Resource
        * Pattern The package group pattern that is used to gather packages.
        * DomainName The name of the domain that contains the package group.
      |||,
      args=[
        d.arg('Pattern', 'd.T.string'),
        d.arg('DomainName', 'd.T.string'),
      ]
    ),
    new(
      Pattern,
      DomainName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Pattern) : 'Pattern must be a string',
        Pattern: Pattern,
        assert std.isString(DomainName) : 'DomainName must be a string',
        DomainName: DomainName,
      },
      DependsOn:: [],
      Type: 'AWS::CodeArtifact::PackageGroup',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDomainOwner': d.fn('`withDomainOwner` DomainOwner ', [d.arg('DomainOwner', d.T.string)]),
    withDomainOwner(DomainOwner): {
      assert std.isString(DomainOwner) : 'DomainOwner must be a string',
      Properties+::: { DomainOwner: DomainOwner },
    },
    '#withContactInfo': d.fn('`withContactInfo` ContactInfo ', [d.arg('ContactInfo', d.T.string)]),
    withContactInfo(ContactInfo): {
      assert std.isString(ContactInfo) : 'ContactInfo must be a string',
      Properties+::: { ContactInfo: ContactInfo },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withOriginConfiguration': d.fn('`withOriginConfiguration` OriginConfiguration ', [d.arg('OriginConfiguration', d.T.object)]),
    withOriginConfiguration(OriginConfiguration): {
      assert std.isObject(OriginConfiguration) : 'OriginConfiguration must be a object',
      Properties+::: { OriginConfiguration: OriginConfiguration },
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
  },
  Repository: {
    '#': d.pkg(
      name='Repository',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/CodeArtifact.libsonnet',
      help='The resource schema to create a CodeArtifact repository.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::CodeArtifact::Repository Resource
        * RepositoryName The name of the repository.
        * DomainName The name of the domain that contains the repository.
      |||,
      args=[
        d.arg('RepositoryName', 'd.T.string'),
        d.arg('DomainName', 'd.T.string'),
      ]
    ),
    new(
      RepositoryName,
      DomainName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(RepositoryName) : 'RepositoryName must be a string',
        RepositoryName: RepositoryName,
        assert std.isString(DomainName) : 'DomainName must be a string',
        DomainName: DomainName,
      },
      DependsOn:: [],
      Type: 'AWS::CodeArtifact::Repository',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
    '#withDomainOwner': d.fn('`withDomainOwner` DomainOwner ', [d.arg('DomainOwner', d.T.string)]),
    withDomainOwner(DomainOwner): {
      assert std.isString(DomainOwner) : 'DomainOwner must be a string',
      Properties+::: { DomainOwner: DomainOwner },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withExternalConnections': d.fn('`withExternalConnections` ExternalConnections ', [d.arg('ExternalConnections', d.T.array)]),
    withExternalConnections(ExternalConnections): {
      assert std.isArray(ExternalConnections) : 'ExternalConnections must be a array',
      Properties+::: { ExternalConnections: ExternalConnections },
    },
    '#withUpstreams': d.fn('`withUpstreams` Upstreams ', [d.arg('Upstreams', d.T.array)]),
    withUpstreams(Upstreams): {
      assert std.isArray(Upstreams) : 'Upstreams must be a array',
      Properties+::: { Upstreams: Upstreams },
    },
    '#withPermissionsPolicyDocument': d.fn('`withPermissionsPolicyDocument` PermissionsPolicyDocument ', [d.arg('PermissionsPolicyDocument', d.T.object)]),
    withPermissionsPolicyDocument(PermissionsPolicyDocument): {
      assert std.isObject(PermissionsPolicyDocument) : 'PermissionsPolicyDocument must be a object',
      Properties+::: { PermissionsPolicyDocument: PermissionsPolicyDocument },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
}
