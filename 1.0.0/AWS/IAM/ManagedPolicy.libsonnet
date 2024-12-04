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
  withDescription(Description): {
    assert std.isString(Description) : 'Description must be a string',
    Properties+::: {
      Description: Description,
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
  withManagedPolicyName(ManagedPolicyName): {
    assert std.isString(ManagedPolicyName) : 'ManagedPolicyName must be a string',
    Properties+::: {
      ManagedPolicyName: ManagedPolicyName,
    },
  },
  withPath(Path): {
    assert std.isString(Path) : 'Path must be a string',
    Properties+::: {
      Path: Path,
    },
  },
  withRoles(Roles): {
    Properties+::: {
      Roles: (if std.isArray(Roles) then Roles else [Roles]),
    },
  },
  withRolesMixin(Roles): {
    Properties+::: {
      Roles+: (if std.isArray(Roles) then Roles else [Roles]),
    },
  },
  withUsers(Users): {
    Properties+::: {
      Users: (if std.isArray(Users) then Users else [Users]),
    },
  },
  withUsersMixin(Users): {
    Properties+::: {
      Users+: (if std.isArray(Users) then Users else [Users]),
    },
  },
  withPolicyArn(PolicyArn): {
    assert std.isString(PolicyArn) : 'PolicyArn must be a string',
    Properties+::: {
      PolicyArn: PolicyArn,
    },
  },
  withAttachmentCount(AttachmentCount): {
    assert std.isNumber(AttachmentCount) : 'AttachmentCount must be a number',
    Properties+::: {
      AttachmentCount: AttachmentCount,
    },
  },
  withCreateDate(CreateDate): {
    assert std.isString(CreateDate) : 'CreateDate must be a string',
    Properties+::: {
      CreateDate: CreateDate,
    },
  },
  withUpdateDate(UpdateDate): {
    assert std.isString(UpdateDate) : 'UpdateDate must be a string',
    Properties+::: {
      UpdateDate: UpdateDate,
    },
  },
  withDefaultVersionId(DefaultVersionId): {
    assert std.isString(DefaultVersionId) : 'DefaultVersionId must be a string',
    Properties+::: {
      DefaultVersionId: DefaultVersionId,
    },
  },
  withIsAttachable(IsAttachable): {
    assert std.isBoolean(IsAttachable) : 'IsAttachable must be a boolean',
    Properties+::: {
      IsAttachable: IsAttachable,
    },
  },
  withPermissionsBoundaryUsageCount(PermissionsBoundaryUsageCount): {
    assert std.isNumber(PermissionsBoundaryUsageCount) : 'PermissionsBoundaryUsageCount must be a number',
    Properties+::: {
      PermissionsBoundaryUsageCount: PermissionsBoundaryUsageCount,
    },
  },
  withPolicyId(PolicyId): {
    assert std.isString(PolicyId) : 'PolicyId must be a string',
    Properties+::: {
      PolicyId: PolicyId,
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
