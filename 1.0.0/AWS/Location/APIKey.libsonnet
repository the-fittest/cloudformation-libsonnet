{
  new(
    KeyName,
    Restrictions,
  ): {
    local base = self,
    Properties: {
      assert std.isString(KeyName) : 'KeyName must be a string',
      KeyName: KeyName,
      assert std.isObject(Restrictions) : 'Restrictions must be an object',
      Restrictions: Restrictions,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Location::APIKey',
  },
  withCreateTime(CreateTime): {
    assert std.isString(CreateTime) : 'CreateTime must be a string',
    Properties+::: {
      CreateTime: CreateTime,
    },
  },
  withDescription(Description): {
    assert std.isString(Description) : 'Description must be a string',
    Properties+::: {
      Description: Description,
    },
  },
  withExpireTime(ExpireTime): {
    assert std.isString(ExpireTime) : 'ExpireTime must be a string',
    Properties+::: {
      ExpireTime: ExpireTime,
    },
  },
  withForceUpdate(ForceUpdate): {
    assert std.isBoolean(ForceUpdate) : 'ForceUpdate must be a boolean',
    Properties+::: {
      ForceUpdate: ForceUpdate,
    },
  },
  withKeyArn(KeyArn): {
    assert std.isString(KeyArn) : 'KeyArn must be a string',
    Properties+::: {
      KeyArn: KeyArn,
    },
  },
  withNoExpiry(NoExpiry): {
    assert std.isBoolean(NoExpiry) : 'NoExpiry must be a boolean',
    Properties+::: {
      NoExpiry: NoExpiry,
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
  withUpdateTime(UpdateTime): {
    assert std.isString(UpdateTime) : 'UpdateTime must be a string',
    Properties+::: {
      UpdateTime: UpdateTime,
    },
  },
  withForceDelete(ForceDelete): {
    assert std.isBoolean(ForceDelete) : 'ForceDelete must be a boolean',
    Properties+::: {
      ForceDelete: ForceDelete,
    },
  },
  withArn(Arn): {
    assert std.isString(Arn) : 'Arn must be a string',
    Properties+::: {
      Arn: Arn,
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
