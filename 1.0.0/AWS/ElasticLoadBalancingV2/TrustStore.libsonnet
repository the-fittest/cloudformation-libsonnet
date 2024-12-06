{
  new(): {
    local base = self,
    Properties:: {},
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::ElasticLoadBalancingV2::TrustStore',
  },
  setName(Name): {
    Properties+::: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else Name,
    },
  },
  setCaCertificatesBundleS3Bucket(CaCertificatesBundleS3Bucket): {
    Properties+::: {
      CaCertificatesBundleS3Bucket:
        if !std.isString(CaCertificatesBundleS3Bucket) then (error 'CaCertificatesBundleS3Bucket must be a string')
        else if std.isEmpty(CaCertificatesBundleS3Bucket) then (error 'CaCertificatesBundleS3Bucket must be not empty')
        else CaCertificatesBundleS3Bucket,
    },
  },
  setCaCertificatesBundleS3Key(CaCertificatesBundleS3Key): {
    Properties+::: {
      CaCertificatesBundleS3Key:
        if !std.isString(CaCertificatesBundleS3Key) then (error 'CaCertificatesBundleS3Key must be a string')
        else if std.isEmpty(CaCertificatesBundleS3Key) then (error 'CaCertificatesBundleS3Key must be not empty')
        else CaCertificatesBundleS3Key,
    },
  },
  setCaCertificatesBundleS3ObjectVersion(CaCertificatesBundleS3ObjectVersion): {
    Properties+::: {
      CaCertificatesBundleS3ObjectVersion:
        if !std.isString(CaCertificatesBundleS3ObjectVersion) then (error 'CaCertificatesBundleS3ObjectVersion must be a string')
        else if std.isEmpty(CaCertificatesBundleS3ObjectVersion) then (error 'CaCertificatesBundleS3ObjectVersion must be not empty')
        else CaCertificatesBundleS3ObjectVersion,
    },
  },
  setStatus(Status): {
    Properties+::: {
      Status:
        if !std.isString(Status) then (error 'Status must be a string')
        else if std.isEmpty(Status) then (error 'Status must be not empty')
        else Status,
    },
  },
  setNumberOfCaCertificates(NumberOfCaCertificates): {
    Properties+::: {
      NumberOfCaCertificates:
        if !std.isNumber(NumberOfCaCertificates) then (error 'NumberOfCaCertificates must be an number')
        else NumberOfCaCertificates,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else Tags,
    },
  },
  pushTags(Tags): {
    Properties+::: {
      Tags+: Tags,
    },
  },
  setTrustStoreArn(TrustStoreArn): {
    Properties+::: {
      TrustStoreArn:
        if !std.isString(TrustStoreArn) then (error 'TrustStoreArn must be a string')
        else if std.isEmpty(TrustStoreArn) then (error 'TrustStoreArn must be not empty')
        else TrustStoreArn,
    },
  },
  setDependsOn(DependsOn): {
    Properties+::: {
      DependsOn: DependsOn,
    },
  },
  pushDependsOn(DependsOn): {
    Properties+::: {
      DependsOn+: DependsOn,
    },
  },
  setCreationPolicy(CreationPolicy): {
    Properties+::: {
      CreationPolicy: CreationPolicy,
    },
  },
  pushCreationPolicy(CreationPolicy): {
    Properties+::: {
      CreationPolicy+: CreationPolicy,
    },
  },
  setDeletionPolicy(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy: DeletionPolicy,
    },
  },
  pushDeletionPolicy(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy+: DeletionPolicy,
    },
  },
  setUpdatePolicy(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy: UpdatePolicy,
    },
  },
  pushUpdatePolicy(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy+: UpdatePolicy,
    },
  },
  setUpdateReplacePolicy(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy: UpdateReplacePolicy,
    },
  },
  pushUpdateReplacePolicy(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy+: UpdateReplacePolicy,
    },
  },
  setMetadata(Metadata): {
    Properties+::: {
      Metadata: Metadata,
    },
  },
  pushMetadata(Metadata): {
    Properties+::: {
      Metadata+: Metadata,
    },
  },
}
