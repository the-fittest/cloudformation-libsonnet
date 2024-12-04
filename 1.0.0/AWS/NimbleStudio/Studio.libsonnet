{
  new(
    DisplayName,
    UserRoleArn,
    AdminRoleArn,
    StudioName,
  ): {
    local base = self,
    Properties: {
      assert std.isString(DisplayName) : 'DisplayName must be a string',
      DisplayName: DisplayName,
      assert std.isString(UserRoleArn) : 'UserRoleArn must be a string',
      UserRoleArn: UserRoleArn,
      assert std.isString(AdminRoleArn) : 'AdminRoleArn must be a string',
      AdminRoleArn: AdminRoleArn,
      assert std.isString(StudioName) : 'StudioName must be a string',
      StudioName: StudioName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::NimbleStudio::Studio',
  },
  withHomeRegion(HomeRegion): {
    assert std.isString(HomeRegion) : 'HomeRegion must be a string',
    Properties+::: {
      HomeRegion: HomeRegion,
    },
  },
  withSsoClientId(SsoClientId): {
    assert std.isString(SsoClientId) : 'SsoClientId must be a string',
    Properties+::: {
      SsoClientId: SsoClientId,
    },
  },
  withStudioEncryptionConfiguration(StudioEncryptionConfiguration): {
    assert std.isObject(StudioEncryptionConfiguration) : 'StudioEncryptionConfiguration must be a object',
    Properties+::: {
      StudioEncryptionConfiguration: StudioEncryptionConfiguration,
    },
  },
  withStudioId(StudioId): {
    assert std.isString(StudioId) : 'StudioId must be a string',
    Properties+::: {
      StudioId: StudioId,
    },
  },
  withStudioUrl(StudioUrl): {
    assert std.isString(StudioUrl) : 'StudioUrl must be a string',
    Properties+::: {
      StudioUrl: StudioUrl,
    },
  },
  withTags(Tags): {
    assert std.isObject(Tags) : 'Tags must be a object',
    Properties+::: {
      Tags: Tags,
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
