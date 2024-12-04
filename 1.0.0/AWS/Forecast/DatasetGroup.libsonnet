{
  new(
    DatasetGroupName,
    Domain,
  ): {
    local base = self,
    Properties: {
      assert std.isString(DatasetGroupName) : 'DatasetGroupName must be a string',
      DatasetGroupName: DatasetGroupName,
      assert std.isString(Domain) : 'Domain must be a string',
      assert Domain == 'RETAIL' || Domain == 'CUSTOM' || Domain == 'INVENTORY_PLANNING' || Domain == 'EC2_CAPACITY' || Domain == 'WORK_FORCE' || Domain == 'WEB_TRAFFIC' || Domain == 'METRICS' : "Domain should be 'RETAIL' or 'CUSTOM' or 'INVENTORY_PLANNING' or 'EC2_CAPACITY' or 'WORK_FORCE' or 'WEB_TRAFFIC' or 'METRICS'",
      Domain: Domain,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Forecast::DatasetGroup',
  },
  withDatasetArns(DatasetArns): {
    Properties+::: {
      DatasetArns: (if std.isArray(DatasetArns) then DatasetArns else [DatasetArns]),
    },
  },
  withDatasetArnsMixin(DatasetArns): {
    Properties+::: {
      DatasetArns+: (if std.isArray(DatasetArns) then DatasetArns else [DatasetArns]),
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
  withDatasetGroupArn(DatasetGroupArn): {
    assert std.isString(DatasetGroupArn) : 'DatasetGroupArn must be a string',
    Properties+::: {
      DatasetGroupArn: DatasetGroupArn,
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
