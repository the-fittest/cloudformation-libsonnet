{
  new(
    IdentityManagementType,
    Attributes,
  ): {
    local base = self,
    Properties: {
      assert std.isString(IdentityManagementType) : 'IdentityManagementType must be a string',
      assert IdentityManagementType == 'SAML' || IdentityManagementType == 'CONNECT_MANAGED' || IdentityManagementType == 'EXISTING_DIRECTORY' : "IdentityManagementType should be 'SAML' or 'CONNECT_MANAGED' or 'EXISTING_DIRECTORY'",
      IdentityManagementType: IdentityManagementType,
      assert std.isObject(Attributes) : 'Attributes must be an object',
      Attributes: Attributes,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Connect::Instance',
  },
  withId(Id): {
    assert std.isString(Id) : 'Id must be a string',
    Properties+::: {
      Id: Id,
    },
  },
  withArn(Arn): {
    assert std.isString(Arn) : 'Arn must be a string',
    Properties+::: {
      Arn: Arn,
    },
  },
  withInstanceAlias(InstanceAlias): {
    assert std.isString(InstanceAlias) : 'InstanceAlias must be a string',
    Properties+::: {
      InstanceAlias: InstanceAlias,
    },
  },
  withCreatedTime(CreatedTime): {
    assert std.isString(CreatedTime) : 'CreatedTime must be a string',
    Properties+::: {
      CreatedTime: CreatedTime,
    },
  },
  withServiceRole(ServiceRole): {
    assert std.isString(ServiceRole) : 'ServiceRole must be a string',
    Properties+::: {
      ServiceRole: ServiceRole,
    },
  },
  withInstanceStatus(InstanceStatus): {
    assert std.isString(InstanceStatus) : 'InstanceStatus must be a string',
    assert InstanceStatus == 'CREATION_IN_PROGRESS' || InstanceStatus == 'CREATION_FAILED' || InstanceStatus == 'ACTIVE' : "InstanceStatus should be 'CREATION_IN_PROGRESS' or 'CREATION_FAILED' or 'ACTIVE'",
    Properties+::: {
      InstanceStatus: InstanceStatus,
    },
  },
  withDirectoryId(DirectoryId): {
    assert std.isString(DirectoryId) : 'DirectoryId must be a string',
    Properties+::: {
      DirectoryId: DirectoryId,
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
