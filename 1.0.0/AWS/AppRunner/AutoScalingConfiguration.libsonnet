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
    Type: 'AWS::AppRunner::AutoScalingConfiguration',
  },
  setAutoScalingConfigurationArn(AutoScalingConfigurationArn): {
    Properties+::: {
      AutoScalingConfigurationArn:
        if !std.isString(AutoScalingConfigurationArn) then (error 'AutoScalingConfigurationArn must be a string')
        else if std.isEmpty(AutoScalingConfigurationArn) then (error 'AutoScalingConfigurationArn must be not empty')
        else if std.length(AutoScalingConfigurationArn) < 1 then error ('AutoScalingConfigurationArn should have at least 1 characters')
        else if std.length(AutoScalingConfigurationArn) > 1011 then error ('AutoScalingConfigurationArn should have not more than 1011 characters')
        else AutoScalingConfigurationArn,
    },
  },
  setAutoScalingConfigurationName(AutoScalingConfigurationName): {
    Properties+::: {
      AutoScalingConfigurationName:
        if !std.isString(AutoScalingConfigurationName) then (error 'AutoScalingConfigurationName must be a string')
        else if std.isEmpty(AutoScalingConfigurationName) then (error 'AutoScalingConfigurationName must be not empty')
        else if std.length(AutoScalingConfigurationName) < 4 then error ('AutoScalingConfigurationName should have at least 4 characters')
        else if std.length(AutoScalingConfigurationName) > 32 then error ('AutoScalingConfigurationName should have not more than 32 characters')
        else AutoScalingConfigurationName,
    },
  },
  setAutoScalingConfigurationRevision(AutoScalingConfigurationRevision): {
    Properties+::: {
      AutoScalingConfigurationRevision:
        if !std.isNumber(AutoScalingConfigurationRevision) then (error 'AutoScalingConfigurationRevision must be an number')
        else AutoScalingConfigurationRevision,
    },
  },
  setMaxConcurrency(MaxConcurrency): {
    Properties+::: {
      MaxConcurrency:
        if !std.isNumber(MaxConcurrency) then (error 'MaxConcurrency must be an number')
        else MaxConcurrency,
    },
  },
  setMaxSize(MaxSize): {
    Properties+::: {
      MaxSize:
        if !std.isNumber(MaxSize) then (error 'MaxSize must be an number')
        else MaxSize,
    },
  },
  setMinSize(MinSize): {
    Properties+::: {
      MinSize:
        if !std.isNumber(MinSize) then (error 'MinSize must be an number')
        else MinSize,
    },
  },
  setLatest(Latest): {
    Properties+::: {
      Latest:
        if !std.isBoolean(Latest) then (error 'Latest must be a boolean') else Latest,
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
