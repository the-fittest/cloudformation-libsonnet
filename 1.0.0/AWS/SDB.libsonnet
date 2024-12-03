local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  Domain: {
    '#': d.pkg(
      name='Domain',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/SDB.libsonnet',
      help='Resource Type definition for AWS::SDB::Domain',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::SDB::Domain Resource
      |||,
    ),
    new(): {
      local base = self,
      Properties:: {},
      DependsOn:: [],
      Type: 'AWS::SDB::Domain',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
  },
}
