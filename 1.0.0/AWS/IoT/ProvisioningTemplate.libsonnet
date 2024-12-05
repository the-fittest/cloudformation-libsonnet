{
  new(
    ProvisioningRoleArn,
    TemplateBody,
  ): {
    local base = self,
    Properties: {
      ProvisioningRoleArn:
        if !std.isString(ProvisioningRoleArn) then (error 'ProvisioningRoleArn must be a string')
        else if std.isEmpty(ProvisioningRoleArn) then (error 'ProvisioningRoleArn must be not empty')
        else ProvisioningRoleArn,
      TemplateBody:
        if !std.isString(TemplateBody) then (error 'TemplateBody must be a string')
        else if std.isEmpty(TemplateBody) then (error 'TemplateBody must be not empty')
        else TemplateBody,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::IoT::ProvisioningTemplate',
  },
  setTemplateArn(TemplateArn): {
    Properties+::: {
      TemplateArn:
        if !std.isString(TemplateArn) then (error 'TemplateArn must be a string')
        else if std.isEmpty(TemplateArn) then (error 'TemplateArn must be not empty')
        else TemplateArn,
    },
  },
  setTemplateName(TemplateName): {
    Properties+::: {
      TemplateName:
        if !std.isString(TemplateName) then (error 'TemplateName must be a string')
        else if std.isEmpty(TemplateName) then (error 'TemplateName must be not empty')
        else if std.length(TemplateName) < 1 then error ('TemplateName should have at least 1 characters')
        else if std.length(TemplateName) > 36 then error ('TemplateName should have not more than 36 characters')
        else TemplateName,
    },
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else if std.length(Description) > 500 then error ('Description should have not more than 500 characters')
        else Description,
    },
  },
  setEnabled(Enabled): {
    Properties+::: {
      Enabled:
        if !std.isBoolean(Enabled) then (error 'Enabled must be a boolean') else Enabled,
    },
  },
  setTemplateType(TemplateType): {
    Properties+::: {
      TemplateType:
        if !std.isString(TemplateType) then (error 'TemplateType must be a string')
        else if std.isEmpty(TemplateType) then (error 'TemplateType must be not empty')
        else if TemplateType != 'FLEET_PROVISIONING' && TemplateType != 'JITP' then (error "TemplateType should be 'FLEET_PROVISIONING' or 'JITP'")
        else TemplateType,
    },
  },
  setPreProvisioningHook(PreProvisioningHook): {
    Properties+::: {
      PreProvisioningHook:
        if !std.isObject(PreProvisioningHook) then (error 'PreProvisioningHook must be an object')
        else PreProvisioningHook,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else Tags,
    },
  },
  setTagsMixin(Tags): {
    Properties+::: {
      Tags+: Tags,
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
