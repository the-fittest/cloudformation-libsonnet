local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  Destination: {
    '#': d.pkg(
      name='Destination',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/IoTWireless.libsonnet',
      help='Destinations resource schema demonstrating some basic constructs and validation rules.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::IoTWireless::Destination Resource
        * Name Unique name of destination
        * Expression Destination expression
        * ExpressionType Must be RuleName
      |||,
      args=[
        d.arg('Name', 'd.T.string'),
        d.arg('Expression', 'd.T.string'),
        d.arg('ExpressionType', 'd.T.string'),
      ]
    ),
    new(
      Name,
      Expression,
      ExpressionType,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isString(Expression) : 'Expression must be a string',
        Expression: Expression,
        assert std.isString(ExpressionType) : 'ExpressionType must be a string',
        assert ExpressionType == 'RuleName' || ExpressionType == 'MqttTopic' || ExpressionType == 'SnsTopic' : "ExpressionType must be either 'RuleName' or 'MqttTopic' or 'SnsTopic'",
        ExpressionType: ExpressionType,
      },
      DependsOn:: [],
      Type: 'AWS::IoTWireless::Destination',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withRoleArn': d.fn('`withRoleArn` RoleArn ', [d.arg('RoleArn', d.T.string)]),
    withRoleArn(RoleArn): {
      assert std.isString(RoleArn) : 'RoleArn must be a string',
      Properties+::: { RoleArn: RoleArn },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
  },
  DeviceProfile: {
    '#': d.pkg(
      name='DeviceProfile',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/IoTWireless.libsonnet',
      help='Device Profiles resource schema demonstrating some basic constructs and validation rules.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::IoTWireless::DeviceProfile Resource
      |||,
      args=[
      ]
    ),
    new(
    ): {
      local base = self,
      Properties: {
      },
      DependsOn:: [],
      Type: 'AWS::IoTWireless::DeviceProfile',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
    '#withLoRaWAN': d.fn('`withLoRaWAN` LoRaWAN ', [d.arg('LoRaWAN', d.T.object)]),
    withLoRaWAN(LoRaWAN): {
      assert std.isObject(LoRaWAN) : 'LoRaWAN must be a object',
      Properties+::: { LoRaWAN: LoRaWAN },
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
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
  },
  FuotaTask: {
    '#': d.pkg(
      name='FuotaTask',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/IoTWireless.libsonnet',
      help='Create and manage FUOTA tasks.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::IoTWireless::FuotaTask Resource
        * LoRaWAN FUOTA task LoRaWAN
        * FirmwareUpdateImage FUOTA task firmware update image binary S3 link
        * FirmwareUpdateRole FUOTA task firmware IAM role for reading S3
      |||,
      args=[
        d.arg('LoRaWAN', 'd.T.object'),
        d.arg('FirmwareUpdateImage', 'd.T.string'),
        d.arg('FirmwareUpdateRole', 'd.T.string'),
      ]
    ),
    new(
      LoRaWAN,
      FirmwareUpdateImage,
      FirmwareUpdateRole,
    ): {
      local base = self,
      Properties: {
        assert std.isObject(LoRaWAN) : 'LoRaWAN must be a object',
        LoRaWAN: LoRaWAN,
        assert std.isString(FirmwareUpdateImage) : 'FirmwareUpdateImage must be a string',
        FirmwareUpdateImage: FirmwareUpdateImage,
        assert std.isString(FirmwareUpdateRole) : 'FirmwareUpdateRole must be a string',
        FirmwareUpdateRole: FirmwareUpdateRole,
      },
      DependsOn:: [],
      Type: 'AWS::IoTWireless::FuotaTask',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
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
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withFuotaTaskStatus': d.fn('`withFuotaTaskStatus` FuotaTaskStatus ', [d.arg('FuotaTaskStatus', d.T.string)]),
    withFuotaTaskStatus(FuotaTaskStatus): {
      assert std.isString(FuotaTaskStatus) : 'FuotaTaskStatus must be a string',
      Properties+::: { FuotaTaskStatus: FuotaTaskStatus },
    },
    '#withAssociateWirelessDevice': d.fn('`withAssociateWirelessDevice` AssociateWirelessDevice ', [d.arg('AssociateWirelessDevice', d.T.string)]),
    withAssociateWirelessDevice(AssociateWirelessDevice): {
      assert std.isString(AssociateWirelessDevice) : 'AssociateWirelessDevice must be a string',
      Properties+::: { AssociateWirelessDevice: AssociateWirelessDevice },
    },
    '#withDisassociateWirelessDevice': d.fn('`withDisassociateWirelessDevice` DisassociateWirelessDevice ', [d.arg('DisassociateWirelessDevice', d.T.string)]),
    withDisassociateWirelessDevice(DisassociateWirelessDevice): {
      assert std.isString(DisassociateWirelessDevice) : 'DisassociateWirelessDevice must be a string',
      Properties+::: { DisassociateWirelessDevice: DisassociateWirelessDevice },
    },
    '#withAssociateMulticastGroup': d.fn('`withAssociateMulticastGroup` AssociateMulticastGroup ', [d.arg('AssociateMulticastGroup', d.T.string)]),
    withAssociateMulticastGroup(AssociateMulticastGroup): {
      assert std.isString(AssociateMulticastGroup) : 'AssociateMulticastGroup must be a string',
      Properties+::: { AssociateMulticastGroup: AssociateMulticastGroup },
    },
    '#withDisassociateMulticastGroup': d.fn('`withDisassociateMulticastGroup` DisassociateMulticastGroup ', [d.arg('DisassociateMulticastGroup', d.T.string)]),
    withDisassociateMulticastGroup(DisassociateMulticastGroup): {
      assert std.isString(DisassociateMulticastGroup) : 'DisassociateMulticastGroup must be a string',
      Properties+::: { DisassociateMulticastGroup: DisassociateMulticastGroup },
    },
  },
  MulticastGroup: {
    '#': d.pkg(
      name='MulticastGroup',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/IoTWireless.libsonnet',
      help='Create and manage Multicast groups.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::IoTWireless::MulticastGroup Resource
        * LoRaWAN Multicast group LoRaWAN
      |||,
      args=[
        d.arg('LoRaWAN', 'd.T.object'),
      ]
    ),
    new(
      LoRaWAN,
    ): {
      local base = self,
      Properties: {
        assert std.isObject(LoRaWAN) : 'LoRaWAN must be a object',
        LoRaWAN: LoRaWAN,
      },
      DependsOn:: [],
      Type: 'AWS::IoTWireless::MulticastGroup',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
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
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
    '#withStatus': d.fn('`withStatus` Status ', [d.arg('Status', d.T.string)]),
    withStatus(Status): {
      assert std.isString(Status) : 'Status must be a string',
      Properties+::: { Status: Status },
    },
    '#withAssociateWirelessDevice': d.fn('`withAssociateWirelessDevice` AssociateWirelessDevice ', [d.arg('AssociateWirelessDevice', d.T.string)]),
    withAssociateWirelessDevice(AssociateWirelessDevice): {
      assert std.isString(AssociateWirelessDevice) : 'AssociateWirelessDevice must be a string',
      Properties+::: { AssociateWirelessDevice: AssociateWirelessDevice },
    },
    '#withDisassociateWirelessDevice': d.fn('`withDisassociateWirelessDevice` DisassociateWirelessDevice ', [d.arg('DisassociateWirelessDevice', d.T.string)]),
    withDisassociateWirelessDevice(DisassociateWirelessDevice): {
      assert std.isString(DisassociateWirelessDevice) : 'DisassociateWirelessDevice must be a string',
      Properties+::: { DisassociateWirelessDevice: DisassociateWirelessDevice },
    },
  },
  NetworkAnalyzerConfiguration: {
    '#': d.pkg(
      name='NetworkAnalyzerConfiguration',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/IoTWireless.libsonnet',
      help='Create and manage NetworkAnalyzerConfiguration resource.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::IoTWireless::NetworkAnalyzerConfiguration Resource
        * Name Name of the network analyzer configuration
      |||,
      args=[
        d.arg('Name', 'd.T.string'),
      ]
    ),
    new(
      Name,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
      },
      DependsOn:: [],
      Type: 'AWS::IoTWireless::NetworkAnalyzerConfiguration',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withTraceContent': d.fn('`withTraceContent` TraceContent ', [d.arg('TraceContent', d.T.object)]),
    withTraceContent(TraceContent): {
      assert std.isObject(TraceContent) : 'TraceContent must be a object',
      Properties+::: { TraceContent: TraceContent },
    },
    '#withWirelessDevices': d.fn('`withWirelessDevices` WirelessDevices ', [d.arg('WirelessDevices', d.T.array)]),
    withWirelessDevices(WirelessDevices): {
      assert std.isArray(WirelessDevices) : 'WirelessDevices must be a array',
      Properties+::: { WirelessDevices: WirelessDevices },
    },
    '#withWirelessGateways': d.fn('`withWirelessGateways` WirelessGateways ', [d.arg('WirelessGateways', d.T.array)]),
    withWirelessGateways(WirelessGateways): {
      assert std.isArray(WirelessGateways) : 'WirelessGateways must be a array',
      Properties+::: { WirelessGateways: WirelessGateways },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  ServiceProfile: {
    '#': d.pkg(
      name='ServiceProfile',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/IoTWireless.libsonnet',
      help='An example resource schema demonstrating some basic constructs and validation rules.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::IoTWireless::ServiceProfile Resource
      |||,
      args=[
      ]
    ),
    new(
    ): {
      local base = self,
      Properties: {
      },
      DependsOn:: [],
      Type: 'AWS::IoTWireless::ServiceProfile',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
    '#withLoRaWAN': d.fn('`withLoRaWAN` LoRaWAN ', [d.arg('LoRaWAN', d.T.object)]),
    withLoRaWAN(LoRaWAN): {
      assert std.isObject(LoRaWAN) : 'LoRaWAN must be a object',
      Properties+::: { LoRaWAN: LoRaWAN },
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
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
  },
  TaskDefinition: {
    '#': d.pkg(
      name='TaskDefinition',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/IoTWireless.libsonnet',
      help='Creates a gateway task definition.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::IoTWireless::TaskDefinition Resource
        * AutoCreateTasks Whether to automatically create tasks using this task definition for all gateways with the specified current version. If false, the task must me created by calling CreateWirelessGatewayTask.
      |||,
      args=[
        d.arg('AutoCreateTasks', 'd.T.boolean'),
      ]
    ),
    new(
      AutoCreateTasks,
    ): {
      local base = self,
      Properties: {
        assert std.isBoolean(AutoCreateTasks) : 'AutoCreateTasks must be a boolean',
        AutoCreateTasks: AutoCreateTasks,
      },
      DependsOn:: [],
      Type: 'AWS::IoTWireless::TaskDefinition',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
    '#withUpdate': d.fn('`withUpdate` Update ', [d.arg('Update', d.T.object)]),
    withUpdate(Update): {
      assert std.isObject(Update) : 'Update must be a object',
      Properties+::: { Update: Update },
    },
    '#withLoRaWANUpdateGatewayTaskEntry': d.fn('`withLoRaWANUpdateGatewayTaskEntry` LoRaWANUpdateGatewayTaskEntry ', [d.arg('LoRaWANUpdateGatewayTaskEntry', d.T.object)]),
    withLoRaWANUpdateGatewayTaskEntry(LoRaWANUpdateGatewayTaskEntry): {
      assert std.isObject(LoRaWANUpdateGatewayTaskEntry) : 'LoRaWANUpdateGatewayTaskEntry must be a object',
      Properties+::: { LoRaWANUpdateGatewayTaskEntry: LoRaWANUpdateGatewayTaskEntry },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withTaskDefinitionType': d.fn('`withTaskDefinitionType` TaskDefinitionType ', [d.arg('TaskDefinitionType', d.T.string)]),
    withTaskDefinitionType(TaskDefinitionType): {
      assert std.isString(TaskDefinitionType) : 'TaskDefinitionType must be a string',
      assert TaskDefinitionType == 'UPDATE' : "TaskDefinitionType must be either 'UPDATE'",
      Properties+::: { TaskDefinitionType: TaskDefinitionType },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  WirelessDevice: {
    '#': d.pkg(
      name='WirelessDevice',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/IoTWireless.libsonnet',
      help='Create and manage wireless gateways, including LoRa gateways.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::IoTWireless::WirelessDevice Resource
        * Type Wireless device type, currently only Sidewalk and LoRa
        * DestinationName Wireless device destination name
      |||,
      args=[
        d.arg('Type', 'd.T.string'),
        d.arg('DestinationName', 'd.T.string'),
      ]
    ),
    new(
      Type,
      DestinationName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Type) : 'Type must be a string',
        assert Type == 'Sidewalk' || Type == 'LoRaWAN' : "Type must be either 'Sidewalk' or 'LoRaWAN'",
        Type: Type,
        assert std.isString(DestinationName) : 'DestinationName must be a string',
        DestinationName: DestinationName,
      },
      DependsOn:: [],
      Type: 'AWS::IoTWireless::WirelessDevice',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
    },
    '#withLoRaWAN': d.fn('`withLoRaWAN` LoRaWAN ', [d.arg('LoRaWAN', d.T.object)]),
    withLoRaWAN(LoRaWAN): {
      assert std.isObject(LoRaWAN) : 'LoRaWAN must be a object',
      Properties+::: { LoRaWAN: LoRaWAN },
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
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withThingArn': d.fn('`withThingArn` ThingArn ', [d.arg('ThingArn', d.T.string)]),
    withThingArn(ThingArn): {
      assert std.isString(ThingArn) : 'ThingArn must be a string',
      Properties+::: { ThingArn: ThingArn },
    },
    '#withThingName': d.fn('`withThingName` ThingName ', [d.arg('ThingName', d.T.string)]),
    withThingName(ThingName): {
      assert std.isString(ThingName) : 'ThingName must be a string',
      Properties+::: { ThingName: ThingName },
    },
    '#withLastUplinkReceivedAt': d.fn('`withLastUplinkReceivedAt` LastUplinkReceivedAt ', [d.arg('LastUplinkReceivedAt', d.T.string)]),
    withLastUplinkReceivedAt(LastUplinkReceivedAt): {
      assert std.isString(LastUplinkReceivedAt) : 'LastUplinkReceivedAt must be a string',
      Properties+::: { LastUplinkReceivedAt: LastUplinkReceivedAt },
    },
    '#withPositioning': d.fn('`withPositioning` Positioning ', [d.arg('Positioning', d.T.string)]),
    withPositioning(Positioning): {
      assert std.isString(Positioning) : 'Positioning must be a string',
      assert Positioning == 'Enabled' || Positioning == 'Disabled' : "Positioning must be either 'Enabled' or 'Disabled'",
      Properties+::: { Positioning: Positioning },
    },
  },
  WirelessGateway: {
    '#': d.pkg(
      name='WirelessGateway',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/IoTWireless.libsonnet',
      help='Create and manage wireless gateways, including LoRa gateways.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::IoTWireless::WirelessGateway Resource
        * LoRaWAN The combination of Package, Station and Model which represents the version of the LoRaWAN Wireless Gateway.
      |||,
      args=[
        d.arg('LoRaWAN', 'd.T.object'),
      ]
    ),
    new(
      LoRaWAN,
    ): {
      local base = self,
      Properties: {
        assert std.isObject(LoRaWAN) : 'LoRaWAN must be a object',
        LoRaWAN: LoRaWAN,
      },
      DependsOn:: [],
      Type: 'AWS::IoTWireless::WirelessGateway',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
    '#withDescription': d.fn('`withDescription` Description ', [d.arg('Description', d.T.string)]),
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: { Description: Description },
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
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withThingArn': d.fn('`withThingArn` ThingArn ', [d.arg('ThingArn', d.T.string)]),
    withThingArn(ThingArn): {
      assert std.isString(ThingArn) : 'ThingArn must be a string',
      Properties+::: { ThingArn: ThingArn },
    },
    '#withThingName': d.fn('`withThingName` ThingName ', [d.arg('ThingName', d.T.string)]),
    withThingName(ThingName): {
      assert std.isString(ThingName) : 'ThingName must be a string',
      Properties+::: { ThingName: ThingName },
    },
    '#withLastUplinkReceivedAt': d.fn('`withLastUplinkReceivedAt` LastUplinkReceivedAt ', [d.arg('LastUplinkReceivedAt', d.T.string)]),
    withLastUplinkReceivedAt(LastUplinkReceivedAt): {
      assert std.isString(LastUplinkReceivedAt) : 'LastUplinkReceivedAt must be a string',
      Properties+::: { LastUplinkReceivedAt: LastUplinkReceivedAt },
    },
  },
}
