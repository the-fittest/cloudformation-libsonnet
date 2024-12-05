{
  new(
    BaselineIdentifier,
    TargetIdentifier,
    BaselineVersion,
  ): {
    local base = self,
    Properties: {
      BaselineIdentifier:
        if !std.isString(BaselineIdentifier) then (error 'BaselineIdentifier must be a string')
        else if std.isEmpty(BaselineIdentifier) then (error 'BaselineIdentifier must be not empty')
        else if std.length(BaselineIdentifier) < 20 then error ('BaselineIdentifier should have at least 20 characters')
        else if std.length(BaselineIdentifier) > 2048 then error ('BaselineIdentifier should have not more than 2048 characters')
        else BaselineIdentifier,
      TargetIdentifier:
        if !std.isString(TargetIdentifier) then (error 'TargetIdentifier must be a string')
        else if std.isEmpty(TargetIdentifier) then (error 'TargetIdentifier must be not empty')
        else if std.length(TargetIdentifier) < 20 then error ('TargetIdentifier should have at least 20 characters')
        else if std.length(TargetIdentifier) > 2048 then error ('TargetIdentifier should have not more than 2048 characters')
        else TargetIdentifier,
      BaselineVersion:
        if !std.isString(BaselineVersion) then (error 'BaselineVersion must be a string')
        else if std.isEmpty(BaselineVersion) then (error 'BaselineVersion must be not empty')
        else BaselineVersion,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::ControlTower::EnabledBaseline',
  },
  setEnabledBaselineIdentifier(EnabledBaselineIdentifier): {
    Properties+::: {
      EnabledBaselineIdentifier:
        if !std.isString(EnabledBaselineIdentifier) then (error 'EnabledBaselineIdentifier must be a string')
        else if std.isEmpty(EnabledBaselineIdentifier) then (error 'EnabledBaselineIdentifier must be not empty')
        else if std.length(EnabledBaselineIdentifier) < 20 then error ('EnabledBaselineIdentifier should have at least 20 characters')
        else if std.length(EnabledBaselineIdentifier) > 2048 then error ('EnabledBaselineIdentifier should have not more than 2048 characters')
        else EnabledBaselineIdentifier,
    },
  },
  setParameters(Parameters): {
    Properties+::: {
      Parameters:
        if !std.isArray(Parameters) then (error 'Parameters must be an array')
        else Parameters,
    },
  },
  setParametersMixin(Parameters): {
    Properties+::: {
      Parameters+: Parameters,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else Tags,
    },
  },
  setTagsMixin(Tags): {
    Properties+::: {
      Tags+: Tags,
    },
  },
  setDependsOn(DependsOn): {
    Properties+::: {
      DependsOn: DependsOn,
    },
  },
  setDependsOnMixin(DependsOn): {
    Properties+::: {
      DependsOn+: DependsOn,
    },
  },
  setCreationPolicy(CreationPolicy): {
    Properties+::: {
      CreationPolicy: CreationPolicy,
    },
  },
  setCreationPolicyMixin(CreationPolicy): {
    Properties+::: {
      CreationPolicy+: CreationPolicy,
    },
  },
  setDeletionPolicy(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy: DeletionPolicy,
    },
  },
  setDeletionPolicyMixin(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy+: DeletionPolicy,
    },
  },
  setUpdatePolicy(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy: UpdatePolicy,
    },
  },
  setUpdatePolicyMixin(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy+: UpdatePolicy,
    },
  },
  setUpdateReplacePolicy(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy: UpdateReplacePolicy,
    },
  },
  setUpdateReplacePolicyMixin(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy+: UpdateReplacePolicy,
    },
  },
  setMetadata(Metadata): {
    Properties+::: {
      Metadata: Metadata,
    },
  },
  setMetadataMixin(Metadata): {
    Properties+::: {
      Metadata+: Metadata,
    },
  },
}
