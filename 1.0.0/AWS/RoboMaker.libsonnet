local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  Fleet: {
    '#': d.pkg(
      name='Fleet',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/RoboMaker.libsonnet',
      help='AWS::RoboMaker::Fleet resource creates an AWS RoboMaker fleet. Fleets contain robots and can receive deployments.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::RoboMaker::Fleet Resource
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
      Type: 'AWS::RoboMaker::Fleet',
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
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
  },
  Robot: {
    '#': d.pkg(
      name='Robot',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/RoboMaker.libsonnet',
      help='AWS::RoboMaker::Robot resource creates an AWS RoboMaker Robot.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::RoboMaker::Robot Resource
        * GreengrassGroupId The Greengrass group id.
        * Architecture The target architecture of the robot.
      |||,
      args=[
        d.arg('GreengrassGroupId', 'd.T.string'),
        d.arg('Architecture', 'd.T.string'),
      ]
    ),
    new(
      GreengrassGroupId,
      Architecture,
    ): {
      local base = self,
      Properties: {
        assert std.isString(GreengrassGroupId) : 'GreengrassGroupId must be a string',
        GreengrassGroupId: GreengrassGroupId,
        assert std.isString(Architecture) : 'Architecture must be a string',
        assert Architecture == 'X86_64' || Architecture == 'ARM64' || Architecture == 'ARMHF' : "Architecture must be either 'X86_64' or 'ARM64' or 'ARMHF'",
        Architecture: Architecture,
      },
      DependsOn:: [],
      Type: 'AWS::RoboMaker::Robot',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withFleet': d.fn('`withFleet` Fleet ', [d.arg('Fleet', d.T.string)]),
    withFleet(Fleet): {
      assert std.isString(Fleet) : 'Fleet must be a string',
      Properties+::: { Fleet: Fleet },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.object)]),
    withTags(Tags): {
      assert std.isObject(Tags) : 'Tags must be a object',
      Properties+::: { Tags: Tags },
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
  },
  RobotApplication: {
    '#': d.pkg(
      name='RobotApplication',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/RoboMaker.libsonnet',
      help='This schema is for testing purpose only.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::RoboMaker::RobotApplication Resource
        * RobotSoftwareSuite 
      |||,
      args=[
        d.arg('RobotSoftwareSuite', 'd.T.object'),
      ]
    ),
    new(
      RobotSoftwareSuite,
    ): {
      local base = self,
      Properties: {
        assert std.isObject(RobotSoftwareSuite) : 'RobotSoftwareSuite must be a object',
        RobotSoftwareSuite: RobotSoftwareSuite,
      },
      DependsOn:: [],
      Type: 'AWS::RoboMaker::RobotApplication',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
    '#withSources': d.fn('`withSources` Sources ', [d.arg('Sources', d.T.array)]),
    withSources(Sources): {
      assert std.isArray(Sources) : 'Sources must be a array',
      Properties+::: { Sources: Sources },
    },
    '#withEnvironment': d.fn('`withEnvironment` Environment ', [d.arg('Environment', d.T.string)]),
    withEnvironment(Environment): {
      assert std.isString(Environment) : 'Environment must be a string',
      Properties+::: { Environment: Environment },
    },
    '#withCurrentRevisionId': d.fn('`withCurrentRevisionId` CurrentRevisionId ', [d.arg('CurrentRevisionId', d.T.string)]),
    withCurrentRevisionId(CurrentRevisionId): {
      assert std.isString(CurrentRevisionId) : 'CurrentRevisionId must be a string',
      Properties+::: { CurrentRevisionId: CurrentRevisionId },
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
  RobotApplicationVersion: {
    '#': d.pkg(
      name='RobotApplicationVersion',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/RoboMaker.libsonnet',
      help='AWS::RoboMaker::RobotApplicationVersion resource creates an AWS RoboMaker RobotApplicationVersion. This helps you control which code your robot uses.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::RoboMaker::RobotApplicationVersion Resource
        * Application 
      |||,
      args=[
        d.arg('Application', 'd.T.string'),
      ]
    ),
    new(
      Application,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Application) : 'Application must be a string',
        Application: Application,
      },
      DependsOn:: [],
      Type: 'AWS::RoboMaker::RobotApplicationVersion',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withCurrentRevisionId': d.fn('`withCurrentRevisionId` CurrentRevisionId ', [d.arg('CurrentRevisionId', d.T.string)]),
    withCurrentRevisionId(CurrentRevisionId): {
      assert std.isString(CurrentRevisionId) : 'CurrentRevisionId must be a string',
      Properties+::: { CurrentRevisionId: CurrentRevisionId },
    },
    '#withApplicationVersion': d.fn('`withApplicationVersion` ApplicationVersion ', [d.arg('ApplicationVersion', d.T.string)]),
    withApplicationVersion(ApplicationVersion): {
      assert std.isString(ApplicationVersion) : 'ApplicationVersion must be a string',
      Properties+::: { ApplicationVersion: ApplicationVersion },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
  },
  SimulationApplication: {
    '#': d.pkg(
      name='SimulationApplication',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/RoboMaker.libsonnet',
      help='This schema is for testing purpose only.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::RoboMaker::SimulationApplication Resource
        * RobotSoftwareSuite The robot software suite used by the simulation application.
        * SimulationSoftwareSuite The simulation software suite used by the simulation application.
      |||,
      args=[
        d.arg('RobotSoftwareSuite', 'd.T.object'),
        d.arg('SimulationSoftwareSuite', 'd.T.object'),
      ]
    ),
    new(
      RobotSoftwareSuite,
      SimulationSoftwareSuite,
    ): {
      local base = self,
      Properties: {
        assert std.isObject(RobotSoftwareSuite) : 'RobotSoftwareSuite must be a object',
        RobotSoftwareSuite: RobotSoftwareSuite,
        assert std.isObject(SimulationSoftwareSuite) : 'SimulationSoftwareSuite must be a object',
        SimulationSoftwareSuite: SimulationSoftwareSuite,
      },
      DependsOn:: [],
      Type: 'AWS::RoboMaker::SimulationApplication',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withName': d.fn('`withName` Name ', [d.arg('Name', d.T.string)]),
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: { Name: Name },
    },
    '#withCurrentRevisionId': d.fn('`withCurrentRevisionId` CurrentRevisionId ', [d.arg('CurrentRevisionId', d.T.string)]),
    withCurrentRevisionId(CurrentRevisionId): {
      assert std.isString(CurrentRevisionId) : 'CurrentRevisionId must be a string',
      Properties+::: { CurrentRevisionId: CurrentRevisionId },
    },
    '#withRenderingEngine': d.fn('`withRenderingEngine` RenderingEngine ', [d.arg('RenderingEngine', d.T.object)]),
    withRenderingEngine(RenderingEngine): {
      assert std.isObject(RenderingEngine) : 'RenderingEngine must be a object',
      Properties+::: { RenderingEngine: RenderingEngine },
    },
    '#withSources': d.fn('`withSources` Sources ', [d.arg('Sources', d.T.array)]),
    withSources(Sources): {
      assert std.isArray(Sources) : 'Sources must be a array',
      Properties+::: { Sources: Sources },
    },
    '#withEnvironment': d.fn('`withEnvironment` Environment ', [d.arg('Environment', d.T.string)]),
    withEnvironment(Environment): {
      assert std.isString(Environment) : 'Environment must be a string',
      Properties+::: { Environment: Environment },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.object)]),
    withTags(Tags): {
      assert std.isObject(Tags) : 'Tags must be a object',
      Properties+::: { Tags: Tags },
    },
  },
  SimulationApplicationVersion: {
    '#': d.pkg(
      name='SimulationApplicationVersion',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/RoboMaker.libsonnet',
      help='AWS::RoboMaker::SimulationApplicationVersion resource creates an AWS RoboMaker SimulationApplicationVersion. This helps you control which code your simulation uses.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::RoboMaker::SimulationApplicationVersion Resource
        * Application 
      |||,
      args=[
        d.arg('Application', 'd.T.string'),
      ]
    ),
    new(
      Application,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Application) : 'Application must be a string',
        Application: Application,
      },
      DependsOn:: [],
      Type: 'AWS::RoboMaker::SimulationApplicationVersion',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withCurrentRevisionId': d.fn('`withCurrentRevisionId` CurrentRevisionId ', [d.arg('CurrentRevisionId', d.T.string)]),
    withCurrentRevisionId(CurrentRevisionId): {
      assert std.isString(CurrentRevisionId) : 'CurrentRevisionId must be a string',
      Properties+::: { CurrentRevisionId: CurrentRevisionId },
    },
    '#withApplicationVersion': d.fn('`withApplicationVersion` ApplicationVersion ', [d.arg('ApplicationVersion', d.T.string)]),
    withApplicationVersion(ApplicationVersion): {
      assert std.isString(ApplicationVersion) : 'ApplicationVersion must be a string',
      Properties+::: { ApplicationVersion: ApplicationVersion },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
  },
}
