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
    Type: 'AWS::IAM::Group',
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else Arn,
    },
  },
  setGroupName(GroupName): {
    Properties+::: {
      GroupName:
        if !std.isString(GroupName) then (error 'GroupName must be a string')
        else if std.isEmpty(GroupName) then (error 'GroupName must be not empty')
        else GroupName,
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
  setPath(Path): {
    Properties+::: {
      Path:
        if !std.isString(Path) then (error 'Path must be a string')
        else if std.isEmpty(Path) then (error 'Path must be not empty')
        else Path,
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
