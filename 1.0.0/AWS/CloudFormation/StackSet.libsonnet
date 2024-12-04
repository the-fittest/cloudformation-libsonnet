{
  // AWS CloudFormation StackSet
  StackSet: {
    new(
      StackSetName,
      PermissionModel,
    ): {
      local base = self,
      Properties: {
        assert std.isString(StackSetName) : 'StackSetName must be a string',
        StackSetName: StackSetName,
        assert std.isString(PermissionModel) : 'PermissionModel must be a string',
        PermissionModel: PermissionModel,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::CloudFormation::StackSet',
    },
    withStackSetId(StackSetId): {
      assert std.isString(StackSetId) : 'StackSetId must be a string',
      Properties+::: {
        StackSetId: StackSetId,
      },
    },
    withAdministrationRoleARN(AdministrationRoleARN): {
      assert std.isString(AdministrationRoleARN) : 'AdministrationRoleARN must be a string',
      Properties+::: {
        AdministrationRoleARN: AdministrationRoleARN,
      },
    },
    withAutoDeployment(AutoDeployment): {
      assert std.isObject(AutoDeployment) : 'AutoDeployment must be a object',
      Properties+::: {
        AutoDeployment: AutoDeployment,
      },
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
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: {
        Description: Description,
      },
    },
    withExecutionRoleName(ExecutionRoleName): {
      assert std.isString(ExecutionRoleName) : 'ExecutionRoleName must be a string',
      Properties+::: {
        ExecutionRoleName: ExecutionRoleName,
      },
    },
    withOperationPreferences(OperationPreferences): {
      assert std.isObject(OperationPreferences) : 'OperationPreferences must be a object',
      Properties+::: {
        OperationPreferences: OperationPreferences,
      },
    },
    withStackInstancesGroup(StackInstancesGroup): {
      Properties+::: {
        StackInstancesGroup: (if std.isArray(StackInstancesGroup) then StackInstancesGroup else [StackInstancesGroup]),
      },
    },
    withStackInstancesGroupMixin(StackInstancesGroup): {
      Properties+::: {
        StackInstancesGroup+: (if std.isArray(StackInstancesGroup) then StackInstancesGroup else [StackInstancesGroup]),
      },
    },
    withParameters(Parameters): {
      Properties+::: {
        Parameters: (if std.isArray(Parameters) then Parameters else [Parameters]),
      },
    },
    withParametersMixin(Parameters): {
      Properties+::: {
        Parameters+: (if std.isArray(Parameters) then Parameters else [Parameters]),
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
      assert std.isString(TemplateBody) : 'TemplateBody must be a string',
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
    withCallAs(CallAs): {
      assert std.isString(CallAs) : 'CallAs must be a string',
      Properties+::: {
        CallAs: CallAs,
      },
    },
    withManagedExecution(ManagedExecution): {
      assert std.isObject(ManagedExecution) : 'ManagedExecution must be a object',
      Properties+::: {
        ManagedExecution: ManagedExecution,
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
