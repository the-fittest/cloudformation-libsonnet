{
  new(
    FromAddress,
    ApplicationId,
    Identity,
  ): {
    local base = self,
    Properties: {
      FromAddress:
        if !std.isString(FromAddress) then (error 'FromAddress must be a string')
        else if std.isEmpty(FromAddress) then (error 'FromAddress must be not empty')
        else FromAddress,
      ApplicationId:
        if !std.isString(ApplicationId) then (error 'ApplicationId must be a string')
        else if std.isEmpty(ApplicationId) then (error 'ApplicationId must be not empty')
        else ApplicationId,
      Identity:
        if !std.isString(Identity) then (error 'Identity must be a string')
        else if std.isEmpty(Identity) then (error 'Identity must be not empty')
        else Identity,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Pinpoint::EmailChannel',
  },
  setConfigurationSet(ConfigurationSet): {
    Properties+::: {
      ConfigurationSet:
        if !std.isString(ConfigurationSet) then (error 'ConfigurationSet must be a string')
        else if std.isEmpty(ConfigurationSet) then (error 'ConfigurationSet must be not empty')
        else ConfigurationSet,
    },
  },
  setOrchestrationSendingRoleArn(OrchestrationSendingRoleArn): {
    Properties+::: {
      OrchestrationSendingRoleArn:
        if !std.isString(OrchestrationSendingRoleArn) then (error 'OrchestrationSendingRoleArn must be a string')
        else if std.isEmpty(OrchestrationSendingRoleArn) then (error 'OrchestrationSendingRoleArn must be not empty')
        else OrchestrationSendingRoleArn,
    },
  },
  setEnabled(Enabled): {
    Properties+::: {
      Enabled:
        if !std.isBoolean(Enabled) then (error 'Enabled must be a boolean') else Enabled,
    },
  },
  setId(Id): {
    Properties+::: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else Id,
    },
  },
  setRoleArn(RoleArn): {
    Properties+::: {
      RoleArn:
        if !std.isString(RoleArn) then (error 'RoleArn must be a string')
        else if std.isEmpty(RoleArn) then (error 'RoleArn must be not empty')
        else RoleArn,
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
