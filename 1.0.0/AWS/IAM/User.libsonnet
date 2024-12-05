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
    Type: 'AWS::IAM::User',
  },
  setPath(Path): {
    Properties+::: {
      Path:
        if !std.isString(Path) then (error 'Path must be a string')
        else if std.isEmpty(Path) then (error 'Path must be not empty')
        else Path,
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
  setUserName(UserName): {
    Properties+::: {
      UserName:
        if !std.isString(UserName) then (error 'UserName must be a string')
        else if std.isEmpty(UserName) then (error 'UserName must be not empty')
        else UserName,
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
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else Arn,
    },
  },
  setLoginProfile(LoginProfile): {
    Properties+::: {
      LoginProfile:
        if !std.isObject(LoginProfile) then (error 'LoginProfile must be an object')
        else if !std.objectHas(LoginProfile, 'Password') then (error ' have attribute Password')
        else LoginProfile,
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
  setPermissionsBoundary(PermissionsBoundary): {
    Properties+::: {
      PermissionsBoundary:
        if !std.isString(PermissionsBoundary) then (error 'PermissionsBoundary must be a string')
        else if std.isEmpty(PermissionsBoundary) then (error 'PermissionsBoundary must be not empty')
        else PermissionsBoundary,
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
