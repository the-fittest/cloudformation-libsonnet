local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  DefaultViewAssociation: {
    '#': d.pkg(
      name='DefaultViewAssociation',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ResourceExplorer2.libsonnet',
      help='Definition of AWS::ResourceExplorer2::DefaultViewAssociation Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ResourceExplorer2::DefaultViewAssociation Resource
        * ViewArn 
      |||,
      args=[
        d.arg('ViewArn', 'd.T.string'),
      ]
    ),
    new(
      ViewArn,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ViewArn) : 'ViewArn must be a string',
        ViewArn: ViewArn,
      },
      DependsOn:: [],
      Type: 'AWS::ResourceExplorer2::DefaultViewAssociation',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withAssociatedAwsPrincipal': d.fn('`withAssociatedAwsPrincipal` AssociatedAwsPrincipal ', [d.arg('AssociatedAwsPrincipal', d.T.string)]),
    withAssociatedAwsPrincipal(AssociatedAwsPrincipal): {
      assert std.isString(AssociatedAwsPrincipal) : 'AssociatedAwsPrincipal must be a string',
      Properties+::: { AssociatedAwsPrincipal: AssociatedAwsPrincipal },
    },
  },
  Index: {
    '#': d.pkg(
      name='Index',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ResourceExplorer2.libsonnet',
      help='Definition of AWS::ResourceExplorer2::Index Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ResourceExplorer2::Index Resource
        * Type 
      |||,
      args=[
        d.arg('Type', 'd.T.string'),
      ]
    ),
    new(
      Type,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Type) : 'Type must be a string',
        Type: Type,
      },
      DependsOn:: [],
      Type: 'AWS::ResourceExplorer2::Index',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.object)]),
    withTags(Tags): {
      assert std.isObject(Tags) : 'Tags must be a object',
      Properties+::: { Tags: Tags },
    },
    '#withIndexState': d.fn('`withIndexState` IndexState ', [d.arg('IndexState', d.T.string)]),
    withIndexState(IndexState): {
      assert std.isString(IndexState) : 'IndexState must be a string',
      Properties+::: { IndexState: IndexState },
    },
  },
  View: {
    '#': d.pkg(
      name='View',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ResourceExplorer2.libsonnet',
      help='Definition of AWS::ResourceExplorer2::View Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ResourceExplorer2::View Resource
        * ViewName 
      |||,
      args=[
        d.arg('ViewName', 'd.T.string'),
      ]
    ),
    new(
      ViewName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ViewName) : 'ViewName must be a string',
        ViewName: ViewName,
      },
      DependsOn:: [],
      Type: 'AWS::ResourceExplorer2::View',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withFilters': d.fn('`withFilters` Filters ', [d.arg('Filters', d.T.object)]),
    withFilters(Filters): {
      assert std.isObject(Filters) : 'Filters must be a object',
      Properties+::: { Filters: Filters },
    },
    '#withIncludedProperties': d.fn('`withIncludedProperties` IncludedProperties ', [d.arg('IncludedProperties', d.T.array)]),
    withIncludedProperties(IncludedProperties): {
      assert std.isArray(IncludedProperties) : 'IncludedProperties must be a array',
      Properties+::: { IncludedProperties: IncludedProperties },
    },
    '#withScope': d.fn('`withScope` Scope ', [d.arg('Scope', d.T.string)]),
    withScope(Scope): {
      assert std.isString(Scope) : 'Scope must be a string',
      Properties+::: { Scope: Scope },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.object)]),
    withTags(Tags): {
      assert std.isObject(Tags) : 'Tags must be a object',
      Properties+::: { Tags: Tags },
    },
    '#withViewArn': d.fn('`withViewArn` ViewArn ', [d.arg('ViewArn', d.T.string)]),
    withViewArn(ViewArn): {
      assert std.isString(ViewArn) : 'ViewArn must be a string',
      Properties+::: { ViewArn: ViewArn },
    },
  },
}
