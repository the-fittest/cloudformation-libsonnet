local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  CisScanConfiguration: {
    '#': d.pkg(
      name='CisScanConfiguration',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/InspectorV2.libsonnet',
      help='CIS Scan Configuration resource schema',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::InspectorV2::CisScanConfiguration Resource
        * ScanName Name of the scan
        * SecurityLevel 
        * Schedule 
        * Targets 
      |||,
      args=[
        d.arg('ScanName', 'd.T.string'),
        d.arg('SecurityLevel', 'd.T.string'),
        d.arg('Schedule', ''),
        d.arg('Targets', ''),
      ]
    ),
    new(
      ScanName,
      SecurityLevel,
      Schedule,
      Targets,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ScanName) : 'ScanName must be a string',
        ScanName: ScanName,
        assert std.isString(SecurityLevel) : 'SecurityLevel must be a string',
        SecurityLevel: SecurityLevel,
        // Type: undefined
        Schedule: Schedule,
        // Type: undefined
        Targets: Targets,
      },
      DependsOn:: [],
      Type: 'AWS::InspectorV2::CisScanConfiguration',
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
  },
  Filter: {
    '#': d.pkg(
      name='Filter',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/InspectorV2.libsonnet',
      help='Inspector Filter resource schema',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::InspectorV2::Filter Resource
        * Name Findings filter name.
        * FilterCriteria Findings filter criteria.
        * FilterAction Findings filter action.
      |||,
      args=[
        d.arg('Name', 'd.T.string'),
        d.arg('FilterCriteria', 'd.T.object'),
        d.arg('FilterAction', 'd.T.string'),
      ]
    ),
    new(
      Name,
      FilterCriteria,
      FilterAction,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isObject(FilterCriteria) : 'FilterCriteria must be a object',
        FilterCriteria: FilterCriteria,
        assert std.isString(FilterAction) : 'FilterAction must be a string',
        FilterAction: FilterAction,
      },
      DependsOn:: [],
      Type: 'AWS::InspectorV2::Filter',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
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
  },
}
