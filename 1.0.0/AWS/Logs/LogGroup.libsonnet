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
    Type: 'AWS::Logs::LogGroup',
  },
  withLogGroupName(LogGroupName): {
    assert std.isString(LogGroupName) : 'LogGroupName must be a string',
    Properties+::: {
      LogGroupName: LogGroupName,
    },
  },
  withKmsKeyId(KmsKeyId): {
    assert std.isString(KmsKeyId) : 'KmsKeyId must be a string',
    Properties+::: {
      KmsKeyId: KmsKeyId,
    },
  },
  withDataProtectionPolicy(DataProtectionPolicy): {
    assert std.isObject(DataProtectionPolicy) : 'DataProtectionPolicy must be a object',
    Properties+::: {
      DataProtectionPolicy: DataProtectionPolicy,
    },
  },
  withLogGroupClass(LogGroupClass): {
    assert std.isString(LogGroupClass) : 'LogGroupClass must be a string',
    assert LogGroupClass == 'STANDARD' || LogGroupClass == 'INFREQUENT_ACCESS' : "LogGroupClass should be 'STANDARD' or 'INFREQUENT_ACCESS'",
    Properties+::: {
      LogGroupClass: LogGroupClass,
    },
  },
  withRetentionInDays(RetentionInDays): {
    assert std.isNumber(RetentionInDays) : 'RetentionInDays must be a number',
    assert RetentionInDays == 1 || RetentionInDays == 3 || RetentionInDays == 5 || RetentionInDays == 7 || RetentionInDays == 14 || RetentionInDays == 30 || RetentionInDays == 60 || RetentionInDays == 90 || RetentionInDays == 120 || RetentionInDays == 150 || RetentionInDays == 180 || RetentionInDays == 365 || RetentionInDays == 400 || RetentionInDays == 545 || RetentionInDays == 731 || RetentionInDays == 1096 || RetentionInDays == 1827 || RetentionInDays == 2192 || RetentionInDays == 2557 || RetentionInDays == 2922 || RetentionInDays == 3288 || RetentionInDays == 3653 : 'RetentionInDays should be 1 or 3 or 5 or 7 or 14 or 30 or 60 or 90 or 120 or 150 or 180 or 365 or 400 or 545 or 731 or 1096 or 1827 or 2192 or 2557 or 2922 or 3288 or 3653',
    Properties+::: {
      RetentionInDays: RetentionInDays,
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
