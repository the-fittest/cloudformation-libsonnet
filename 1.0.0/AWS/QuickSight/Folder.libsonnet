{
  new(): {
    local base = self,
    Properties:: {},
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::QuickSight::Folder',
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else Arn,
    },
  },
  setAwsAccountId(AwsAccountId): {
    Properties+::: {
      AwsAccountId:
        if !std.isString(AwsAccountId) then (error 'AwsAccountId must be a string')
        else if std.isEmpty(AwsAccountId) then (error 'AwsAccountId must be not empty')
        else if std.length(AwsAccountId) < 12 then error ('AwsAccountId should have at least 12 characters')
        else if std.length(AwsAccountId) > 12 then error ('AwsAccountId should have not more than 12 characters')
        else AwsAccountId,
    },
  },
  setCreatedTime(CreatedTime): {
    Properties+::: {
      CreatedTime:
        if !std.isString(CreatedTime) then (error 'CreatedTime must be a string')
        else if std.isEmpty(CreatedTime) then (error 'CreatedTime must be not empty')
        else CreatedTime,
    },
  },
  setFolderId(FolderId): {
    Properties+::: {
      FolderId:
        if !std.isString(FolderId) then (error 'FolderId must be a string')
        else if std.isEmpty(FolderId) then (error 'FolderId must be not empty')
        else if std.length(FolderId) < 1 then error ('FolderId should have at least 1 characters')
        else if std.length(FolderId) > 2048 then error ('FolderId should have not more than 2048 characters')
        else FolderId,
    },
  },
  setFolderType(FolderType): {
    Properties+::: {
      FolderType:
        if !std.isString(FolderType) then (error 'FolderType must be a string')
        else if std.isEmpty(FolderType) then (error 'FolderType must be not empty')
        else if FolderType != 'SHARED' && FolderType != 'RESTRICTED' then (error "FolderType should be 'SHARED' or 'RESTRICTED'")
        else FolderType,
    },
  },
  setLastUpdatedTime(LastUpdatedTime): {
    Properties+::: {
      LastUpdatedTime:
        if !std.isString(LastUpdatedTime) then (error 'LastUpdatedTime must be a string')
        else if std.isEmpty(LastUpdatedTime) then (error 'LastUpdatedTime must be not empty')
        else LastUpdatedTime,
    },
  },
  setName(Name): {
    Properties+::: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else if std.length(Name) < 1 then error ('Name should have at least 1 characters')
        else if std.length(Name) > 200 then error ('Name should have not more than 200 characters')
        else Name,
    },
  },
  setParentFolderArn(ParentFolderArn): {
    Properties+::: {
      ParentFolderArn:
        if !std.isString(ParentFolderArn) then (error 'ParentFolderArn must be a string')
        else if std.isEmpty(ParentFolderArn) then (error 'ParentFolderArn must be not empty')
        else ParentFolderArn,
    },
  },
  setPermissions(Permissions): {
    Properties+::: {
      Permissions:
        if !std.isArray(Permissions) then (error 'Permissions must be an array')
        else if std.length(Permissions) < 1 then error ('Permissions cannot have less than 1 items')
        else if std.length(Permissions) > 64 then error ('Permissions cannot have more than 64 items')
        else Permissions,
    },
  },
  setPermissionsMixin(Permissions): {
    Properties+::: {
      Permissions+: Permissions,
    },
  },
  setSharingModel(SharingModel): {
    Properties+::: {
      SharingModel:
        if !std.isString(SharingModel) then (error 'SharingModel must be a string')
        else if std.isEmpty(SharingModel) then (error 'SharingModel must be not empty')
        else if SharingModel != 'ACCOUNT' && SharingModel != 'NAMESPACE' then (error "SharingModel should be 'ACCOUNT' or 'NAMESPACE'")
        else SharingModel,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else if std.length(Tags) < 1 then error ('Tags cannot have less than 1 items')
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
