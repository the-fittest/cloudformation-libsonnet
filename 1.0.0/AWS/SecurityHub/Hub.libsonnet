{
  new(): {
    local base = self,
    Properties:: {},
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::SecurityHub::Hub',
  },
  setARN(ARN): {
    Properties+::: {
      ARN:
        if !std.isString(ARN) then (error 'ARN must be a string')
        else if std.isEmpty(ARN) then (error 'ARN must be not empty')
        else ARN,
    },
  },
  setEnableDefaultStandards(EnableDefaultStandards): {
    Properties+::: {
      EnableDefaultStandards:
        if !std.isBoolean(EnableDefaultStandards) then (error 'EnableDefaultStandards must be a boolean') else EnableDefaultStandards,
    },
  },
  setControlFindingGenerator(ControlFindingGenerator): {
    Properties+::: {
      ControlFindingGenerator:
        if !std.isString(ControlFindingGenerator) then (error 'ControlFindingGenerator must be a string')
        else if std.isEmpty(ControlFindingGenerator) then (error 'ControlFindingGenerator must be not empty')
        else ControlFindingGenerator,
    },
  },
  setAutoEnableControls(AutoEnableControls): {
    Properties+::: {
      AutoEnableControls:
        if !std.isBoolean(AutoEnableControls) then (error 'AutoEnableControls must be a boolean') else AutoEnableControls,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isObject(Tags) then (error 'Tags must be an object')
        else Tags,
    },
  },
  setSubscribedAt(SubscribedAt): {
    Properties+::: {
      SubscribedAt:
        if !std.isString(SubscribedAt) then (error 'SubscribedAt must be a string')
        else if std.isEmpty(SubscribedAt) then (error 'SubscribedAt must be not empty')
        else SubscribedAt,
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
