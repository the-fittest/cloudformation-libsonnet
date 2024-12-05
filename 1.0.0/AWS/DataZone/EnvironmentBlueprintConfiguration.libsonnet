{
  new(
    DomainIdentifier,
    EnvironmentBlueprintIdentifier,
    EnabledRegions,
  ): {
    local base = self,
    Properties: {
      DomainIdentifier:
        if !std.isString(DomainIdentifier) then (error 'DomainIdentifier must be a string')
        else if std.isEmpty(DomainIdentifier) then (error 'DomainIdentifier must be not empty')
        else DomainIdentifier,
      EnvironmentBlueprintIdentifier:
        if !std.isString(EnvironmentBlueprintIdentifier) then (error 'EnvironmentBlueprintIdentifier must be a string')
        else if std.isEmpty(EnvironmentBlueprintIdentifier) then (error 'EnvironmentBlueprintIdentifier must be not empty')
        else EnvironmentBlueprintIdentifier,
      EnabledRegions:
        if !std.isArray(EnabledRegions) then (error 'EnabledRegions must be an array')
        else EnabledRegions,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::DataZone::EnvironmentBlueprintConfiguration',
  },
  setRegionalParameters(RegionalParameters): {
    Properties+::: {
      RegionalParameters:
        if !std.isArray(RegionalParameters) then (error 'RegionalParameters must be an array')
        else RegionalParameters,
    },
  },
  setRegionalParametersMixin(RegionalParameters): {
    Properties+::: {
      RegionalParameters+: RegionalParameters,
    },
  },
  setProvisioningRoleArn(ProvisioningRoleArn): {
    Properties+::: {
      ProvisioningRoleArn:
        if !std.isString(ProvisioningRoleArn) then (error 'ProvisioningRoleArn must be a string')
        else if std.isEmpty(ProvisioningRoleArn) then (error 'ProvisioningRoleArn must be not empty')
        else ProvisioningRoleArn,
    },
  },
  setDomainId(DomainId): {
    Properties+::: {
      DomainId:
        if !std.isString(DomainId) then (error 'DomainId must be a string')
        else if std.isEmpty(DomainId) then (error 'DomainId must be not empty')
        else DomainId,
    },
  },
  setCreatedAt(CreatedAt): {
    Properties+::: {
      CreatedAt:
        if !std.isString(CreatedAt) then (error 'CreatedAt must be a string')
        else if std.isEmpty(CreatedAt) then (error 'CreatedAt must be not empty')
        else CreatedAt,
    },
  },
  setEnvironmentBlueprintId(EnvironmentBlueprintId): {
    Properties+::: {
      EnvironmentBlueprintId:
        if !std.isString(EnvironmentBlueprintId) then (error 'EnvironmentBlueprintId must be a string')
        else if std.isEmpty(EnvironmentBlueprintId) then (error 'EnvironmentBlueprintId must be not empty')
        else EnvironmentBlueprintId,
    },
  },
  setUpdatedAt(UpdatedAt): {
    Properties+::: {
      UpdatedAt:
        if !std.isString(UpdatedAt) then (error 'UpdatedAt must be a string')
        else if std.isEmpty(UpdatedAt) then (error 'UpdatedAt must be not empty')
        else UpdatedAt,
    },
  },
  setManageAccessRoleArn(ManageAccessRoleArn): {
    Properties+::: {
      ManageAccessRoleArn:
        if !std.isString(ManageAccessRoleArn) then (error 'ManageAccessRoleArn must be a string')
        else if std.isEmpty(ManageAccessRoleArn) then (error 'ManageAccessRoleArn must be not empty')
        else ManageAccessRoleArn,
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
