{
  new(
    Name,
  ): {
    local base = self,
    Properties: {
      assert std.isString(Name) : 'Name must be a string',
      Name: Name,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::ApplicationSignals::ServiceLevelObjective',
  },
  withArn(Arn): {
    assert std.isString(Arn) : 'Arn must be a string',
    Properties+::: {
      Arn: Arn,
    },
  },
  withDescription(Description): {
    assert std.isString(Description) : 'Description must be a string',
    Properties+::: {
      Description: Description,
    },
  },
  withCreatedTime(CreatedTime): {
    assert std.isNumber(CreatedTime) : 'CreatedTime must be a number',
    Properties+::: {
      CreatedTime: CreatedTime,
    },
  },
  withLastUpdatedTime(LastUpdatedTime): {
    assert std.isNumber(LastUpdatedTime) : 'LastUpdatedTime must be a number',
    Properties+::: {
      LastUpdatedTime: LastUpdatedTime,
    },
  },
  withSli(Sli): {
    assert std.isObject(Sli) : 'Sli must be a object',
    Properties+::: {
      Sli: Sli,
    },
  },
  withRequestBasedSli(RequestBasedSli): {
    assert std.isObject(RequestBasedSli) : 'RequestBasedSli must be a object',
    Properties+::: {
      RequestBasedSli: RequestBasedSli,
    },
  },
  withEvaluationType(EvaluationType): {
    assert std.isString(EvaluationType) : 'EvaluationType must be a string',
    Properties+::: {
      EvaluationType: EvaluationType,
    },
  },
  withGoal(Goal): {
    assert std.isObject(Goal) : 'Goal must be a object',
    Properties+::: {
      Goal: Goal,
    },
  },
  withTags(Tags): {
    Properties+::: {
      Tags: (if std.isArray(Tags) then Tags else [Tags]),
    },
  },
  withTagsMixin(Tags): {
    Properties+::: {
      Tags+: (if std.isArray(Tags) then Tags else [Tags]),
    },
  },
  withBurnRateConfigurations(BurnRateConfigurations): {
    Properties+::: {
      BurnRateConfigurations: (if std.isArray(BurnRateConfigurations) then BurnRateConfigurations else [BurnRateConfigurations]),
    },
  },
  withBurnRateConfigurationsMixin(BurnRateConfigurations): {
    Properties+::: {
      BurnRateConfigurations+: (if std.isArray(BurnRateConfigurations) then BurnRateConfigurations else [BurnRateConfigurations]),
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
