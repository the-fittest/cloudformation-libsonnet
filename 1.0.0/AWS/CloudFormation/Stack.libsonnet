{
  new(
    StackName,
  ): {
    local base = self,
    Properties: {
      StackName:
        if !std.isString(StackName) then (error 'StackName must be a string')
        else if std.isEmpty(StackName) then (error 'StackName must be not empty')
        else StackName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::CloudFormation::Stack',
  },
  setCapabilities(Capabilities): {
    Properties+::: {
      Capabilities:
        if !std.isArray(Capabilities) then (error 'Capabilities must be an array')
        else Capabilities,
    },
  },
  pushCapabilities(Capabilities): {
    Properties+::: {
      Capabilities+: Capabilities,
    },
  },
  setRoleARN(RoleARN): {
    Properties+::: {
      RoleARN:
        if !std.isString(RoleARN) then (error 'RoleARN must be a string')
        else if std.isEmpty(RoleARN) then (error 'RoleARN must be not empty')
        else RoleARN,
    },
  },
  setOutputs(Outputs): {
    Properties+::: {
      Outputs:
        if !std.isArray(Outputs) then (error 'Outputs must be an array')
        else Outputs,
    },
  },
  pushOutputs(Outputs): {
    Properties+::: {
      Outputs+: Outputs,
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
  setDisableRollback(DisableRollback): {
    Properties+::: {
      DisableRollback:
        if !std.isBoolean(DisableRollback) then (error 'DisableRollback must be a boolean') else DisableRollback,
    },
  },
  setEnableTerminationProtection(EnableTerminationProtection): {
    Properties+::: {
      EnableTerminationProtection:
        if !std.isBoolean(EnableTerminationProtection) then (error 'EnableTerminationProtection must be a boolean') else EnableTerminationProtection,
    },
  },
  setNotificationARNs(NotificationARNs): {
    Properties+::: {
      NotificationARNs:
        if !std.isArray(NotificationARNs) then (error 'NotificationARNs must be an array')
        else if std.length(NotificationARNs) > 5 then error ('NotificationARNs cannot have more than 5 items')
        else NotificationARNs,
    },
  },
  pushNotificationARNs(NotificationARNs): {
    Properties+::: {
      NotificationARNs+: NotificationARNs,
    },
  },
  setParameters(Parameters): {
    Properties+::: {
      Parameters:
        if !std.isObject(Parameters) then (error 'Parameters must be an object')
        else Parameters,
    },
  },
  setParentId(ParentId): {
    Properties+::: {
      ParentId:
        if !std.isString(ParentId) then (error 'ParentId must be a string')
        else if std.isEmpty(ParentId) then (error 'ParentId must be not empty')
        else ParentId,
    },
  },
  setRootId(RootId): {
    Properties+::: {
      RootId:
        if !std.isString(RootId) then (error 'RootId must be a string')
        else if std.isEmpty(RootId) then (error 'RootId must be not empty')
        else RootId,
    },
  },
  setChangeSetId(ChangeSetId): {
    Properties+::: {
      ChangeSetId:
        if !std.isString(ChangeSetId) then (error 'ChangeSetId must be a string')
        else if std.isEmpty(ChangeSetId) then (error 'ChangeSetId must be not empty')
        else ChangeSetId,
    },
  },
  setStackId(StackId): {
    Properties+::: {
      StackId:
        if !std.isString(StackId) then (error 'StackId must be a string')
        else if std.isEmpty(StackId) then (error 'StackId must be not empty')
        else StackId,
    },
  },
  setStackPolicyBody(StackPolicyBody): {
    Properties+::: {
      StackPolicyBody:
        if !std.isObject(StackPolicyBody) then (error 'StackPolicyBody must be an object')
        else StackPolicyBody,
    },
  },
  setStackPolicyURL(StackPolicyURL): {
    Properties+::: {
      StackPolicyURL:
        if !std.isString(StackPolicyURL) then (error 'StackPolicyURL must be a string')
        else if std.isEmpty(StackPolicyURL) then (error 'StackPolicyURL must be not empty')
        else StackPolicyURL,
    },
  },
  setStackStatus(StackStatus): {
    Properties+::: {
      StackStatus:
        if !std.isString(StackStatus) then (error 'StackStatus must be a string')
        else if std.isEmpty(StackStatus) then (error 'StackStatus must be not empty')
        else if StackStatus != 'CREATE_IN_PROGRESS' && StackStatus != 'CREATE_FAILED' && StackStatus != 'CREATE_COMPLETE' && StackStatus != 'ROLLBACK_IN_PROGRESS' && StackStatus != 'ROLLBACK_FAILED' && StackStatus != 'ROLLBACK_COMPLETE' && StackStatus != 'DELETE_IN_PROGRESS' && StackStatus != 'DELETE_FAILED' && StackStatus != 'DELETE_COMPLETE' && StackStatus != 'UPDATE_IN_PROGRESS' && StackStatus != 'UPDATE_COMPLETE_CLEANUP_IN_PROGRESS' && StackStatus != 'UPDATE_COMPLETE' && StackStatus != 'UPDATE_FAILED' && StackStatus != 'UPDATE_ROLLBACK_IN_PROGRESS' && StackStatus != 'UPDATE_ROLLBACK_FAILED' && StackStatus != 'UPDATE_ROLLBACK_COMPLETE_CLEANUP_IN_PROGRESS' && StackStatus != 'UPDATE_ROLLBACK_COMPLETE' && StackStatus != 'REVIEW_IN_PROGRESS' && StackStatus != 'IMPORT_IN_PROGRESS' && StackStatus != 'IMPORT_COMPLETE' && StackStatus != 'IMPORT_ROLLBACK_IN_PROGRESS' && StackStatus != 'IMPORT_ROLLBACK_FAILED' && StackStatus != 'IMPORT_ROLLBACK_COMPLETE' then (error "StackStatus should be 'CREATE_IN_PROGRESS' or 'CREATE_FAILED' or 'CREATE_COMPLETE' or 'ROLLBACK_IN_PROGRESS' or 'ROLLBACK_FAILED' or 'ROLLBACK_COMPLETE' or 'DELETE_IN_PROGRESS' or 'DELETE_FAILED' or 'DELETE_COMPLETE' or 'UPDATE_IN_PROGRESS' or 'UPDATE_COMPLETE_CLEANUP_IN_PROGRESS' or 'UPDATE_COMPLETE' or 'UPDATE_FAILED' or 'UPDATE_ROLLBACK_IN_PROGRESS' or 'UPDATE_ROLLBACK_FAILED' or 'UPDATE_ROLLBACK_COMPLETE_CLEANUP_IN_PROGRESS' or 'UPDATE_ROLLBACK_COMPLETE' or 'REVIEW_IN_PROGRESS' or 'IMPORT_IN_PROGRESS' or 'IMPORT_COMPLETE' or 'IMPORT_ROLLBACK_IN_PROGRESS' or 'IMPORT_ROLLBACK_FAILED' or 'IMPORT_ROLLBACK_COMPLETE'")
        else StackStatus,
    },
  },
  setStackStatusReason(StackStatusReason): {
    Properties+::: {
      StackStatusReason:
        if !std.isString(StackStatusReason) then (error 'StackStatusReason must be a string')
        else if std.isEmpty(StackStatusReason) then (error 'StackStatusReason must be not empty')
        else StackStatusReason,
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
  pushTags(Tags): {
    Properties+::: {
      Tags+: Tags,
    },
  },
  setTemplateBody(TemplateBody): {
    Properties+::: {
      TemplateBody:
        if !std.isObject(TemplateBody) then (error 'TemplateBody must be an object')
        else TemplateBody,
    },
  },
  setTemplateURL(TemplateURL): {
    Properties+::: {
      TemplateURL:
        if !std.isString(TemplateURL) then (error 'TemplateURL must be a string')
        else if std.isEmpty(TemplateURL) then (error 'TemplateURL must be not empty')
        else if std.length(TemplateURL) < 1 then error ('TemplateURL should have at least 1 characters')
        else if std.length(TemplateURL) > 1024 then error ('TemplateURL should have not more than 1024 characters')
        else TemplateURL,
    },
  },
  setTimeoutInMinutes(TimeoutInMinutes): {
    Properties+::: {
      TimeoutInMinutes:
        if !std.isNumber(TimeoutInMinutes) then (error 'TimeoutInMinutes must be an number')
        else if TimeoutInMinutes < 1 then error ('TimeoutInMinutes should be at least 1')
        else TimeoutInMinutes,
    },
  },
  setLastUpdateTime(LastUpdateTime): {
    Properties+::: {
      LastUpdateTime:
        if !std.isString(LastUpdateTime) then (error 'LastUpdateTime must be a string')
        else if std.isEmpty(LastUpdateTime) then (error 'LastUpdateTime must be not empty')
        else LastUpdateTime,
    },
  },
  setCreationTime(CreationTime): {
    Properties+::: {
      CreationTime:
        if !std.isString(CreationTime) then (error 'CreationTime must be a string')
        else if std.isEmpty(CreationTime) then (error 'CreationTime must be not empty')
        else CreationTime,
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
