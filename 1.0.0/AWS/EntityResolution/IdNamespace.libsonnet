{
  new(
    IdNamespaceName,
    Type,
  ): {
    local base = self,
    Properties: {
      IdNamespaceName:
        if !std.isString(IdNamespaceName) then (error 'IdNamespaceName must be a string')
        else if std.isEmpty(IdNamespaceName) then (error 'IdNamespaceName must be not empty')
        else if std.length(IdNamespaceName) < 1 then error ('IdNamespaceName should have at least 1 characters')
        else if std.length(IdNamespaceName) > 255 then error ('IdNamespaceName should have not more than 255 characters')
        else IdNamespaceName,
      Type:
        if !std.isString(Type) then (error 'Type must be a string')
        else if std.isEmpty(Type) then (error 'Type must be not empty')
        else if Type != 'SOURCE' && Type != 'TARGET' then (error "Type should be 'SOURCE' or 'TARGET'")
        else Type,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::EntityResolution::IdNamespace',
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else if std.length(Description) > 255 then error ('Description should have not more than 255 characters')
        else Description,
    },
  },
  setInputSourceConfig(InputSourceConfig): {
    Properties+::: {
      InputSourceConfig:
        if !std.isArray(InputSourceConfig) then (error 'InputSourceConfig must be an array')
        else if std.length(InputSourceConfig) > 20 then error ('InputSourceConfig cannot have more than 20 items')
        else InputSourceConfig,
    },
  },
  setInputSourceConfigMixin(InputSourceConfig): {
    Properties+::: {
      InputSourceConfig+: InputSourceConfig,
    },
  },
  setIdMappingWorkflowProperties(IdMappingWorkflowProperties): {
    Properties+::: {
      IdMappingWorkflowProperties:
        if !std.isArray(IdMappingWorkflowProperties) then (error 'IdMappingWorkflowProperties must be an array')
        else if std.length(IdMappingWorkflowProperties) < 1 then error ('IdMappingWorkflowProperties cannot have less than 1 items')
        else if std.length(IdMappingWorkflowProperties) > 1 then error ('IdMappingWorkflowProperties cannot have more than 1 items')
        else IdMappingWorkflowProperties,
    },
  },
  setIdMappingWorkflowPropertiesMixin(IdMappingWorkflowProperties): {
    Properties+::: {
      IdMappingWorkflowProperties+: IdMappingWorkflowProperties,
    },
  },
  setRoleArn(RoleArn): {
    Properties+::: {
      RoleArn:
        if !std.isString(RoleArn) then (error 'RoleArn must be a string')
        else if std.isEmpty(RoleArn) then (error 'RoleArn must be not empty')
        else if std.length(RoleArn) < 32 then error ('RoleArn should have at least 32 characters')
        else if std.length(RoleArn) > 512 then error ('RoleArn should have not more than 512 characters')
        else RoleArn,
    },
  },
  setIdNamespaceArn(IdNamespaceArn): {
    Properties+::: {
      IdNamespaceArn:
        if !std.isString(IdNamespaceArn) then (error 'IdNamespaceArn must be a string')
        else if std.isEmpty(IdNamespaceArn) then (error 'IdNamespaceArn must be not empty')
        else IdNamespaceArn,
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
  setUpdatedAt(UpdatedAt): {
    Properties+::: {
      UpdatedAt:
        if !std.isString(UpdatedAt) then (error 'UpdatedAt must be a string')
        else if std.isEmpty(UpdatedAt) then (error 'UpdatedAt must be not empty')
        else UpdatedAt,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else if std.length(Tags) > 200 then error ('Tags cannot have more than 200 items')
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
