{
  new(
    FunctionName,
    Qualifier,
  ): {
    local base = self,
    Properties: {
      FunctionName:
        if !std.isString(FunctionName) then (error 'FunctionName must be a string')
        else if std.isEmpty(FunctionName) then (error 'FunctionName must be not empty')
        else FunctionName,
      Qualifier:
        if !std.isString(Qualifier) then (error 'Qualifier must be a string')
        else if std.isEmpty(Qualifier) then (error 'Qualifier must be not empty')
        else Qualifier,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Lambda::EventInvokeConfig',
  },
  setDestinationConfig(DestinationConfig): {
    Properties+::: {
      DestinationConfig:
        if !std.isObject(DestinationConfig) then (error 'DestinationConfig must be an object')
        else DestinationConfig,
    },
  },
  setMaximumEventAgeInSeconds(MaximumEventAgeInSeconds): {
    Properties+::: {
      MaximumEventAgeInSeconds:
        if !std.isNumber(MaximumEventAgeInSeconds) then (error 'MaximumEventAgeInSeconds must be an number')
        else if MaximumEventAgeInSeconds < 60 then error ('MaximumEventAgeInSeconds should be at least 60')
        else if MaximumEventAgeInSeconds > 21600 then error ('MaximumEventAgeInSeconds should be not more than 21600')
        else MaximumEventAgeInSeconds,
    },
  },
  setMaximumRetryAttempts(MaximumRetryAttempts): {
    Properties+::: {
      MaximumRetryAttempts:
        if !std.isNumber(MaximumRetryAttempts) then (error 'MaximumRetryAttempts must be an number')
        else if MaximumRetryAttempts > 2 then error ('MaximumRetryAttempts should be not more than 2')
        else MaximumRetryAttempts,
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
