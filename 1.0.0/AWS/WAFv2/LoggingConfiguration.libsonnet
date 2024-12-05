{
  new(
    ResourceArn,
    LogDestinationConfigs,
  ): {
    local base = self,
    Properties: {
      ResourceArn:
        if !std.isString(ResourceArn) then (error 'ResourceArn must be a string')
        else if std.isEmpty(ResourceArn) then (error 'ResourceArn must be not empty')
        else ResourceArn,
      LogDestinationConfigs:
        if !std.isArray(LogDestinationConfigs) then (error 'LogDestinationConfigs must be an array')
        else LogDestinationConfigs,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::WAFv2::LoggingConfiguration',
  },
  setRedactedFields(RedactedFields): {
    Properties+::: {
      RedactedFields:
        if !std.isArray(RedactedFields) then (error 'RedactedFields must be an array')
        else RedactedFields,
    },
  },
  setRedactedFieldsMixin(RedactedFields): {
    Properties+::: {
      RedactedFields+: RedactedFields,
    },
  },
  setManagedByFirewallManager(ManagedByFirewallManager): {
    Properties+::: {
      ManagedByFirewallManager:
        if !std.isBoolean(ManagedByFirewallManager) then (error 'ManagedByFirewallManager must be a boolean') else ManagedByFirewallManager,
    },
  },
  setLoggingFilter(LoggingFilter): {
    Properties+::: {
      LoggingFilter:
        if !std.isObject(LoggingFilter) then (error 'LoggingFilter must be an object')
        else if !std.objectHas(LoggingFilter, 'DefaultBehavior') then (error ' have attribute DefaultBehavior')
        else if !std.objectHas(LoggingFilter, 'Filters') then (error ' have attribute Filters')
        else LoggingFilter,
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
