local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  Discoverer: {
    '#': d.pkg(
      name='Discoverer',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EventSchemas.libsonnet',
      help='Resource Type definition for AWS::EventSchemas::Discoverer',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EventSchemas::Discoverer Resource
        * SourceArn The ARN of the event bus.
      |||,
      args=[
        d.arg('SourceArn', 'd.T.string'),
      ]
    ),
    new(
      SourceArn,
    ): {
      local base = self,
      Properties: {
        assert std.isString(SourceArn) : 'SourceArn must be a string',
        SourceArn: SourceArn,
      },
      DependsOn:: [],
      Type: 'AWS::EventSchemas::Discoverer',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDiscovererArn': d.fn('`withDiscovererArn` DiscovererArn ', [d.arg('DiscovererArn', d.T.string)]),
    withDiscovererArn(DiscovererArn): {
      assert std.isString(DiscovererArn) : 'DiscovererArn must be a string',
      Properties+::: { DiscovererArn: DiscovererArn },
    },
    '#withDiscovererId': d.fn('`withDiscovererId` DiscovererId ', [d.arg('DiscovererId', d.T.string)]),
    withDiscovererId(DiscovererId): {
      assert std.isString(DiscovererId) : 'DiscovererId must be a string',
      Properties+::: { DiscovererId: DiscovererId },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withCrossAccount': d.fn('`withCrossAccount` CrossAccount ', [d.arg('CrossAccount', d.T.boolean)]),
    withCrossAccount(CrossAccount): {
      assert std.isBoolean(CrossAccount) : 'CrossAccount must be a boolean',
      Properties+::: { CrossAccount: CrossAccount },
    },
    '#withState': d.fn('`withState` State ', [d.arg('State', d.T.string)]),
    withState(State): {
      assert std.isString(State) : 'State must be a string',
      Properties+::: { State: State },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  Registry: {
    '#': d.pkg(
      name='Registry',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EventSchemas.libsonnet',
      help='Resource Type definition for AWS::EventSchemas::Registry',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EventSchemas::Registry Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::EventSchemas::Registry',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withRegistryName': d.fn('`withRegistryName` RegistryName ', [d.arg('RegistryName', d.T.string)]),
    withRegistryName(RegistryName): {
      assert std.isString(RegistryName) : 'RegistryName must be a string',
      Properties+::: { RegistryName: RegistryName },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withRegistryArn': d.fn('`withRegistryArn` RegistryArn ', [d.arg('RegistryArn', d.T.string)]),
    withRegistryArn(RegistryArn): {
      assert std.isString(RegistryArn) : 'RegistryArn must be a string',
      Properties+::: { RegistryArn: RegistryArn },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  RegistryPolicy: {
    '#': d.pkg(
      name='RegistryPolicy',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EventSchemas.libsonnet',
      help='Resource Type definition for AWS::EventSchemas::RegistryPolicy',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EventSchemas::RegistryPolicy Resource
        * RegistryName 
        * Policy 
      |||,
      args=[
        d.arg('RegistryName', 'd.T.string'),
        d.arg('Policy', 'd.T.object'),
      ]
    ),
    new(
      RegistryName,
      Policy,
    ): {
      local base = self,
      Properties: {
        assert std.isString(RegistryName) : 'RegistryName must be a string',
        RegistryName: RegistryName,
        assert std.isObject(Policy) : 'Policy must be a object',
        Policy: Policy,
      },
      DependsOn:: [],
      Type: 'AWS::EventSchemas::RegistryPolicy',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withRevisionId': d.fn('`withRevisionId` RevisionId ', [d.arg('RevisionId', d.T.string)]),
    withRevisionId(RevisionId): {
      assert std.isString(RevisionId) : 'RevisionId must be a string',
      Properties+::: { RevisionId: RevisionId },
    },
  },
  Schema: {
    '#': d.pkg(
      name='Schema',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/EventSchemas.libsonnet',
      help='Resource Type definition for AWS::EventSchemas::Schema',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::EventSchemas::Schema Resource
        * Type The type of schema. Valid types include OpenApi3 and JSONSchemaDraft4.
        * Content The source of the schema definition.
        * RegistryName The name of the schema registry.
      |||,
      args=[
        d.arg('Type', 'd.T.string'),
        d.arg('Content', 'd.T.string'),
        d.arg('RegistryName', 'd.T.string'),
      ]
    ),
    new(
      Type,
      Content,
      RegistryName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Type) : 'Type must be a string',
        Type: Type,
        assert std.isString(Content) : 'Content must be a string',
        Content: Content,
        assert std.isString(RegistryName) : 'RegistryName must be a string',
        RegistryName: RegistryName,
      },
      DependsOn:: [],
      Type: 'AWS::EventSchemas::Schema',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withSchemaVersion': d.fn('`withSchemaVersion` SchemaVersion ', [d.arg('SchemaVersion', d.T.string)]),
    withSchemaVersion(SchemaVersion): {
      assert std.isString(SchemaVersion) : 'SchemaVersion must be a string',
      Properties+::: { SchemaVersion: SchemaVersion },
    },
    '#withSchemaArn': d.fn('`withSchemaArn` SchemaArn ', [d.arg('SchemaArn', d.T.string)]),
    withSchemaArn(SchemaArn): {
      assert std.isString(SchemaArn) : 'SchemaArn must be a string',
      Properties+::: { SchemaArn: SchemaArn },
    },
    '#withSchemaName': d.fn('`withSchemaName` SchemaName ', [d.arg('SchemaName', d.T.string)]),
    withSchemaName(SchemaName): {
      assert std.isString(SchemaName) : 'SchemaName must be a string',
      Properties+::: { SchemaName: SchemaName },
    },
    '#withLastModified': d.fn('`withLastModified` LastModified ', [d.arg('LastModified', d.T.string)]),
    withLastModified(LastModified): {
      assert std.isString(LastModified) : 'LastModified must be a string',
      Properties+::: { LastModified: LastModified },
    },
    '#withVersionCreatedDate': d.fn('`withVersionCreatedDate` VersionCreatedDate ', [d.arg('VersionCreatedDate', d.T.string)]),
    withVersionCreatedDate(VersionCreatedDate): {
      assert std.isString(VersionCreatedDate) : 'VersionCreatedDate must be a string',
      Properties+::: { VersionCreatedDate: VersionCreatedDate },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
}
