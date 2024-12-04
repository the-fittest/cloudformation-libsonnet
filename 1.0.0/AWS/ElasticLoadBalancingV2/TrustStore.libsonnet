{
  // AWS ElasticLoadBalancingV2 TrustStore
  TrustStore: {
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
      Type: 'AWS::ElasticLoadBalancingV2::TrustStore',
    },
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: {
        Name: Name,
      },
    },
    withCaCertificatesBundleS3Bucket(CaCertificatesBundleS3Bucket): {
      assert std.isString(CaCertificatesBundleS3Bucket) : 'CaCertificatesBundleS3Bucket must be a string',
      Properties+::: {
        CaCertificatesBundleS3Bucket: CaCertificatesBundleS3Bucket,
      },
    },
    withCaCertificatesBundleS3Key(CaCertificatesBundleS3Key): {
      assert std.isString(CaCertificatesBundleS3Key) : 'CaCertificatesBundleS3Key must be a string',
      Properties+::: {
        CaCertificatesBundleS3Key: CaCertificatesBundleS3Key,
      },
    },
    withCaCertificatesBundleS3ObjectVersion(CaCertificatesBundleS3ObjectVersion): {
      assert std.isString(CaCertificatesBundleS3ObjectVersion) : 'CaCertificatesBundleS3ObjectVersion must be a string',
      Properties+::: {
        CaCertificatesBundleS3ObjectVersion: CaCertificatesBundleS3ObjectVersion,
      },
    },
    withStatus(Status): {
      assert std.isString(Status) : 'Status must be a string',
      Properties+::: {
        Status: Status,
      },
    },
    withNumberOfCaCertificates(NumberOfCaCertificates): {
      assert std.isNumber(NumberOfCaCertificates) : 'NumberOfCaCertificates must be a number',
      Properties+::: {
        NumberOfCaCertificates: NumberOfCaCertificates,
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
    withTrustStoreArn(TrustStoreArn): {
      assert std.isString(TrustStoreArn) : 'TrustStoreArn must be a string',
      Properties+::: {
        TrustStoreArn: TrustStoreArn,
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
  },
}
