local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  AppMonitor: {
    '#': d.pkg(
      name='AppMonitor',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/RUM.libsonnet',
      help='Resource Type definition for AWS::RUM::AppMonitor',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::RUM::AppMonitor Resource
        * Name A name for the app monitor
        * Domain The top-level internet domain name for which your application has administrative authority.
      |||,
      args=[
        d.arg('Name', 'd.T.string'),
        d.arg('Domain', 'd.T.string'),
      ]
    ),
    new(
      Name,
      Domain,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isString(Domain) : 'Domain must be a string',
        Domain: Domain,
      },
      DependsOn:: [],
      Type: 'AWS::RUM::AppMonitor',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withCwLogEnabled': d.fn('`withCwLogEnabled` CwLogEnabled ', [d.arg('CwLogEnabled', d.T.boolean)]),
    withCwLogEnabled(CwLogEnabled): {
      assert std.isBoolean(CwLogEnabled) : 'CwLogEnabled must be a boolean',
      Properties+::: { CwLogEnabled: CwLogEnabled },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withAppMonitorConfiguration': d.fn('`withAppMonitorConfiguration` AppMonitorConfiguration ', [d.arg('AppMonitorConfiguration', d.T.object)]),
    withAppMonitorConfiguration(AppMonitorConfiguration): {
      assert std.isObject(AppMonitorConfiguration) : 'AppMonitorConfiguration must be a object',
      Properties+::: { AppMonitorConfiguration: AppMonitorConfiguration },
    },
    '#withCustomEvents': d.fn('`withCustomEvents` CustomEvents ', [d.arg('CustomEvents', d.T.object)]),
    withCustomEvents(CustomEvents): {
      assert std.isObject(CustomEvents) : 'CustomEvents must be a object',
      Properties+::: { CustomEvents: CustomEvents },
    },
  },
}
