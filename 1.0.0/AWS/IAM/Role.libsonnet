{
  new(
    AssumeRolePolicyDocument,
  ): {
    local base = self,
    Properties: {
      AssumeRolePolicyDocument: AssumeRolePolicyDocument,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::IAM::Role',
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else Arn,
    },
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else Description,
    },
  },
  setManagedPolicyArns(ManagedPolicyArns): {
    Properties+::: {
      ManagedPolicyArns:
        if !std.isArray(ManagedPolicyArns) then (error 'ManagedPolicyArns must be an array')
        else ManagedPolicyArns,
    },
  },
  setManagedPolicyArnsMixin(ManagedPolicyArns): {
    Properties+::: {
      ManagedPolicyArns+: ManagedPolicyArns,
    },
  },
  setMaxSessionDuration(MaxSessionDuration): {
    Properties+::: {
      MaxSessionDuration:
        if !std.isNumber(MaxSessionDuration) then (error 'MaxSessionDuration must be an number')
        else MaxSessionDuration,
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
  setPermissionsBoundary(PermissionsBoundary): {
    Properties+::: {
      PermissionsBoundary:
        if !std.isString(PermissionsBoundary) then (error 'PermissionsBoundary must be a string')
        else if std.isEmpty(PermissionsBoundary) then (error 'PermissionsBoundary must be not empty')
        else PermissionsBoundary,
    },
  },
  setPolicies(Policies): {
    Properties+::: {
      Policies:
        if !std.isArray(Policies) then (error 'Policies must be an array')
        else Policies,
    },
  },
  setPoliciesMixin(Policies): {
    Properties+::: {
      Policies+: Policies,
    },
  },
  setRoleId(RoleId): {
    Properties+::: {
      RoleId:
        if !std.isString(RoleId) then (error 'RoleId must be a string')
        else if std.isEmpty(RoleId) then (error 'RoleId must be not empty')
        else RoleId,
    },
  },
  setRoleName(RoleName): {
    Properties+::: {
      RoleName:
        if !std.isString(RoleName) then (error 'RoleName must be a string')
        else if std.isEmpty(RoleName) then (error 'RoleName must be not empty')
        else RoleName,
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
