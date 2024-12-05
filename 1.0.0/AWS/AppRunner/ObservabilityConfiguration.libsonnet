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
    Type: 'AWS::AppRunner::ObservabilityConfiguration',
  },
  setObservabilityConfigurationArn(ObservabilityConfigurationArn): {
    Properties+::: {
      ObservabilityConfigurationArn:
        if !std.isString(ObservabilityConfigurationArn) then (error 'ObservabilityConfigurationArn must be a string')
        else if std.isEmpty(ObservabilityConfigurationArn) then (error 'ObservabilityConfigurationArn must be not empty')
        else if std.length(ObservabilityConfigurationArn) < 1 then error ('ObservabilityConfigurationArn should have at least 1 characters')
        else if std.length(ObservabilityConfigurationArn) > 1011 then error ('ObservabilityConfigurationArn should have not more than 1011 characters')
        else ObservabilityConfigurationArn,
    },
  },
  setObservabilityConfigurationName(ObservabilityConfigurationName): {
    Properties+::: {
      ObservabilityConfigurationName:
        if !std.isString(ObservabilityConfigurationName) then (error 'ObservabilityConfigurationName must be a string')
        else if std.isEmpty(ObservabilityConfigurationName) then (error 'ObservabilityConfigurationName must be not empty')
        else if std.length(ObservabilityConfigurationName) < 4 then error ('ObservabilityConfigurationName should have at least 4 characters')
        else if std.length(ObservabilityConfigurationName) > 32 then error ('ObservabilityConfigurationName should have not more than 32 characters')
        else ObservabilityConfigurationName,
    },
  },
  setObservabilityConfigurationRevision(ObservabilityConfigurationRevision): {
    Properties+::: {
      ObservabilityConfigurationRevision:
        if !std.isNumber(ObservabilityConfigurationRevision) then (error 'ObservabilityConfigurationRevision must be an number')
        else ObservabilityConfigurationRevision,
    },
  },
  setLatest(Latest): {
    Properties+::: {
      Latest:
        if !std.isBoolean(Latest) then (error 'Latest must be a boolean') else Latest,
    },
  },
  setTraceConfiguration(TraceConfiguration): {
    Properties+::: {
      TraceConfiguration:
        if !std.isObject(TraceConfiguration) then (error 'TraceConfiguration must be an object')
        else if !std.objectHas(TraceConfiguration, 'Vendor') then (error ' have attribute Vendor')
        else TraceConfiguration,
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
