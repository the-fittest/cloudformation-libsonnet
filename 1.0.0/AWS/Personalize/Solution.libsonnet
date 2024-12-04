{
  new(
    Name,
    DatasetGroupArn,
  ): {
    local base = self,
    Properties: {
      assert std.isString(Name) : 'Name must be a string',
      Name: Name,
      assert std.isString(DatasetGroupArn) : 'DatasetGroupArn must be a string',
      DatasetGroupArn: DatasetGroupArn,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Personalize::Solution',
  },
  withSolutionArn(SolutionArn): {
    assert std.isString(SolutionArn) : 'SolutionArn must be a string',
    Properties+::: {
      SolutionArn: SolutionArn,
    },
  },
  withEventType(EventType): {
    assert std.isString(EventType) : 'EventType must be a string',
    Properties+::: {
      EventType: EventType,
    },
  },
  withPerformAutoML(PerformAutoML): {
    assert std.isBoolean(PerformAutoML) : 'PerformAutoML must be a boolean',
    Properties+::: {
      PerformAutoML: PerformAutoML,
    },
  },
  withPerformHPO(PerformHPO): {
    assert std.isBoolean(PerformHPO) : 'PerformHPO must be a boolean',
    Properties+::: {
      PerformHPO: PerformHPO,
    },
  },
  withRecipeArn(RecipeArn): {
    assert std.isString(RecipeArn) : 'RecipeArn must be a string',
    Properties+::: {
      RecipeArn: RecipeArn,
    },
  },
  withSolutionConfig(SolutionConfig): {
    assert std.isObject(SolutionConfig) : 'SolutionConfig must be a object',
    Properties+::: {
      SolutionConfig: SolutionConfig,
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
