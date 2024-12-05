{
  new(
    Steps,
  ): {
    local base = self,
    Properties: {
      Steps:
        if !std.isArray(Steps) then (error 'Steps must be an array')
        else if std.length(Steps) > 8 then error ('Steps cannot have more than 8 items')
        else Steps,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Transfer::Workflow',
  },
  setOnExceptionSteps(OnExceptionSteps): {
    Properties+::: {
      OnExceptionSteps:
        if !std.isArray(OnExceptionSteps) then (error 'OnExceptionSteps must be an array')
        else if std.length(OnExceptionSteps) > 8 then error ('OnExceptionSteps cannot have more than 8 items')
        else OnExceptionSteps,
    },
  },
  setOnExceptionStepsMixin(OnExceptionSteps): {
    Properties+::: {
      OnExceptionSteps+: OnExceptionSteps,
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
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else if std.length(Description) > 256 then error ('Description should have not more than 256 characters')
        else Description,
    },
  },
  setWorkflowId(WorkflowId): {
    Properties+::: {
      WorkflowId:
        if !std.isString(WorkflowId) then (error 'WorkflowId must be a string')
        else if std.isEmpty(WorkflowId) then (error 'WorkflowId must be not empty')
        else if std.length(WorkflowId) < 19 then error ('WorkflowId should have at least 19 characters')
        else if std.length(WorkflowId) > 19 then error ('WorkflowId should have not more than 19 characters')
        else WorkflowId,
    },
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else if std.length(Arn) < 20 then error ('Arn should have at least 20 characters')
        else if std.length(Arn) > 1600 then error ('Arn should have not more than 1600 characters')
        else Arn,
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
