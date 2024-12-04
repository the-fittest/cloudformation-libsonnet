{
  new(
    AutoEnable,
  ): {
    local base = self,
    Properties: {
      assert std.isBoolean(AutoEnable) : 'AutoEnable must be a boolean',
      AutoEnable: AutoEnable,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::SecurityHub::OrganizationConfiguration',
  },
  withAutoEnableStandards(AutoEnableStandards): {
    assert std.isString(AutoEnableStandards) : 'AutoEnableStandards must be a string',
    assert AutoEnableStandards == 'DEFAULT' || AutoEnableStandards == 'NONE' : "AutoEnableStandards should be 'DEFAULT' or 'NONE'",
    Properties+::: {
      AutoEnableStandards: AutoEnableStandards,
    },
  },
  withConfigurationType(ConfigurationType): {
    assert std.isString(ConfigurationType) : 'ConfigurationType must be a string',
    assert ConfigurationType == 'CENTRAL' || ConfigurationType == 'LOCAL' : "ConfigurationType should be 'CENTRAL' or 'LOCAL'",
    Properties+::: {
      ConfigurationType: ConfigurationType,
    },
  },
  withStatus(Status): {
    assert std.isString(Status) : 'Status must be a string',
    assert Status == 'PENDING' || Status == 'ENABLED' || Status == 'FAILED' : "Status should be 'PENDING' or 'ENABLED' or 'FAILED'",
    Properties+::: {
      Status: Status,
    },
  },
  withStatusMessage(StatusMessage): {
    assert std.isString(StatusMessage) : 'StatusMessage must be a string',
    Properties+::: {
      StatusMessage: StatusMessage,
    },
  },
  withMemberAccountLimitReached(MemberAccountLimitReached): {
    assert std.isBoolean(MemberAccountLimitReached) : 'MemberAccountLimitReached must be a boolean',
    Properties+::: {
      MemberAccountLimitReached: MemberAccountLimitReached,
    },
  },
  withOrganizationConfigurationIdentifier(OrganizationConfigurationIdentifier): {
    assert std.isString(OrganizationConfigurationIdentifier) : 'OrganizationConfigurationIdentifier must be a string',
    Properties+::: {
      OrganizationConfigurationIdentifier: OrganizationConfigurationIdentifier,
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
