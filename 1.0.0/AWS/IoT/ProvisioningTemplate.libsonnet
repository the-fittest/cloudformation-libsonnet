{
  // AWS IoT ProvisioningTemplate
  ProvisioningTemplate: {
    new(
      ProvisioningRoleArn,
      TemplateBody,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ProvisioningRoleArn) : 'ProvisioningRoleArn must be a string',
        ProvisioningRoleArn: ProvisioningRoleArn,
        assert std.isString(TemplateBody) : 'TemplateBody must be a string',
        TemplateBody: TemplateBody,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::IoT::ProvisioningTemplate',
    },
    withTemplateArn(TemplateArn): {
      assert std.isString(TemplateArn) : 'TemplateArn must be a string',
      Properties+::: {
        TemplateArn: TemplateArn,
      },
    },
    withTemplateName(TemplateName): {
      assert std.isString(TemplateName) : 'TemplateName must be a string',
      Properties+::: {
        TemplateName: TemplateName,
      },
    },
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: {
        Description: Description,
      },
    },
    withEnabled(Enabled): {
      assert std.isBoolean(Enabled) : 'Enabled must be a boolean',
      Properties+::: {
        Enabled: Enabled,
      },
    },
    withTemplateType(TemplateType): {
      assert std.isString(TemplateType) : 'TemplateType must be a string',
      Properties+::: {
        TemplateType: TemplateType,
      },
    },
    withPreProvisioningHook(PreProvisioningHook): {
      assert std.isObject(PreProvisioningHook) : 'PreProvisioningHook must be a object',
      Properties+::: {
        PreProvisioningHook: PreProvisioningHook,
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
