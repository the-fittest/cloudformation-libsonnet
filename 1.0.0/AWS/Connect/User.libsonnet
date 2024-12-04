{
  new(
    InstanceArn,
    PhoneConfig,
    RoutingProfileArn,
    SecurityProfileArns,
    Username,
  ): {
    local base = self,
    Properties: {
      assert std.isString(InstanceArn) : 'InstanceArn must be a string',
      InstanceArn: InstanceArn,
      assert std.isObject(PhoneConfig) : 'PhoneConfig must be an object',
      PhoneConfig: PhoneConfig,
      assert std.isString(RoutingProfileArn) : 'RoutingProfileArn must be a string',
      RoutingProfileArn: RoutingProfileArn,
      SecurityProfileArns: (if std.isArray(SecurityProfileArns) then SecurityProfileArns else [SecurityProfileArns]),
      assert std.isString(Username) : 'Username must be a string',
      Username: Username,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Connect::User',
  },
  withDirectoryUserId(DirectoryUserId): {
    assert std.isString(DirectoryUserId) : 'DirectoryUserId must be a string',
    Properties+::: {
      DirectoryUserId: DirectoryUserId,
    },
  },
  withHierarchyGroupArn(HierarchyGroupArn): {
    assert std.isString(HierarchyGroupArn) : 'HierarchyGroupArn must be a string',
    Properties+::: {
      HierarchyGroupArn: HierarchyGroupArn,
    },
  },
  withPassword(Password): {
    assert std.isString(Password) : 'Password must be a string',
    Properties+::: {
      Password: Password,
    },
  },
  withIdentityInfo(IdentityInfo): {
    assert std.isObject(IdentityInfo) : 'IdentityInfo must be a object',
    Properties+::: {
      IdentityInfo: IdentityInfo,
    },
  },
  withUserArn(UserArn): {
    assert std.isString(UserArn) : 'UserArn must be a string',
    Properties+::: {
      UserArn: UserArn,
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
  withUserProficiencies(UserProficiencies): {
    Properties+::: {
      UserProficiencies: (if std.isArray(UserProficiencies) then UserProficiencies else [UserProficiencies]),
    },
  },
  withUserProficienciesMixin(UserProficiencies): {
    Properties+::: {
      UserProficiencies+: (if std.isArray(UserProficiencies) then UserProficiencies else [UserProficiencies]),
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
