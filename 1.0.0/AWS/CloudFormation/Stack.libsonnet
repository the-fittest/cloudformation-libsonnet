{
  new(
    StackName,
  ): {
    local base = self,
    Properties: {
      assert std.isString(StackName) : 'StackName must be a string',
      StackName: StackName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::CloudFormation::Stack',
  },
  withCapabilities(Capabilities): {
    Properties+::: {
      Capabilities: (if std.isArray(Capabilities) then Capabilities else [Capabilities]),
    },
  },
  withCapabilitiesMixin(Capabilities): {
    Properties+::: {
      Capabilities+: (if std.isArray(Capabilities) then Capabilities else [Capabilities]),
    },
  },
  withRoleARN(RoleARN): {
    assert std.isString(RoleARN) : 'RoleARN must be a string',
    Properties+::: {
      RoleARN: RoleARN,
    },
  },
  withOutputs(Outputs): {
    Properties+::: {
      Outputs: (if std.isArray(Outputs) then Outputs else [Outputs]),
    },
  },
  withOutputsMixin(Outputs): {
    Properties+::: {
      Outputs+: (if std.isArray(Outputs) then Outputs else [Outputs]),
    },
  },
  withDescription(Description): {
    assert std.isString(Description) : 'Description must be a string',
    Properties+::: {
      Description: Description,
    },
  },
  withDisableRollback(DisableRollback): {
    assert std.isBoolean(DisableRollback) : 'DisableRollback must be a boolean',
    Properties+::: {
      DisableRollback: DisableRollback,
    },
  },
  withEnableTerminationProtection(EnableTerminationProtection): {
    assert std.isBoolean(EnableTerminationProtection) : 'EnableTerminationProtection must be a boolean',
    Properties+::: {
      EnableTerminationProtection: EnableTerminationProtection,
    },
  },
  withNotificationARNs(NotificationARNs): {
    Properties+::: {
      NotificationARNs: (if std.isArray(NotificationARNs) then NotificationARNs else [NotificationARNs]),
    },
  },
  withNotificationARNsMixin(NotificationARNs): {
    Properties+::: {
      NotificationARNs+: (if std.isArray(NotificationARNs) then NotificationARNs else [NotificationARNs]),
    },
  },
  withParameters(Parameters): {
    assert std.isObject(Parameters) : 'Parameters must be a object',
    Properties+::: {
      Parameters: Parameters,
    },
  },
  withParentId(ParentId): {
    assert std.isString(ParentId) : 'ParentId must be a string',
    Properties+::: {
      ParentId: ParentId,
    },
  },
  withRootId(RootId): {
    assert std.isString(RootId) : 'RootId must be a string',
    Properties+::: {
      RootId: RootId,
    },
  },
  withChangeSetId(ChangeSetId): {
    assert std.isString(ChangeSetId) : 'ChangeSetId must be a string',
    Properties+::: {
      ChangeSetId: ChangeSetId,
    },
  },
  withStackId(StackId): {
    assert std.isString(StackId) : 'StackId must be a string',
    Properties+::: {
      StackId: StackId,
    },
  },
  withStackPolicyBody(StackPolicyBody): {
    assert std.isObject(StackPolicyBody) : 'StackPolicyBody must be a object',
    Properties+::: {
      StackPolicyBody: StackPolicyBody,
    },
  },
  withStackPolicyURL(StackPolicyURL): {
    assert std.isString(StackPolicyURL) : 'StackPolicyURL must be a string',
    Properties+::: {
      StackPolicyURL: StackPolicyURL,
    },
  },
  withStackStatus(StackStatus): {
    assert std.isString(StackStatus) : 'StackStatus must be a string',
    Properties+::: {
      StackStatus: StackStatus,
    },
  },
  withStackStatusReason(StackStatusReason): {
    assert std.isString(StackStatusReason) : 'StackStatusReason must be a string',
    Properties+::: {
      StackStatusReason: StackStatusReason,
    },
  },
  withTags(Tags): {
    Properties+::: {
      Tags: (if std.isArray(Tags) then Tags else [Tags]),
    },
  },
  withTagsMixin(Tags): {
    Properties+::: {
      Tags+: (if std.isArray(Tags) then Tags else [Tags]),
    },
  },
  withTemplateBody(TemplateBody): {
    assert std.isObject(TemplateBody) : 'TemplateBody must be a object',
    Properties+::: {
      TemplateBody: TemplateBody,
    },
  },
  withTemplateURL(TemplateURL): {
    assert std.isString(TemplateURL) : 'TemplateURL must be a string',
    Properties+::: {
      TemplateURL: TemplateURL,
    },
  },
  withTimeoutInMinutes(TimeoutInMinutes): {
    assert std.isNumber(TimeoutInMinutes) : 'TimeoutInMinutes must be a number',
    Properties+::: {
      TimeoutInMinutes: TimeoutInMinutes,
    },
  },
  withLastUpdateTime(LastUpdateTime): {
    assert std.isString(LastUpdateTime) : 'LastUpdateTime must be a string',
    Properties+::: {
      LastUpdateTime: LastUpdateTime,
    },
  },
  withCreationTime(CreationTime): {
    assert std.isString(CreationTime) : 'CreationTime must be a string',
    Properties+::: {
      CreationTime: CreationTime,
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
