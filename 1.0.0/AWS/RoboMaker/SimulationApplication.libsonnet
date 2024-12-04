{
  new(
    RobotSoftwareSuite,
    SimulationSoftwareSuite,
  ): {
    local base = self,
    Properties: {
      assert std.isObject(RobotSoftwareSuite) : 'RobotSoftwareSuite must be an object',
      RobotSoftwareSuite: RobotSoftwareSuite,
      assert std.isObject(SimulationSoftwareSuite) : 'SimulationSoftwareSuite must be an object',
      SimulationSoftwareSuite: SimulationSoftwareSuite,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::RoboMaker::SimulationApplication',
  },
  withArn(Arn): {
    assert std.isString(Arn) : 'Arn must be a string',
    Properties+::: {
      Arn: Arn,
    },
  },
  withName(Name): {
    assert std.isString(Name) : 'Name must be a string',
    Properties+::: {
      Name: Name,
    },
  },
  withCurrentRevisionId(CurrentRevisionId): {
    assert std.isString(CurrentRevisionId) : 'CurrentRevisionId must be a string',
    Properties+::: {
      CurrentRevisionId: CurrentRevisionId,
    },
  },
  withRenderingEngine(RenderingEngine): {
    assert std.isObject(RenderingEngine) : 'RenderingEngine must be a object',
    Properties+::: {
      RenderingEngine: RenderingEngine,
    },
  },
  withSources(Sources): {
    Properties+::: {
      Sources: (if std.isArray(Sources) then Sources else [Sources]),
    },
  },
  withSourcesMixin(Sources): {
    Properties+::: {
      Sources+: (if std.isArray(Sources) then Sources else [Sources]),
    },
  },
  withEnvironment(Environment): {
    assert std.isString(Environment) : 'Environment must be a string',
    Properties+::: {
      Environment: Environment,
    },
  },
  withTags(Tags): {
    assert std.isObject(Tags) : 'Tags must be a object',
    Properties+::: {
      Tags: Tags,
    },
  },
  withDependsOn(DependsOn): {
    Properties+::: {
      DependsOn: (if std.isArray(DependsOn) then DependsOn else [DependsOn]),
    },
  },
  withDependsOnMixin(DependsOn): {
    Properties+::: {
      DependsOn+: (if std.isArray(DependsOn) then DependsOn else [DependsOn]),
    },
  },
  withCreationPolicy(CreationPolicy): {
    Properties+::: {
      CreationPolicy: (if std.isArray(CreationPolicy) then CreationPolicy else [CreationPolicy]),
    },
  },
  withCreationPolicyMixin(CreationPolicy): {
    Properties+::: {
      CreationPolicy+: (if std.isArray(CreationPolicy) then CreationPolicy else [CreationPolicy]),
    },
  },
  withDeletionPolicy(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy: (if std.isArray(DeletionPolicy) then DeletionPolicy else [DeletionPolicy]),
    },
  },
  withDeletionPolicyMixin(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy+: (if std.isArray(DeletionPolicy) then DeletionPolicy else [DeletionPolicy]),
    },
  },
  withUpdatePolicy(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy: (if std.isArray(UpdatePolicy) then UpdatePolicy else [UpdatePolicy]),
    },
  },
  withUpdatePolicyMixin(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy+: (if std.isArray(UpdatePolicy) then UpdatePolicy else [UpdatePolicy]),
    },
  },
  withUpdateReplacePolicy(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy: (if std.isArray(UpdateReplacePolicy) then UpdateReplacePolicy else [UpdateReplacePolicy]),
    },
  },
  withUpdateReplacePolicyMixin(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy+: (if std.isArray(UpdateReplacePolicy) then UpdateReplacePolicy else [UpdateReplacePolicy]),
    },
  },
  withMetadata(Metadata): {
    Properties+::: {
      Metadata: (if std.isArray(Metadata) then Metadata else [Metadata]),
    },
  },
  withMetadataMixin(Metadata): {
    Properties+::: {
      Metadata+: (if std.isArray(Metadata) then Metadata else [Metadata]),
    },
  },
}
