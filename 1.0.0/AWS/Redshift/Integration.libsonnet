{
  new(
    SourceArn,
    TargetArn,
  ): {
    local base = self,
    Properties: {
      assert std.isString(SourceArn) : 'SourceArn must be a string',
      SourceArn: SourceArn,
      assert std.isString(TargetArn) : 'TargetArn must be a string',
      TargetArn: TargetArn,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Redshift::Integration',
  },
  withIntegrationArn(IntegrationArn): {
    assert std.isString(IntegrationArn) : 'IntegrationArn must be a string',
    Properties+::: {
      IntegrationArn: IntegrationArn,
    },
  },
  withIntegrationName(IntegrationName): {
    assert std.isString(IntegrationName) : 'IntegrationName must be a string',
    Properties+::: {
      IntegrationName: IntegrationName,
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
  withCreateTime(CreateTime): {
    assert std.isString(CreateTime) : 'CreateTime must be a string',
    Properties+::: {
      CreateTime: CreateTime,
    },
  },
  withKMSKeyId(KMSKeyId): {
    assert std.isString(KMSKeyId) : 'KMSKeyId must be a string',
    Properties+::: {
      KMSKeyId: KMSKeyId,
    },
  },
  withAdditionalEncryptionContext(AdditionalEncryptionContext): {
    assert std.isObject(AdditionalEncryptionContext) : 'AdditionalEncryptionContext must be a object',
    Properties+::: {
      AdditionalEncryptionContext: AdditionalEncryptionContext,
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
