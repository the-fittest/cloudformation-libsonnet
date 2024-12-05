{
  new(
    DeploymentPatternName,
    Name,
    Specifications,
    WorkloadName,
  ): {
    local base = self,
    Properties: {
      DeploymentPatternName:
        if !std.isString(DeploymentPatternName) then (error 'DeploymentPatternName must be a string')
        else if std.isEmpty(DeploymentPatternName) then (error 'DeploymentPatternName must be not empty')
        else if std.length(DeploymentPatternName) < 1 then error ('DeploymentPatternName should have at least 1 characters')
        else if std.length(DeploymentPatternName) > 256 then error ('DeploymentPatternName should have not more than 256 characters')
        else DeploymentPatternName,
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else if std.length(Name) < 1 then error ('Name should have at least 1 characters')
        else if std.length(Name) > 50 then error ('Name should have not more than 50 characters')
        else Name,
      Specifications:
        if !std.isObject(Specifications) then (error 'Specifications must be an object')
        else Specifications,
      WorkloadName:
        if !std.isString(WorkloadName) then (error 'WorkloadName must be a string')
        else if std.isEmpty(WorkloadName) then (error 'WorkloadName must be not empty')
        else if std.length(WorkloadName) < 1 then error ('WorkloadName should have at least 1 characters')
        else if std.length(WorkloadName) > 100 then error ('WorkloadName should have not more than 100 characters')
        else WorkloadName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::LaunchWizard::Deployment',
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else Arn,
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
  setDeletedAt(DeletedAt): {
    Properties+::: {
      DeletedAt:
        if !std.isString(DeletedAt) then (error 'DeletedAt must be a string')
        else if std.isEmpty(DeletedAt) then (error 'DeletedAt must be not empty')
        else DeletedAt,
    },
  },
  setDeploymentId(DeploymentId): {
    Properties+::: {
      DeploymentId:
        if !std.isString(DeploymentId) then (error 'DeploymentId must be a string')
        else if std.isEmpty(DeploymentId) then (error 'DeploymentId must be not empty')
        else if std.length(DeploymentId) < 2 then error ('DeploymentId should have at least 2 characters')
        else if std.length(DeploymentId) > 128 then error ('DeploymentId should have not more than 128 characters')
        else DeploymentId,
    },
  },
  setResourceGroup(ResourceGroup): {
    Properties+::: {
      ResourceGroup:
        if !std.isString(ResourceGroup) then (error 'ResourceGroup must be a string')
        else if std.isEmpty(ResourceGroup) then (error 'ResourceGroup must be not empty')
        else ResourceGroup,
    },
  },
  setStatus(Status): {
    Properties+::: {
      Status:
        if !std.isString(Status) then (error 'Status must be a string')
        else if std.isEmpty(Status) then (error 'Status must be not empty')
        else if Status != 'COMPLETED' && Status != 'CREATING' && Status != 'DELETE_IN_PROGRESS' && Status != 'DELETE_INITIATING' && Status != 'DELETE_FAILED' && Status != 'DELETED' && Status != 'FAILED' && Status != 'IN_PROGRESS' && Status != 'VALIDATING' then (error "Status should be 'COMPLETED' or 'CREATING' or 'DELETE_IN_PROGRESS' or 'DELETE_INITIATING' or 'DELETE_FAILED' or 'DELETED' or 'FAILED' or 'IN_PROGRESS' or 'VALIDATING'")
        else Status,
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
