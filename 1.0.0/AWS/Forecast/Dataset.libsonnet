{
  new(
    DatasetName,
    DatasetType,
    Domain,
    Schema,
  ): {
    local base = self,
    Properties: {
      assert std.isString(DatasetName) : 'DatasetName must be a string',
      DatasetName: DatasetName,
      assert std.isString(DatasetType) : 'DatasetType must be a string',
      assert DatasetType == 'TARGET_TIME_SERIES' || DatasetType == 'RELATED_TIME_SERIES' || DatasetType == 'ITEM_METADATA' : "DatasetType should be 'TARGET_TIME_SERIES' or 'RELATED_TIME_SERIES' or 'ITEM_METADATA'",
      DatasetType: DatasetType,
      assert std.isString(Domain) : 'Domain must be a string',
      assert Domain == 'RETAIL' || Domain == 'CUSTOM' || Domain == 'INVENTORY_PLANNING' || Domain == 'EC2_CAPACITY' || Domain == 'WORK_FORCE' || Domain == 'WEB_TRAFFIC' || Domain == 'METRICS' : "Domain should be 'RETAIL' or 'CUSTOM' or 'INVENTORY_PLANNING' or 'EC2_CAPACITY' or 'WORK_FORCE' or 'WEB_TRAFFIC' or 'METRICS'",
      Domain: Domain,
      assert std.isObject(Schema) : 'Schema must be an object',
      Schema: Schema,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Forecast::Dataset',
  },
  withArn(Arn): {
    assert std.isString(Arn) : 'Arn must be a string',
    Properties+::: {
      Arn: Arn,
    },
  },
  withDataFrequency(DataFrequency): {
    assert std.isString(DataFrequency) : 'DataFrequency must be a string',
    Properties+::: {
      DataFrequency: DataFrequency,
    },
  },
  withEncryptionConfig(EncryptionConfig): {
    assert std.isObject(EncryptionConfig) : 'EncryptionConfig must be a object',
    Properties+::: {
      EncryptionConfig: EncryptionConfig,
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
