{
  new(
    ModelCardName,
    Content,
    ModelCardStatus,
  ): {
    local base = self,
    Properties: {
      ModelCardName:
        if !std.isString(ModelCardName) then (error 'ModelCardName must be a string')
        else if std.isEmpty(ModelCardName) then (error 'ModelCardName must be not empty')
        else if std.length(ModelCardName) > 63 then error ('ModelCardName should have not more than 63 characters')
        else ModelCardName,
      Content:
        if !std.isObject(Content) then (error 'Content must be an object')
        else Content,
      ModelCardStatus:
        if !std.isString(ModelCardStatus) then (error 'ModelCardStatus must be a string')
        else if std.isEmpty(ModelCardStatus) then (error 'ModelCardStatus must be not empty')
        else if ModelCardStatus != 'Draft' && ModelCardStatus != 'PendingReview' && ModelCardStatus != 'Approved' && ModelCardStatus != 'Archived' then (error "ModelCardStatus should be 'Draft' or 'PendingReview' or 'Approved' or 'Archived'")
        else ModelCardStatus,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::SageMaker::ModelCard',
  },
  setModelCardArn(ModelCardArn): {
    Properties+::: {
      ModelCardArn:
        if !std.isString(ModelCardArn) then (error 'ModelCardArn must be a string')
        else if std.isEmpty(ModelCardArn) then (error 'ModelCardArn must be not empty')
        else if std.length(ModelCardArn) < 1 then error ('ModelCardArn should have at least 1 characters')
        else if std.length(ModelCardArn) > 256 then error ('ModelCardArn should have not more than 256 characters')
        else ModelCardArn,
    },
  },
  setModelCardVersion(ModelCardVersion): {
    Properties+::: {
      ModelCardVersion:
        if !std.isNumber(ModelCardVersion) then (error 'ModelCardVersion must be an number')
        else if ModelCardVersion < 1 then error ('ModelCardVersion should be at least 1')
        else ModelCardVersion,
    },
  },
  setSecurityConfig(SecurityConfig): {
    Properties+::: {
      SecurityConfig:
        if !std.isObject(SecurityConfig) then (error 'SecurityConfig must be an object')
        else SecurityConfig,
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
  setCreatedBy(CreatedBy): {
    Properties+::: {
      CreatedBy:
        if !std.isObject(CreatedBy) then (error 'CreatedBy must be an object')
        else CreatedBy,
    },
  },
  setLastModifiedTime(LastModifiedTime): {
    Properties+::: {
      LastModifiedTime:
        if !std.isString(LastModifiedTime) then (error 'LastModifiedTime must be a string')
        else if std.isEmpty(LastModifiedTime) then (error 'LastModifiedTime must be not empty')
        else LastModifiedTime,
    },
  },
  setLastModifiedBy(LastModifiedBy): {
    Properties+::: {
      LastModifiedBy:
        if !std.isObject(LastModifiedBy) then (error 'LastModifiedBy must be an object')
        else LastModifiedBy,
    },
  },
  setModelCardProcessingStatus(ModelCardProcessingStatus): {
    Properties+::: {
      ModelCardProcessingStatus:
        if !std.isString(ModelCardProcessingStatus) then (error 'ModelCardProcessingStatus must be a string')
        else if std.isEmpty(ModelCardProcessingStatus) then (error 'ModelCardProcessingStatus must be not empty')
        else if ModelCardProcessingStatus != 'UnsetValue' && ModelCardProcessingStatus != 'DeleteInProgress' && ModelCardProcessingStatus != 'DeletePending' && ModelCardProcessingStatus != 'ContentDeleted' && ModelCardProcessingStatus != 'ExportJobsDeleted' && ModelCardProcessingStatus != 'DeleteCompleted' && ModelCardProcessingStatus != 'DeleteFailed' then (error "ModelCardProcessingStatus should be 'UnsetValue' or 'DeleteInProgress' or 'DeletePending' or 'ContentDeleted' or 'ExportJobsDeleted' or 'DeleteCompleted' or 'DeleteFailed'")
        else ModelCardProcessingStatus,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else if std.length(Tags) < 1 then error ('Tags cannot have less than 1 items')
        else if std.length(Tags) > 50 then error ('Tags cannot have more than 50 items')
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
