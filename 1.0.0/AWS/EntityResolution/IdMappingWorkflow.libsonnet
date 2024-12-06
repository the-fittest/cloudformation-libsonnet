{
  new(
    WorkflowName,
    InputSourceConfig,
    IdMappingTechniques,
    RoleArn,
  ): {
    local base = self,
    Properties: {
      WorkflowName:
        if !std.isString(WorkflowName) then (error 'WorkflowName must be a string')
        else if std.isEmpty(WorkflowName) then (error 'WorkflowName must be not empty')
        else if std.length(WorkflowName) > 255 then error ('WorkflowName should have not more than 255 characters')
        else WorkflowName,
      InputSourceConfig:
        if !std.isArray(InputSourceConfig) then (error 'InputSourceConfig must be an array')
        else if std.length(InputSourceConfig) < 1 then error ('InputSourceConfig cannot have less than 1 items')
        else if std.length(InputSourceConfig) > 20 then error ('InputSourceConfig cannot have more than 20 items')
        else InputSourceConfig,
      IdMappingTechniques:
        if !std.isObject(IdMappingTechniques) then (error 'IdMappingTechniques must be an object')
        else IdMappingTechniques,
      RoleArn:
        if !std.isString(RoleArn) then (error 'RoleArn must be a string')
        else if std.isEmpty(RoleArn) then (error 'RoleArn must be not empty')
        else RoleArn,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::EntityResolution::IdMappingWorkflow',
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
  setCreatedAt(CreatedAt): {
    Properties+::: {
      CreatedAt:
        if !std.isString(CreatedAt) then (error 'CreatedAt must be a string')
        else if std.isEmpty(CreatedAt) then (error 'CreatedAt must be not empty')
        else CreatedAt,
    },
  },
  setOutputSourceConfig(OutputSourceConfig): {
    Properties+::: {
      OutputSourceConfig:
        if !std.isArray(OutputSourceConfig) then (error 'OutputSourceConfig must be an array')
        else if std.length(OutputSourceConfig) < 1 then error ('OutputSourceConfig cannot have less than 1 items')
        else if std.length(OutputSourceConfig) > 1 then error ('OutputSourceConfig cannot have more than 1 items')
        else OutputSourceConfig,
    },
  },
  pushOutputSourceConfig(OutputSourceConfig): {
    Properties+::: {
      OutputSourceConfig+: OutputSourceConfig,
    },
  },
  setWorkflowArn(WorkflowArn): {
    Properties+::: {
      WorkflowArn:
        if !std.isString(WorkflowArn) then (error 'WorkflowArn must be a string')
        else if std.isEmpty(WorkflowArn) then (error 'WorkflowArn must be not empty')
        else WorkflowArn,
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
  pushTags(Tags): {
    Properties+::: {
      Tags+: Tags,
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
