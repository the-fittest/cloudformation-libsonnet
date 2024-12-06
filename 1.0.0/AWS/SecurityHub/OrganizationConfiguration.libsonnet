{
  new(
    AutoEnable,
  ): {
    local base = self,
    Properties: {
      AutoEnable:
        if !std.isBoolean(AutoEnable) then (error 'AutoEnable must be a boolean') else AutoEnable,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::SecurityHub::OrganizationConfiguration',
  },
  setAutoEnableStandards(AutoEnableStandards): {
    Properties+::: {
      AutoEnableStandards:
        if !std.isString(AutoEnableStandards) then (error 'AutoEnableStandards must be a string')
        else if std.isEmpty(AutoEnableStandards) then (error 'AutoEnableStandards must be not empty')
        else if AutoEnableStandards != 'DEFAULT' && AutoEnableStandards != 'NONE' then (error "AutoEnableStandards should be 'DEFAULT' or 'NONE'")
        else AutoEnableStandards,
    },
  },
  setConfigurationType(ConfigurationType): {
    Properties+::: {
      ConfigurationType:
        if !std.isString(ConfigurationType) then (error 'ConfigurationType must be a string')
        else if std.isEmpty(ConfigurationType) then (error 'ConfigurationType must be not empty')
        else if ConfigurationType != 'CENTRAL' && ConfigurationType != 'LOCAL' then (error "ConfigurationType should be 'CENTRAL' or 'LOCAL'")
        else ConfigurationType,
    },
  },
  setStatus(Status): {
    Properties+::: {
      Status:
        if !std.isString(Status) then (error 'Status must be a string')
        else if std.isEmpty(Status) then (error 'Status must be not empty')
        else if Status != 'PENDING' && Status != 'ENABLED' && Status != 'FAILED' then (error "Status should be 'PENDING' or 'ENABLED' or 'FAILED'")
        else Status,
    },
  },
  setStatusMessage(StatusMessage): {
    Properties+::: {
      StatusMessage:
        if !std.isString(StatusMessage) then (error 'StatusMessage must be a string')
        else if std.isEmpty(StatusMessage) then (error 'StatusMessage must be not empty')
        else StatusMessage,
    },
  },
  setMemberAccountLimitReached(MemberAccountLimitReached): {
    Properties+::: {
      MemberAccountLimitReached:
        if !std.isBoolean(MemberAccountLimitReached) then (error 'MemberAccountLimitReached must be a boolean') else MemberAccountLimitReached,
    },
  },
  setOrganizationConfigurationIdentifier(OrganizationConfigurationIdentifier): {
    Properties+::: {
      OrganizationConfigurationIdentifier:
        if !std.isString(OrganizationConfigurationIdentifier) then (error 'OrganizationConfigurationIdentifier must be a string')
        else if std.isEmpty(OrganizationConfigurationIdentifier) then (error 'OrganizationConfigurationIdentifier must be not empty')
        else OrganizationConfigurationIdentifier,
    },
  },
  setDependsOn(DependsOn): {
    Properties+::: {
      DependsOn: DependsOn,
    },
  },
  pushDependsOn(DependsOn): {
    Properties+::: {
      DependsOn+: DependsOn,
    },
  },
  setCreationPolicy(CreationPolicy): {
    Properties+::: {
      CreationPolicy: CreationPolicy,
    },
  },
  pushCreationPolicy(CreationPolicy): {
    Properties+::: {
      CreationPolicy+: CreationPolicy,
    },
  },
  setDeletionPolicy(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy: DeletionPolicy,
    },
  },
  pushDeletionPolicy(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy+: DeletionPolicy,
    },
  },
  setUpdatePolicy(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy: UpdatePolicy,
    },
  },
  pushUpdatePolicy(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy+: UpdatePolicy,
    },
  },
  setUpdateReplacePolicy(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy: UpdateReplacePolicy,
    },
  },
  pushUpdateReplacePolicy(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy+: UpdateReplacePolicy,
    },
  },
  setMetadata(Metadata): {
    Properties+::: {
      Metadata: Metadata,
    },
  },
  pushMetadata(Metadata): {
    Properties+::: {
      Metadata+: Metadata,
    },
  },
}
