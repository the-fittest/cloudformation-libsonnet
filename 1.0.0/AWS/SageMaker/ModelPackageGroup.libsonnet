{
  new(
    ModelPackageGroupName,
  ): {
    local base = self,
    Properties: {
      ModelPackageGroupName:
        if !std.isString(ModelPackageGroupName) then (error 'ModelPackageGroupName must be a string')
        else if std.isEmpty(ModelPackageGroupName) then (error 'ModelPackageGroupName must be not empty')
        else if std.length(ModelPackageGroupName) > 63 then error ('ModelPackageGroupName should have not more than 63 characters')
        else ModelPackageGroupName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::SageMaker::ModelPackageGroup',
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else if std.length(Tags) > 50 then error ('Tags cannot have more than 50 items')
        else Tags,
    },
  },
  pushTags(Tags): {
    Properties+::: {
      Tags+: Tags,
    },
  },
  setModelPackageGroupArn(ModelPackageGroupArn): {
    Properties+::: {
      ModelPackageGroupArn:
        if !std.isString(ModelPackageGroupArn) then (error 'ModelPackageGroupArn must be a string')
        else if std.isEmpty(ModelPackageGroupArn) then (error 'ModelPackageGroupArn must be not empty')
        else if std.length(ModelPackageGroupArn) < 1 then error ('ModelPackageGroupArn should have at least 1 characters')
        else if std.length(ModelPackageGroupArn) > 256 then error ('ModelPackageGroupArn should have not more than 256 characters')
        else ModelPackageGroupArn,
    },
  },
  setModelPackageGroupDescription(ModelPackageGroupDescription): {
    Properties+::: {
      ModelPackageGroupDescription:
        if !std.isString(ModelPackageGroupDescription) then (error 'ModelPackageGroupDescription must be a string')
        else if std.isEmpty(ModelPackageGroupDescription) then (error 'ModelPackageGroupDescription must be not empty')
        else if std.length(ModelPackageGroupDescription) > 1024 then error ('ModelPackageGroupDescription should have not more than 1024 characters')
        else ModelPackageGroupDescription,
    },
  },
  setModelPackageGroupPolicy(ModelPackageGroupPolicy): {
    Properties+::: {
      ModelPackageGroupPolicy: ModelPackageGroupPolicy,
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
  setModelPackageGroupStatus(ModelPackageGroupStatus): {
    Properties+::: {
      ModelPackageGroupStatus:
        if !std.isString(ModelPackageGroupStatus) then (error 'ModelPackageGroupStatus must be a string')
        else if std.isEmpty(ModelPackageGroupStatus) then (error 'ModelPackageGroupStatus must be not empty')
        else if ModelPackageGroupStatus != 'Pending' && ModelPackageGroupStatus != 'InProgress' && ModelPackageGroupStatus != 'Completed' && ModelPackageGroupStatus != 'Failed' && ModelPackageGroupStatus != 'Deleting' && ModelPackageGroupStatus != 'DeleteFailed' then (error "ModelPackageGroupStatus should be 'Pending' or 'InProgress' or 'Completed' or 'Failed' or 'Deleting' or 'DeleteFailed'")
        else ModelPackageGroupStatus,
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
