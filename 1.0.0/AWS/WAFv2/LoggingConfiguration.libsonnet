{
  // AWS WAFv2 LoggingConfiguration
  LoggingConfiguration: {
    new(
      ResourceArn,
      LogDestinationConfigs,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ResourceArn) : 'ResourceArn must be a string',
        ResourceArn: ResourceArn,
        LogDestinationConfigs: (if std.isArray(LogDestinationConfigs) then LogDestinationConfigs else [LogDestinationConfigs]),
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::WAFv2::LoggingConfiguration',
    },
    withRedactedFields(RedactedFields): {
      Properties+::: {
        RedactedFields: (if std.isArray(RedactedFields) then RedactedFields else [RedactedFields]),
      },
    },
    withRedactedFieldsMixin(RedactedFields): {
      Properties+::: {
        RedactedFields+: (if std.isArray(RedactedFields) then RedactedFields else [RedactedFields]),
      },
    },
    withManagedByFirewallManager(ManagedByFirewallManager): {
      assert std.isBoolean(ManagedByFirewallManager) : 'ManagedByFirewallManager must be a boolean',
      Properties+::: {
        ManagedByFirewallManager: ManagedByFirewallManager,
      },
    },
    withLoggingFilter(LoggingFilter): {
      assert std.isObject(LoggingFilter) : 'LoggingFilter must be a object',
      Properties+::: {
        LoggingFilter: LoggingFilter,
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
  },
}
