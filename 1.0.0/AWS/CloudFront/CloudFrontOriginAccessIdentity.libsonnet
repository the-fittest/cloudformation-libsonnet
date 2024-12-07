{
  new(
    CloudFrontOriginAccessIdentityConfig,
  ): {
    local base = self,
    Properties: {
      CloudFrontOriginAccessIdentityConfig:
        if !std.isObject(CloudFrontOriginAccessIdentityConfig) then (error 'CloudFrontOriginAccessIdentityConfig must be an object')
        else if !std.objectHas(CloudFrontOriginAccessIdentityConfig, 'Comment') then (error ' have attribute Comment')
        else CloudFrontOriginAccessIdentityConfig,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::CloudFront::CloudFrontOriginAccessIdentity',
  },
  setId(Id): {
    Properties+::: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else Id,
    },
  },
  setS3CanonicalUserId(S3CanonicalUserId): {
    Properties+::: {
      S3CanonicalUserId:
        if !std.isString(S3CanonicalUserId) then (error 'S3CanonicalUserId must be a string')
        else if std.isEmpty(S3CanonicalUserId) then (error 'S3CanonicalUserId must be not empty')
        else S3CanonicalUserId,
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
