{
  new(
    TargetName,
    TargetType,
    LogLevel,
  ): {
    local base = self,
    Properties: {
      assert std.isString(TargetName) : 'TargetName must be a string',
      TargetName: TargetName,
      assert std.isString(TargetType) : 'TargetType must be a string',
      assert TargetType == 'THING_GROUP' || TargetType == 'CLIENT_ID' || TargetType == 'SOURCE_IP' || TargetType == 'PRINCIPAL_ID' || TargetType == 'EVENT_TYPE' : "TargetType should be 'THING_GROUP' or 'CLIENT_ID' or 'SOURCE_IP' or 'PRINCIPAL_ID' or 'EVENT_TYPE'",
      TargetType: TargetType,
      assert std.isString(LogLevel) : 'LogLevel must be a string',
      assert LogLevel == 'ERROR' || LogLevel == 'WARN' || LogLevel == 'INFO' || LogLevel == 'DEBUG' || LogLevel == 'DISABLED' : "LogLevel should be 'ERROR' or 'WARN' or 'INFO' or 'DEBUG' or 'DISABLED'",
      LogLevel: LogLevel,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::IoT::ResourceSpecificLogging',
  },
  withTargetId(TargetId): {
    assert std.isString(TargetId) : 'TargetId must be a string',
    Properties+::: {
      TargetId: TargetId,
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
