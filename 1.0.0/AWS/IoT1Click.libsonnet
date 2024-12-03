local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  Device: {
    '#': d.pkg(
      name='Device',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/IoT1Click.libsonnet',
      help='Resource Type definition for AWS::IoT1Click::Device',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::IoT1Click::Device Resource
        * Enabled 
        * DeviceId 
      |||,
      args=[
        d.arg('Enabled', 'd.T.boolean'),
        d.arg('DeviceId', 'd.T.string'),
      ]
    ),
    new(
      Enabled,
      DeviceId,
    ): {
      local base = self,
      Properties: {
        assert std.isBoolean(Enabled) : 'Enabled must be a boolean',
        Enabled: Enabled,
        assert std.isString(DeviceId) : 'DeviceId must be a string',
        DeviceId: DeviceId,
      },
      DependsOn:: [],
      Type: 'AWS::IoT1Click::Device',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
  },
  Placement: {
    '#': d.pkg(
      name='Placement',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/IoT1Click.libsonnet',
      help='Resource Type definition for AWS::IoT1Click::Placement',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::IoT1Click::Placement Resource
        * ProjectName 
      |||,
      args=[
        d.arg('ProjectName', 'd.T.string'),
      ]
    ),
    new(
      ProjectName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ProjectName) : 'ProjectName must be a string',
        ProjectName: ProjectName,
      },
      DependsOn:: [],
      Type: 'AWS::IoT1Click::Placement',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withPlacementName': d.fn('`withPlacementName` PlacementName ', [d.arg('PlacementName', d.T.string)]),
    withPlacementName(PlacementName): {
      assert std.isString(PlacementName) : 'PlacementName must be a string',
      Properties+::: { PlacementName: PlacementName },
    },
    '#withAssociatedDevices': d.fn('`withAssociatedDevices` AssociatedDevices ', [d.arg('AssociatedDevices', d.T.object)]),
    withAssociatedDevices(AssociatedDevices): {
      assert std.isObject(AssociatedDevices) : 'AssociatedDevices must be a object',
      Properties+::: { AssociatedDevices: AssociatedDevices },
    },
    '#withAttributes': d.fn('`withAttributes` Attributes ', [d.arg('Attributes', d.T.object)]),
    withAttributes(Attributes): {
      assert std.isObject(Attributes) : 'Attributes must be a object',
      Properties+::: { Attributes: Attributes },
    },
  },
  Project: {
    '#': d.pkg(
      name='Project',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/IoT1Click.libsonnet',
      help='Resource Type definition for AWS::IoT1Click::Project',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::IoT1Click::Project Resource
        * PlacementTemplate 
      |||,
      args=[
        d.arg('PlacementTemplate', 'd.T.object'),
      ]
    ),
    new(
      PlacementTemplate,
    ): {
      local base = self,
      Properties: {
        assert std.isObject(PlacementTemplate) : 'PlacementTemplate must be a object',
        PlacementTemplate: PlacementTemplate,
      },
      DependsOn:: [],
      Type: 'AWS::IoT1Click::Project',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withProjectName': d.fn('`withProjectName` ProjectName ', [d.arg('ProjectName', d.T.string)]),
    withProjectName(ProjectName): {
      assert std.isString(ProjectName) : 'ProjectName must be a string',
      Properties+::: { ProjectName: ProjectName },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
  },
}
