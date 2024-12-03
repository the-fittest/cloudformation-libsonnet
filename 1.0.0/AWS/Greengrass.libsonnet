local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  ConnectorDefinition: {
    '#': d.pkg(
      name='ConnectorDefinition',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Greengrass.libsonnet',
      help='Resource Type definition for AWS::Greengrass::ConnectorDefinition',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Greengrass::ConnectorDefinition Resource
        * Name 
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
      Type: 'AWS::Greengrass::ConnectorDefinition',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withLatestVersionArn': d.fn('`withLatestVersionArn` LatestVersionArn ', [d.arg('LatestVersionArn', d.T.string)]),
    withLatestVersionArn(LatestVersionArn): {
      assert std.isString(LatestVersionArn) : 'LatestVersionArn must be a string',
      Properties+::: { LatestVersionArn: LatestVersionArn },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withInitialVersion': d.fn('`withInitialVersion` InitialVersion ', [d.arg('InitialVersion', d.T.object)]),
    withInitialVersion(InitialVersion): {
      assert std.isObject(InitialVersion) : 'InitialVersion must be a object',
      Properties+::: { InitialVersion: InitialVersion },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.object)]),
    withTags(Tags): {
      assert std.isObject(Tags) : 'Tags must be a object',
      Properties+::: { Tags: Tags },
    },
  },
  ConnectorDefinitionVersion: {
    '#': d.pkg(
      name='ConnectorDefinitionVersion',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Greengrass.libsonnet',
      help='Resource Type definition for AWS::Greengrass::ConnectorDefinitionVersion',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Greengrass::ConnectorDefinitionVersion Resource
        * Connectors 
        * ConnectorDefinitionId 
      |||,
      args=[
        d.arg('Connectors', 'd.T.array'),
        d.arg('ConnectorDefinitionId', 'd.T.string'),
      ]
    ),
    new(
      Connectors,
      ConnectorDefinitionId,
    ): {
      local base = self,
      Properties: {
        assert std.isArray(Connectors) : 'Connectors must be a array',
        Connectors: Connectors,
        assert std.isString(ConnectorDefinitionId) : 'ConnectorDefinitionId must be a string',
        ConnectorDefinitionId: ConnectorDefinitionId,
      },
      DependsOn:: [],
      Type: 'AWS::Greengrass::ConnectorDefinitionVersion',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
  },
  CoreDefinition: {
    '#': d.pkg(
      name='CoreDefinition',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Greengrass.libsonnet',
      help='Resource Type definition for AWS::Greengrass::CoreDefinition',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Greengrass::CoreDefinition Resource
        * Name 
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
      Type: 'AWS::Greengrass::CoreDefinition',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withLatestVersionArn': d.fn('`withLatestVersionArn` LatestVersionArn ', [d.arg('LatestVersionArn', d.T.string)]),
    withLatestVersionArn(LatestVersionArn): {
      assert std.isString(LatestVersionArn) : 'LatestVersionArn must be a string',
      Properties+::: { LatestVersionArn: LatestVersionArn },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withInitialVersion': d.fn('`withInitialVersion` InitialVersion ', [d.arg('InitialVersion', d.T.object)]),
    withInitialVersion(InitialVersion): {
      assert std.isObject(InitialVersion) : 'InitialVersion must be a object',
      Properties+::: { InitialVersion: InitialVersion },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.object)]),
    withTags(Tags): {
      assert std.isObject(Tags) : 'Tags must be a object',
      Properties+::: { Tags: Tags },
    },
  },
  CoreDefinitionVersion: {
    '#': d.pkg(
      name='CoreDefinitionVersion',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Greengrass.libsonnet',
      help='Resource Type definition for AWS::Greengrass::CoreDefinitionVersion',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Greengrass::CoreDefinitionVersion Resource
        * Cores 
        * CoreDefinitionId 
      |||,
      args=[
        d.arg('Cores', 'd.T.array'),
        d.arg('CoreDefinitionId', 'd.T.string'),
      ]
    ),
    new(
      Cores,
      CoreDefinitionId,
    ): {
      local base = self,
      Properties: {
        assert std.isArray(Cores) : 'Cores must be a array',
        Cores: Cores,
        assert std.isString(CoreDefinitionId) : 'CoreDefinitionId must be a string',
        CoreDefinitionId: CoreDefinitionId,
      },
      DependsOn:: [],
      Type: 'AWS::Greengrass::CoreDefinitionVersion',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
  },
  DeviceDefinition: {
    '#': d.pkg(
      name='DeviceDefinition',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Greengrass.libsonnet',
      help='Resource Type definition for AWS::Greengrass::DeviceDefinition',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Greengrass::DeviceDefinition Resource
        * Name 
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
      Type: 'AWS::Greengrass::DeviceDefinition',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withLatestVersionArn': d.fn('`withLatestVersionArn` LatestVersionArn ', [d.arg('LatestVersionArn', d.T.string)]),
    withLatestVersionArn(LatestVersionArn): {
      assert std.isString(LatestVersionArn) : 'LatestVersionArn must be a string',
      Properties+::: { LatestVersionArn: LatestVersionArn },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withInitialVersion': d.fn('`withInitialVersion` InitialVersion ', [d.arg('InitialVersion', d.T.object)]),
    withInitialVersion(InitialVersion): {
      assert std.isObject(InitialVersion) : 'InitialVersion must be a object',
      Properties+::: { InitialVersion: InitialVersion },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.object)]),
    withTags(Tags): {
      assert std.isObject(Tags) : 'Tags must be a object',
      Properties+::: { Tags: Tags },
    },
  },
  DeviceDefinitionVersion: {
    '#': d.pkg(
      name='DeviceDefinitionVersion',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Greengrass.libsonnet',
      help='Resource Type definition for AWS::Greengrass::DeviceDefinitionVersion',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Greengrass::DeviceDefinitionVersion Resource
        * Devices 
        * DeviceDefinitionId 
      |||,
      args=[
        d.arg('Devices', 'd.T.array'),
        d.arg('DeviceDefinitionId', 'd.T.string'),
      ]
    ),
    new(
      Devices,
      DeviceDefinitionId,
    ): {
      local base = self,
      Properties: {
        assert std.isArray(Devices) : 'Devices must be a array',
        Devices: Devices,
        assert std.isString(DeviceDefinitionId) : 'DeviceDefinitionId must be a string',
        DeviceDefinitionId: DeviceDefinitionId,
      },
      DependsOn:: [],
      Type: 'AWS::Greengrass::DeviceDefinitionVersion',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
  },
  FunctionDefinition: {
    '#': d.pkg(
      name='FunctionDefinition',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Greengrass.libsonnet',
      help='Resource Type definition for AWS::Greengrass::FunctionDefinition',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Greengrass::FunctionDefinition Resource
        * Name 
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
      Type: 'AWS::Greengrass::FunctionDefinition',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withLatestVersionArn': d.fn('`withLatestVersionArn` LatestVersionArn ', [d.arg('LatestVersionArn', d.T.string)]),
    withLatestVersionArn(LatestVersionArn): {
      assert std.isString(LatestVersionArn) : 'LatestVersionArn must be a string',
      Properties+::: { LatestVersionArn: LatestVersionArn },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withInitialVersion': d.fn('`withInitialVersion` InitialVersion ', [d.arg('InitialVersion', d.T.object)]),
    withInitialVersion(InitialVersion): {
      assert std.isObject(InitialVersion) : 'InitialVersion must be a object',
      Properties+::: { InitialVersion: InitialVersion },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.object)]),
    withTags(Tags): {
      assert std.isObject(Tags) : 'Tags must be a object',
      Properties+::: { Tags: Tags },
    },
  },
  FunctionDefinitionVersion: {
    '#': d.pkg(
      name='FunctionDefinitionVersion',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Greengrass.libsonnet',
      help='Resource Type definition for AWS::Greengrass::FunctionDefinitionVersion',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Greengrass::FunctionDefinitionVersion Resource
        * FunctionDefinitionId 
        * Functions 
      |||,
      args=[
        d.arg('FunctionDefinitionId', 'd.T.string'),
        d.arg('Functions', 'd.T.array'),
      ]
    ),
    new(
      FunctionDefinitionId,
      Functions,
    ): {
      local base = self,
      Properties: {
        assert std.isString(FunctionDefinitionId) : 'FunctionDefinitionId must be a string',
        FunctionDefinitionId: FunctionDefinitionId,
        assert std.isArray(Functions) : 'Functions must be a array',
        Functions: Functions,
      },
      DependsOn:: [],
      Type: 'AWS::Greengrass::FunctionDefinitionVersion',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withDefaultConfig': d.fn('`withDefaultConfig` DefaultConfig ', [d.arg('DefaultConfig', d.T.object)]),
    withDefaultConfig(DefaultConfig): {
      assert std.isObject(DefaultConfig) : 'DefaultConfig must be a object',
      Properties+::: { DefaultConfig: DefaultConfig },
    },
  },
  Group: {
    '#': d.pkg(
      name='Group',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Greengrass.libsonnet',
      help='Resource Type definition for AWS::Greengrass::Group',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Greengrass::Group Resource
        * Name 
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
      Type: 'AWS::Greengrass::Group',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withRoleAttachedAt': d.fn('`withRoleAttachedAt` RoleAttachedAt ', [d.arg('RoleAttachedAt', d.T.string)]),
    withRoleAttachedAt(RoleAttachedAt): {
      assert std.isString(RoleAttachedAt) : 'RoleAttachedAt must be a string',
      Properties+::: { RoleAttachedAt: RoleAttachedAt },
    },
    '#withLatestVersionArn': d.fn('`withLatestVersionArn` LatestVersionArn ', [d.arg('LatestVersionArn', d.T.string)]),
    withLatestVersionArn(LatestVersionArn): {
      assert std.isString(LatestVersionArn) : 'LatestVersionArn must be a string',
      Properties+::: { LatestVersionArn: LatestVersionArn },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withRoleArn': d.fn('`withRoleArn` RoleArn ', [d.arg('RoleArn', d.T.string)]),
    withRoleArn(RoleArn): {
      assert std.isString(RoleArn) : 'RoleArn must be a string',
      Properties+::: { RoleArn: RoleArn },
    },
    '#withInitialVersion': d.fn('`withInitialVersion` InitialVersion ', [d.arg('InitialVersion', d.T.object)]),
    withInitialVersion(InitialVersion): {
      assert std.isObject(InitialVersion) : 'InitialVersion must be a object',
      Properties+::: { InitialVersion: InitialVersion },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.object)]),
    withTags(Tags): {
      assert std.isObject(Tags) : 'Tags must be a object',
      Properties+::: { Tags: Tags },
    },
  },
  GroupVersion: {
    '#': d.pkg(
      name='GroupVersion',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Greengrass.libsonnet',
      help='Resource Type definition for AWS::Greengrass::GroupVersion',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Greengrass::GroupVersion Resource
        * GroupId 
      |||,
      args=[
        d.arg('GroupId', 'd.T.string'),
      ]
    ),
    new(
      GroupId,
    ): {
      local base = self,
      Properties: {
        assert std.isString(GroupId) : 'GroupId must be a string',
        GroupId: GroupId,
      },
      DependsOn:: [],
      Type: 'AWS::Greengrass::GroupVersion',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withLoggerDefinitionVersionArn': d.fn('`withLoggerDefinitionVersionArn` LoggerDefinitionVersionArn ', [d.arg('LoggerDefinitionVersionArn', d.T.string)]),
    withLoggerDefinitionVersionArn(LoggerDefinitionVersionArn): {
      assert std.isString(LoggerDefinitionVersionArn) : 'LoggerDefinitionVersionArn must be a string',
      Properties+::: { LoggerDefinitionVersionArn: LoggerDefinitionVersionArn },
    },
    '#withDeviceDefinitionVersionArn': d.fn('`withDeviceDefinitionVersionArn` DeviceDefinitionVersionArn ', [d.arg('DeviceDefinitionVersionArn', d.T.string)]),
    withDeviceDefinitionVersionArn(DeviceDefinitionVersionArn): {
      assert std.isString(DeviceDefinitionVersionArn) : 'DeviceDefinitionVersionArn must be a string',
      Properties+::: { DeviceDefinitionVersionArn: DeviceDefinitionVersionArn },
    },
    '#withFunctionDefinitionVersionArn': d.fn('`withFunctionDefinitionVersionArn` FunctionDefinitionVersionArn ', [d.arg('FunctionDefinitionVersionArn', d.T.string)]),
    withFunctionDefinitionVersionArn(FunctionDefinitionVersionArn): {
      assert std.isString(FunctionDefinitionVersionArn) : 'FunctionDefinitionVersionArn must be a string',
      Properties+::: { FunctionDefinitionVersionArn: FunctionDefinitionVersionArn },
    },
    '#withCoreDefinitionVersionArn': d.fn('`withCoreDefinitionVersionArn` CoreDefinitionVersionArn ', [d.arg('CoreDefinitionVersionArn', d.T.string)]),
    withCoreDefinitionVersionArn(CoreDefinitionVersionArn): {
      assert std.isString(CoreDefinitionVersionArn) : 'CoreDefinitionVersionArn must be a string',
      Properties+::: { CoreDefinitionVersionArn: CoreDefinitionVersionArn },
    },
    '#withResourceDefinitionVersionArn': d.fn('`withResourceDefinitionVersionArn` ResourceDefinitionVersionArn ', [d.arg('ResourceDefinitionVersionArn', d.T.string)]),
    withResourceDefinitionVersionArn(ResourceDefinitionVersionArn): {
      assert std.isString(ResourceDefinitionVersionArn) : 'ResourceDefinitionVersionArn must be a string',
      Properties+::: { ResourceDefinitionVersionArn: ResourceDefinitionVersionArn },
    },
    '#withConnectorDefinitionVersionArn': d.fn('`withConnectorDefinitionVersionArn` ConnectorDefinitionVersionArn ', [d.arg('ConnectorDefinitionVersionArn', d.T.string)]),
    withConnectorDefinitionVersionArn(ConnectorDefinitionVersionArn): {
      assert std.isString(ConnectorDefinitionVersionArn) : 'ConnectorDefinitionVersionArn must be a string',
      Properties+::: { ConnectorDefinitionVersionArn: ConnectorDefinitionVersionArn },
    },
    '#withSubscriptionDefinitionVersionArn': d.fn('`withSubscriptionDefinitionVersionArn` SubscriptionDefinitionVersionArn ', [d.arg('SubscriptionDefinitionVersionArn', d.T.string)]),
    withSubscriptionDefinitionVersionArn(SubscriptionDefinitionVersionArn): {
      assert std.isString(SubscriptionDefinitionVersionArn) : 'SubscriptionDefinitionVersionArn must be a string',
      Properties+::: { SubscriptionDefinitionVersionArn: SubscriptionDefinitionVersionArn },
    },
  },
  LoggerDefinition: {
    '#': d.pkg(
      name='LoggerDefinition',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Greengrass.libsonnet',
      help='Resource Type definition for AWS::Greengrass::LoggerDefinition',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Greengrass::LoggerDefinition Resource
        * Name 
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
      Type: 'AWS::Greengrass::LoggerDefinition',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withLatestVersionArn': d.fn('`withLatestVersionArn` LatestVersionArn ', [d.arg('LatestVersionArn', d.T.string)]),
    withLatestVersionArn(LatestVersionArn): {
      assert std.isString(LatestVersionArn) : 'LatestVersionArn must be a string',
      Properties+::: { LatestVersionArn: LatestVersionArn },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withInitialVersion': d.fn('`withInitialVersion` InitialVersion ', [d.arg('InitialVersion', d.T.object)]),
    withInitialVersion(InitialVersion): {
      assert std.isObject(InitialVersion) : 'InitialVersion must be a object',
      Properties+::: { InitialVersion: InitialVersion },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.object)]),
    withTags(Tags): {
      assert std.isObject(Tags) : 'Tags must be a object',
      Properties+::: { Tags: Tags },
    },
  },
  LoggerDefinitionVersion: {
    '#': d.pkg(
      name='LoggerDefinitionVersion',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Greengrass.libsonnet',
      help='Resource Type definition for AWS::Greengrass::LoggerDefinitionVersion',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Greengrass::LoggerDefinitionVersion Resource
        * Loggers 
        * LoggerDefinitionId 
      |||,
      args=[
        d.arg('Loggers', 'd.T.array'),
        d.arg('LoggerDefinitionId', 'd.T.string'),
      ]
    ),
    new(
      Loggers,
      LoggerDefinitionId,
    ): {
      local base = self,
      Properties: {
        assert std.isArray(Loggers) : 'Loggers must be a array',
        Loggers: Loggers,
        assert std.isString(LoggerDefinitionId) : 'LoggerDefinitionId must be a string',
        LoggerDefinitionId: LoggerDefinitionId,
      },
      DependsOn:: [],
      Type: 'AWS::Greengrass::LoggerDefinitionVersion',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
  },
  ResourceDefinition: {
    '#': d.pkg(
      name='ResourceDefinition',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Greengrass.libsonnet',
      help='Resource Type definition for AWS::Greengrass::ResourceDefinition',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Greengrass::ResourceDefinition Resource
        * Name 
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
      Type: 'AWS::Greengrass::ResourceDefinition',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withLatestVersionArn': d.fn('`withLatestVersionArn` LatestVersionArn ', [d.arg('LatestVersionArn', d.T.string)]),
    withLatestVersionArn(LatestVersionArn): {
      assert std.isString(LatestVersionArn) : 'LatestVersionArn must be a string',
      Properties+::: { LatestVersionArn: LatestVersionArn },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.object)]),
    withTags(Tags): {
      assert std.isObject(Tags) : 'Tags must be a object',
      Properties+::: { Tags: Tags },
    },
    '#withInitialVersion': d.fn('`withInitialVersion` InitialVersion ', [d.arg('InitialVersion', d.T.object)]),
    withInitialVersion(InitialVersion): {
      assert std.isObject(InitialVersion) : 'InitialVersion must be a object',
      Properties+::: { InitialVersion: InitialVersion },
    },
  },
  ResourceDefinitionVersion: {
    '#': d.pkg(
      name='ResourceDefinitionVersion',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Greengrass.libsonnet',
      help='Resource Type definition for AWS::Greengrass::ResourceDefinitionVersion',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Greengrass::ResourceDefinitionVersion Resource
        * Resources 
        * ResourceDefinitionId 
      |||,
      args=[
        d.arg('Resources', 'd.T.array'),
        d.arg('ResourceDefinitionId', 'd.T.string'),
      ]
    ),
    new(
      Resources,
      ResourceDefinitionId,
    ): {
      local base = self,
      Properties: {
        assert std.isArray(Resources) : 'Resources must be a array',
        Resources: Resources,
        assert std.isString(ResourceDefinitionId) : 'ResourceDefinitionId must be a string',
        ResourceDefinitionId: ResourceDefinitionId,
      },
      DependsOn:: [],
      Type: 'AWS::Greengrass::ResourceDefinitionVersion',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
  },
  SubscriptionDefinition: {
    '#': d.pkg(
      name='SubscriptionDefinition',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Greengrass.libsonnet',
      help='Resource Type definition for AWS::Greengrass::SubscriptionDefinition',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Greengrass::SubscriptionDefinition Resource
        * Name 
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
      Type: 'AWS::Greengrass::SubscriptionDefinition',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withLatestVersionArn': d.fn('`withLatestVersionArn` LatestVersionArn ', [d.arg('LatestVersionArn', d.T.string)]),
    withLatestVersionArn(LatestVersionArn): {
      assert std.isString(LatestVersionArn) : 'LatestVersionArn must be a string',
      Properties+::: { LatestVersionArn: LatestVersionArn },
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withInitialVersion': d.fn('`withInitialVersion` InitialVersion ', [d.arg('InitialVersion', d.T.object)]),
    withInitialVersion(InitialVersion): {
      assert std.isObject(InitialVersion) : 'InitialVersion must be a object',
      Properties+::: { InitialVersion: InitialVersion },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.object)]),
    withTags(Tags): {
      assert std.isObject(Tags) : 'Tags must be a object',
      Properties+::: { Tags: Tags },
    },
  },
  SubscriptionDefinitionVersion: {
    '#': d.pkg(
      name='SubscriptionDefinitionVersion',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/Greengrass.libsonnet',
      help='Resource Type definition for AWS::Greengrass::SubscriptionDefinitionVersion',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::Greengrass::SubscriptionDefinitionVersion Resource
        * SubscriptionDefinitionId 
        * Subscriptions 
      |||,
      args=[
        d.arg('SubscriptionDefinitionId', 'd.T.string'),
        d.arg('Subscriptions', 'd.T.array'),
      ]
    ),
    new(
      SubscriptionDefinitionId,
      Subscriptions,
    ): {
      local base = self,
      Properties: {
        assert std.isString(SubscriptionDefinitionId) : 'SubscriptionDefinitionId must be a string',
        SubscriptionDefinitionId: SubscriptionDefinitionId,
        assert std.isArray(Subscriptions) : 'Subscriptions must be a array',
        Subscriptions: Subscriptions,
      },
      DependsOn:: [],
      Type: 'AWS::Greengrass::SubscriptionDefinitionVersion',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withId': d.fn('`withId` Id ', [d.arg('Id', d.T.string)]),
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: { Id: Id },
    },
  },
}
