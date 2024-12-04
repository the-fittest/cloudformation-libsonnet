{
  new(
  ): {
    local base = self,
    Properties: {
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::IAM::User',
  },
  withPath(Path): {
    assert std.isString(Path) : 'Path must be a string',
    Properties+::: {
      Path: Path,
    },
  },
  withManagedPolicyArns(ManagedPolicyArns): {
    Properties+::: {
      ManagedPolicyArns: (if std.isArray(ManagedPolicyArns) then ManagedPolicyArns else [ManagedPolicyArns]),
    },
  },
  withManagedPolicyArnsMixin(ManagedPolicyArns): {
    Properties+::: {
      ManagedPolicyArns+: (if std.isArray(ManagedPolicyArns) then ManagedPolicyArns else [ManagedPolicyArns]),
    },
  },
  withPolicies(Policies): {
    Properties+::: {
      Policies: (if std.isArray(Policies) then Policies else [Policies]),
    },
  },
  withPoliciesMixin(Policies): {
    Properties+::: {
      Policies+: (if std.isArray(Policies) then Policies else [Policies]),
    },
  },
  withUserName(UserName): {
    assert std.isString(UserName) : 'UserName must be a string',
    Properties+::: {
      UserName: UserName,
    },
  },
  withGroups(Groups): {
    Properties+::: {
      Groups: (if std.isArray(Groups) then Groups else [Groups]),
    },
  },
  withGroupsMixin(Groups): {
    Properties+::: {
      Groups+: (if std.isArray(Groups) then Groups else [Groups]),
    },
  },
  withArn(Arn): {
    assert std.isString(Arn) : 'Arn must be a string',
    Properties+::: {
      Arn: Arn,
    },
  },
  withLoginProfile(LoginProfile): {
    assert std.isObject(LoginProfile) : 'LoginProfile must be a object',
    Properties+::: {
      LoginProfile: LoginProfile,
    },
  },
  withTags(Tags): {
    Properties+::: {
      Tags: (if std.isArray(Tags) then Tags else [Tags]),
    },
  },
  withTagsMixin(Tags): {
    Properties+::: {
      Tags+: (if std.isArray(Tags) then Tags else [Tags]),
    },
  },
  withPermissionsBoundary(PermissionsBoundary): {
    assert std.isString(PermissionsBoundary) : 'PermissionsBoundary must be a string',
    Properties+::: {
      PermissionsBoundary: PermissionsBoundary,
    },
  },
  withDependsOn(DependsOn): {
    Properties+::: {
      DependsOn: (if std.isArray(DependsOn) then DependsOn else [DependsOn]),
    },
  },
  withDependsOnMixin(DependsOn): {
    Properties+::: {
      DependsOn+: (if std.isArray(DependsOn) then DependsOn else [DependsOn]),
    },
  },
  withCreationPolicy(CreationPolicy): {
    Properties+::: {
      CreationPolicy: (if std.isArray(CreationPolicy) then CreationPolicy else [CreationPolicy]),
    },
  },
  withCreationPolicyMixin(CreationPolicy): {
    Properties+::: {
      CreationPolicy+: (if std.isArray(CreationPolicy) then CreationPolicy else [CreationPolicy]),
    },
  },
  withDeletionPolicy(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy: (if std.isArray(DeletionPolicy) then DeletionPolicy else [DeletionPolicy]),
    },
  },
  withDeletionPolicyMixin(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy+: (if std.isArray(DeletionPolicy) then DeletionPolicy else [DeletionPolicy]),
    },
  },
  withUpdatePolicy(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy: (if std.isArray(UpdatePolicy) then UpdatePolicy else [UpdatePolicy]),
    },
  },
  withUpdatePolicyMixin(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy+: (if std.isArray(UpdatePolicy) then UpdatePolicy else [UpdatePolicy]),
    },
  },
  withUpdateReplacePolicy(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy: (if std.isArray(UpdateReplacePolicy) then UpdateReplacePolicy else [UpdateReplacePolicy]),
    },
  },
  withUpdateReplacePolicyMixin(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy+: (if std.isArray(UpdateReplacePolicy) then UpdateReplacePolicy else [UpdateReplacePolicy]),
    },
  },
  withMetadata(Metadata): {
    Properties+::: {
      Metadata: (if std.isArray(Metadata) then Metadata else [Metadata]),
    },
  },
  withMetadataMixin(Metadata): {
    Properties+::: {
      Metadata+: (if std.isArray(Metadata) then Metadata else [Metadata]),
    },
  },
}
