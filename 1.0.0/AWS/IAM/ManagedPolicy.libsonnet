{
  new(
    PolicyDocument,
  ): {
    local base = self,
    Properties: {
      PolicyDocument: PolicyDocument,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::IAM::ManagedPolicy',
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else Description,
    },
  },
  setGroups(Groups): {
    Properties+::: {
      Groups:
        if !std.isArray(Groups) then (error 'Groups must be an array')
        else Groups,
    },
  },
  setGroupsMixin(Groups): {
    Properties+::: {
      Groups+: Groups,
    },
  },
  setManagedPolicyName(ManagedPolicyName): {
    Properties+::: {
      ManagedPolicyName:
        if !std.isString(ManagedPolicyName) then (error 'ManagedPolicyName must be a string')
        else if std.isEmpty(ManagedPolicyName) then (error 'ManagedPolicyName must be not empty')
        else ManagedPolicyName,
    },
  },
  setPath(Path): {
    Properties+::: {
      Path:
        if !std.isString(Path) then (error 'Path must be a string')
        else if std.isEmpty(Path) then (error 'Path must be not empty')
        else Path,
    },
  },
  setRoles(Roles): {
    Properties+::: {
      Roles:
        if !std.isArray(Roles) then (error 'Roles must be an array')
        else Roles,
    },
  },
  setRolesMixin(Roles): {
    Properties+::: {
      Roles+: Roles,
    },
  },
  setUsers(Users): {
    Properties+::: {
      Users:
        if !std.isArray(Users) then (error 'Users must be an array')
        else Users,
    },
  },
  setUsersMixin(Users): {
    Properties+::: {
      Users+: Users,
    },
  },
  setPolicyArn(PolicyArn): {
    Properties+::: {
      PolicyArn:
        if !std.isString(PolicyArn) then (error 'PolicyArn must be a string')
        else if std.isEmpty(PolicyArn) then (error 'PolicyArn must be not empty')
        else PolicyArn,
    },
  },
  setAttachmentCount(AttachmentCount): {
    Properties+::: {
      AttachmentCount:
        if !std.isNumber(AttachmentCount) then (error 'AttachmentCount must be an number')
        else AttachmentCount,
    },
  },
  setCreateDate(CreateDate): {
    Properties+::: {
      CreateDate:
        if !std.isString(CreateDate) then (error 'CreateDate must be a string')
        else if std.isEmpty(CreateDate) then (error 'CreateDate must be not empty')
        else CreateDate,
    },
  },
  setUpdateDate(UpdateDate): {
    Properties+::: {
      UpdateDate:
        if !std.isString(UpdateDate) then (error 'UpdateDate must be a string')
        else if std.isEmpty(UpdateDate) then (error 'UpdateDate must be not empty')
        else UpdateDate,
    },
  },
  setDefaultVersionId(DefaultVersionId): {
    Properties+::: {
      DefaultVersionId:
        if !std.isString(DefaultVersionId) then (error 'DefaultVersionId must be a string')
        else if std.isEmpty(DefaultVersionId) then (error 'DefaultVersionId must be not empty')
        else DefaultVersionId,
    },
  },
  setIsAttachable(IsAttachable): {
    Properties+::: {
      IsAttachable:
        if !std.isBoolean(IsAttachable) then (error 'IsAttachable must be a boolean') else IsAttachable,
    },
  },
  setPermissionsBoundaryUsageCount(PermissionsBoundaryUsageCount): {
    Properties+::: {
      PermissionsBoundaryUsageCount:
        if !std.isNumber(PermissionsBoundaryUsageCount) then (error 'PermissionsBoundaryUsageCount must be an number')
        else PermissionsBoundaryUsageCount,
    },
  },
  setPolicyId(PolicyId): {
    Properties+::: {
      PolicyId:
        if !std.isString(PolicyId) then (error 'PolicyId must be a string')
        else if std.isEmpty(PolicyId) then (error 'PolicyId must be not empty')
        else PolicyId,
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
