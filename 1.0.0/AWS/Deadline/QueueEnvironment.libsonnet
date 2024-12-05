{
  new(
    FarmId,
    QueueId,
    Priority,
    Template,
    TemplateType,
  ): {
    local base = self,
    Properties: {
      FarmId:
        if !std.isString(FarmId) then (error 'FarmId must be a string')
        else if std.isEmpty(FarmId) then (error 'FarmId must be not empty')
        else FarmId,
      QueueId:
        if !std.isString(QueueId) then (error 'QueueId must be a string')
        else if std.isEmpty(QueueId) then (error 'QueueId must be not empty')
        else QueueId,
      Priority:
        if !std.isNumber(Priority) then (error 'Priority must be an number')
        else if Priority > 10000 then error ('Priority should be not more than 10000')
        else Priority,
      Template:
        if !std.isString(Template) then (error 'Template must be a string')
        else if std.isEmpty(Template) then (error 'Template must be not empty')
        else if std.length(Template) < 1 then error ('Template should have at least 1 characters')
        else if std.length(Template) > 15000 then error ('Template should have not more than 15000 characters')
        else Template,
      TemplateType:
        if !std.isString(TemplateType) then (error 'TemplateType must be a string')
        else if std.isEmpty(TemplateType) then (error 'TemplateType must be not empty')
        else if TemplateType != 'JSON' && TemplateType != 'YAML' then (error "TemplateType should be 'JSON' or 'YAML'")
        else TemplateType,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Deadline::QueueEnvironment',
  },
  setName(Name): {
    Properties+::: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else Name,
    },
  },
  setQueueEnvironmentId(QueueEnvironmentId): {
    Properties+::: {
      QueueEnvironmentId:
        if !std.isString(QueueEnvironmentId) then (error 'QueueEnvironmentId must be a string')
        else if std.isEmpty(QueueEnvironmentId) then (error 'QueueEnvironmentId must be not empty')
        else QueueEnvironmentId,
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
