local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
{
  EnabledBaseline: {
    '#': d.pkg(
      name='EnabledBaseline',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ControlTower.libsonnet',
      help='Definition of AWS::ControlTower::EnabledBaseline Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ControlTower::EnabledBaseline Resource
        * BaselineIdentifier 
        * TargetIdentifier 
        * BaselineVersion 
      |||,
      args=[
        d.arg('BaselineIdentifier', 'd.T.string'),
        d.arg('TargetIdentifier', 'd.T.string'),
        d.arg('BaselineVersion', 'd.T.string'),
      ]
    ),
    new(
      BaselineIdentifier,
      TargetIdentifier,
      BaselineVersion,
    ): {
      local base = self,
      Properties: {
        assert std.isString(BaselineIdentifier) : 'BaselineIdentifier must be a string',
        BaselineIdentifier: BaselineIdentifier,
        assert std.isString(TargetIdentifier) : 'TargetIdentifier must be a string',
        TargetIdentifier: TargetIdentifier,
        assert std.isString(BaselineVersion) : 'BaselineVersion must be a string',
        BaselineVersion: BaselineVersion,
      },
      DependsOn:: [],
      Type: 'AWS::ControlTower::EnabledBaseline',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withEnabledBaselineIdentifier': d.fn('`withEnabledBaselineIdentifier` EnabledBaselineIdentifier ', [d.arg('EnabledBaselineIdentifier', d.T.string)]),
    withEnabledBaselineIdentifier(EnabledBaselineIdentifier): {
      assert std.isString(EnabledBaselineIdentifier) : 'EnabledBaselineIdentifier must be a string',
      Properties+::: { EnabledBaselineIdentifier: EnabledBaselineIdentifier },
    },
    '#withParameters': d.fn('`withParameters` Parameters ', [d.arg('Parameters', d.T.array)]),
    withParameters(Parameters): {
      assert std.isArray(Parameters) : 'Parameters must be a array',
      Properties+::: { Parameters: Parameters },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  EnabledControl: {
    '#': d.pkg(
      name='EnabledControl',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ControlTower.libsonnet',
      help='Enables a control on a specified target.',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ControlTower::EnabledControl Resource
        * TargetIdentifier Arn for Organizational unit to which the control needs to be applied
        * ControlIdentifier Arn of the control.
      |||,
      args=[
        d.arg('TargetIdentifier', 'd.T.string'),
        d.arg('ControlIdentifier', 'd.T.string'),
      ]
    ),
    new(
      TargetIdentifier,
      ControlIdentifier,
    ): {
      local base = self,
      Properties: {
        assert std.isString(TargetIdentifier) : 'TargetIdentifier must be a string',
        TargetIdentifier: TargetIdentifier,
        assert std.isString(ControlIdentifier) : 'ControlIdentifier must be a string',
        ControlIdentifier: ControlIdentifier,
      },
      DependsOn:: [],
      Type: 'AWS::ControlTower::EnabledControl',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withParameters': d.fn('`withParameters` Parameters ', [d.arg('Parameters', d.T.array)]),
    withParameters(Parameters): {
      assert std.isArray(Parameters) : 'Parameters must be a array',
      Properties+::: { Parameters: Parameters },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
  LandingZone: {
    '#': d.pkg(
      name='LandingZone',
      url='github.com/the-fittest/cloudformation-libsonnet/1.0.0/AWS/ControlTower.libsonnet',
      help='Definition of AWS::ControlTower::LandingZone Resource Type',
      filename=std.thisFile,
    ),
    '#new': d.fn(
      help=|||
        `new` creates a AWS::ControlTower::LandingZone Resource
        * Manifest 
        * Version 
      |||,
      args=[
        d.arg('Manifest', ''),
        d.arg('Version', 'd.T.string'),
      ]
    ),
    new(
      Manifest,
      Version,
    ): {
      local base = self,
      Properties: {
        // Type: undefined
        Manifest: Manifest,
        assert std.isString(Version) : 'Version must be a string',
        Version: Version,
      },
      DependsOn:: [],
      Type: 'AWS::ControlTower::LandingZone',
    },
    dependsOn(DependsOn): {
      DependsOn::: [DependsOn],
    },
    '#withStatus': d.fn('`withStatus` Status ', [d.arg('Status', d.T.string)]),
    withStatus(Status): {
      assert std.isString(Status) : 'Status must be a string',
      Properties+::: { Status: Status },
    },
    '#withLatestAvailableVersion': d.fn('`withLatestAvailableVersion` LatestAvailableVersion ', [d.arg('LatestAvailableVersion', d.T.string)]),
    withLatestAvailableVersion(LatestAvailableVersion): {
      assert std.isString(LatestAvailableVersion) : 'LatestAvailableVersion must be a string',
      Properties+::: { LatestAvailableVersion: LatestAvailableVersion },
    },
    '#withDriftStatus': d.fn('`withDriftStatus` DriftStatus ', [d.arg('DriftStatus', d.T.string)]),
    withDriftStatus(DriftStatus): {
      assert std.isString(DriftStatus) : 'DriftStatus must be a string',
      Properties+::: { DriftStatus: DriftStatus },
    },
    '#withArn': d.fn('`withArn` Arn ', [d.arg('Arn', d.T.string)]),
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: { Arn: Arn },
    },
    '#withLandingZoneIdentifier': d.fn('`withLandingZoneIdentifier` LandingZoneIdentifier ', [d.arg('LandingZoneIdentifier', d.T.string)]),
    withLandingZoneIdentifier(LandingZoneIdentifier): {
      assert std.isString(LandingZoneIdentifier) : 'LandingZoneIdentifier must be a string',
      Properties+::: { LandingZoneIdentifier: LandingZoneIdentifier },
    },
    '#withTags': d.fn('`withTags` Tags ', [d.arg('Tags', d.T.array)]),
    withTags(Tags): {
      assert std.isArray(Tags) : 'Tags must be a array',
      Properties+::: { Tags: Tags },
    },
  },
}
