{
  new(
    DeliverySourceName,
    DeliveryDestinationArn,
  ): {
    local base = self,
    Properties: {
      assert std.isString(DeliverySourceName) : 'DeliverySourceName must be a string',
      DeliverySourceName: DeliverySourceName,
      assert std.isString(DeliveryDestinationArn) : 'DeliveryDestinationArn must be a string',
      DeliveryDestinationArn: DeliveryDestinationArn,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Logs::Delivery',
  },
  withDeliveryId(DeliveryId): {
    assert std.isString(DeliveryId) : 'DeliveryId must be a string',
    Properties+::: {
      DeliveryId: DeliveryId,
    },
  },
  withArn(Arn): {
    assert std.isString(Arn) : 'Arn must be a string',
    Properties+::: {
      Arn: Arn,
    },
  },
  withDeliveryDestinationType(DeliveryDestinationType): {
    assert std.isString(DeliveryDestinationType) : 'DeliveryDestinationType must be a string',
    Properties+::: {
      DeliveryDestinationType: DeliveryDestinationType,
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
  withRecordFields(RecordFields): {
    Properties+::: {
      RecordFields: (if std.isArray(RecordFields) then RecordFields else [RecordFields]),
    },
  },
  withRecordFieldsMixin(RecordFields): {
    Properties+::: {
      RecordFields+: (if std.isArray(RecordFields) then RecordFields else [RecordFields]),
    },
  },
  withFieldDelimiter(FieldDelimiter): {
    assert std.isString(FieldDelimiter) : 'FieldDelimiter must be a string',
    Properties+::: {
      FieldDelimiter: FieldDelimiter,
    },
  },
  withS3SuffixPath(S3SuffixPath): {
    assert std.isString(S3SuffixPath) : 'S3SuffixPath must be a string',
    Properties+::: {
      S3SuffixPath: S3SuffixPath,
    },
  },
  withS3EnableHiveCompatiblePath(S3EnableHiveCompatiblePath): {
    assert std.isBoolean(S3EnableHiveCompatiblePath) : 'S3EnableHiveCompatiblePath must be a boolean',
    Properties+::: {
      S3EnableHiveCompatiblePath: S3EnableHiveCompatiblePath,
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
