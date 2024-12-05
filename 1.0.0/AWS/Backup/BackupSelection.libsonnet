{
  new(
    BackupSelection,
    BackupPlanId,
  ): {
    local base = self,
    Properties: {
      BackupSelection:
        if !std.isObject(BackupSelection) then (error 'BackupSelection must be an object')
        else if !std.objectHas(BackupSelection, 'SelectionName') then (error ' have attribute SelectionName')
        else if !std.objectHas(BackupSelection, 'IamRoleArn') then (error ' have attribute IamRoleArn')
        else BackupSelection,
      BackupPlanId:
        if !std.isString(BackupPlanId) then (error 'BackupPlanId must be a string')
        else if std.isEmpty(BackupPlanId) then (error 'BackupPlanId must be not empty')
        else BackupPlanId,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Backup::BackupSelection',
  },
  setId(Id): {
    Properties+::: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else Id,
    },
  },
  setSelectionId(SelectionId): {
    Properties+::: {
      SelectionId:
        if !std.isString(SelectionId) then (error 'SelectionId must be a string')
        else if std.isEmpty(SelectionId) then (error 'SelectionId must be not empty')
        else SelectionId,
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
