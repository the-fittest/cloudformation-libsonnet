{
  new(
    TargetIdentifier,
    ControlIdentifier,
  ): {
    local base = self,
    Properties: {
      TargetIdentifier:
        if !std.isString(TargetIdentifier) then (error 'TargetIdentifier must be a string')
        else if std.isEmpty(TargetIdentifier) then (error 'TargetIdentifier must be not empty')
        else if std.length(TargetIdentifier) < 20 then error ('TargetIdentifier should have at least 20 characters')
        else if std.length(TargetIdentifier) > 2048 then error ('TargetIdentifier should have not more than 2048 characters')
        else TargetIdentifier,
      ControlIdentifier:
        if !std.isString(ControlIdentifier) then (error 'ControlIdentifier must be a string')
        else if std.isEmpty(ControlIdentifier) then (error 'ControlIdentifier must be not empty')
        else if std.length(ControlIdentifier) < 20 then error ('ControlIdentifier should have at least 20 characters')
        else if std.length(ControlIdentifier) > 2048 then error ('ControlIdentifier should have not more than 2048 characters')
        else ControlIdentifier,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::ControlTower::EnabledControl',
  },
  setParameters(Parameters): {
    Properties+::: {
      Parameters:
        if !std.isArray(Parameters) then (error 'Parameters must be an array')
        else if std.length(Parameters) < 1 then error ('Parameters cannot have less than 1 items')
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
        else if std.length(Tags) < 1 then error ('Tags cannot have less than 1 items')
        else if std.length(Tags) > 50 then error ('Tags cannot have more than 50 items')
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
