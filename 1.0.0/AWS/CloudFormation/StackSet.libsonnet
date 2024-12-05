{
  new(
    StackSetName,
    PermissionModel,
  ): {
    local base = self,
    Properties: {
      StackSetName:
        if !std.isString(StackSetName) then (error 'StackSetName must be a string')
        else if std.isEmpty(StackSetName) then (error 'StackSetName must be not empty')
        else if std.length(StackSetName) > 128 then error ('StackSetName should have not more than 128 characters')
        else StackSetName,
      PermissionModel:
        if !std.isString(PermissionModel) then (error 'PermissionModel must be a string')
        else if std.isEmpty(PermissionModel) then (error 'PermissionModel must be not empty')
        else if PermissionModel != 'SERVICE_MANAGED' && PermissionModel != 'SELF_MANAGED' then (error "PermissionModel should be 'SERVICE_MANAGED' or 'SELF_MANAGED'")
        else PermissionModel,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::CloudFormation::StackSet',
  },
  setStackSetId(StackSetId): {
    Properties+::: {
      StackSetId:
        if !std.isString(StackSetId) then (error 'StackSetId must be a string')
        else if std.isEmpty(StackSetId) then (error 'StackSetId must be not empty')
        else StackSetId,
    },
  },
  setAdministrationRoleARN(AdministrationRoleARN): {
    Properties+::: {
      AdministrationRoleARN:
        if !std.isString(AdministrationRoleARN) then (error 'AdministrationRoleARN must be a string')
        else if std.isEmpty(AdministrationRoleARN) then (error 'AdministrationRoleARN must be not empty')
        else if std.length(AdministrationRoleARN) < 20 then error ('AdministrationRoleARN should have at least 20 characters')
        else if std.length(AdministrationRoleARN) > 2048 then error ('AdministrationRoleARN should have not more than 2048 characters')
        else AdministrationRoleARN,
    },
  },
  setAutoDeployment(AutoDeployment): {
    Properties+::: {
      AutoDeployment:
        if !std.isObject(AutoDeployment) then (error 'AutoDeployment must be an object')
        else AutoDeployment,
    },
  },
  setCapabilities(Capabilities): {
    Properties+::: {
      Capabilities:
        if !std.isArray(Capabilities) then (error 'Capabilities must be an array')
        else Capabilities,
    },
  },
  setCapabilitiesMixin(Capabilities): {
    Properties+::: {
      Capabilities+: Capabilities,
    },
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else if std.length(Description) < 1 then error ('Description should have at least 1 characters')
        else if std.length(Description) > 1024 then error ('Description should have not more than 1024 characters')
        else Description,
    },
  },
  setExecutionRoleName(ExecutionRoleName): {
    Properties+::: {
      ExecutionRoleName:
        if !std.isString(ExecutionRoleName) then (error 'ExecutionRoleName must be a string')
        else if std.isEmpty(ExecutionRoleName) then (error 'ExecutionRoleName must be not empty')
        else if std.length(ExecutionRoleName) < 1 then error ('ExecutionRoleName should have at least 1 characters')
        else if std.length(ExecutionRoleName) > 64 then error ('ExecutionRoleName should have not more than 64 characters')
        else ExecutionRoleName,
    },
  },
  setOperationPreferences(OperationPreferences): {
    Properties+::: {
      OperationPreferences:
        if !std.isObject(OperationPreferences) then (error 'OperationPreferences must be an object')
        else OperationPreferences,
    },
  },
  setStackInstancesGroup(StackInstancesGroup): {
    Properties+::: {
      StackInstancesGroup:
        if !std.isArray(StackInstancesGroup) then (error 'StackInstancesGroup must be an array')
        else StackInstancesGroup,
    },
  },
  setStackInstancesGroupMixin(StackInstancesGroup): {
    Properties+::: {
      StackInstancesGroup+: StackInstancesGroup,
    },
  },
  setParameters(Parameters): {
    Properties+::: {
      Parameters:
        if !std.isArray(Parameters) then (error 'Parameters must be an array')
        else Parameters,
    },
  },
  setParametersMixin(Parameters): {
    Properties+::: {
      Parameters+: Parameters,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else if std.length(Tags) > 50 then error ('Tags cannot have more than 50 items')
        else Tags,
    },
  },
  setTagsMixin(Tags): {
    Properties+::: {
      Tags+: Tags,
    },
  },
  setTemplateBody(TemplateBody): {
    Properties+::: {
      TemplateBody:
        if !std.isString(TemplateBody) then (error 'TemplateBody must be a string')
        else if std.isEmpty(TemplateBody) then (error 'TemplateBody must be not empty')
        else if std.length(TemplateBody) < 1 then error ('TemplateBody should have at least 1 characters')
        else if std.length(TemplateBody) > 51200 then error ('TemplateBody should have not more than 51200 characters')
        else TemplateBody,
    },
  },
  setTemplateURL(TemplateURL): {
    Properties+::: {
      TemplateURL:
        if !std.isString(TemplateURL) then (error 'TemplateURL must be a string')
        else if std.isEmpty(TemplateURL) then (error 'TemplateURL must be not empty')
        else if std.length(TemplateURL) < 1 then error ('TemplateURL should have at least 1 characters')
        else if std.length(TemplateURL) > 5120 then error ('TemplateURL should have not more than 5120 characters')
        else TemplateURL,
    },
  },
  setCallAs(CallAs): {
    Properties+::: {
      CallAs:
        if !std.isString(CallAs) then (error 'CallAs must be a string')
        else if std.isEmpty(CallAs) then (error 'CallAs must be not empty')
        else if CallAs != 'SELF' && CallAs != 'DELEGATED_ADMIN' then (error "CallAs should be 'SELF' or 'DELEGATED_ADMIN'")
        else CallAs,
    },
  },
  setManagedExecution(ManagedExecution): {
    Properties+::: {
      ManagedExecution:
        if !std.isObject(ManagedExecution) then (error 'ManagedExecution must be an object')
        else ManagedExecution,
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
