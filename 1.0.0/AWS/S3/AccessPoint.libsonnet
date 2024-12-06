{
  new(
    Bucket,
  ): {
    local base = self,
    Properties: {
      Bucket:
        if !std.isString(Bucket) then (error 'Bucket must be a string')
        else if std.isEmpty(Bucket) then (error 'Bucket must be not empty')
        else if std.length(Bucket) < 3 then error ('Bucket should have at least 3 characters')
        else if std.length(Bucket) > 255 then error ('Bucket should have not more than 255 characters')
        else Bucket,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::S3::AccessPoint',
  },
  setName(Name): {
    Properties+::: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else if std.length(Name) < 3 then error ('Name should have at least 3 characters')
        else if std.length(Name) > 50 then error ('Name should have not more than 50 characters')
        else Name,
    },
  },
  setAlias(Alias): {
    Properties+::: {
      Alias:
        if !std.isString(Alias) then (error 'Alias must be a string')
        else if std.isEmpty(Alias) then (error 'Alias must be not empty')
        else if std.length(Alias) < 3 then error ('Alias should have at least 3 characters')
        else if std.length(Alias) > 63 then error ('Alias should have not more than 63 characters')
        else Alias,
    },
  },
  setBucketAccountId(BucketAccountId): {
    Properties+::: {
      BucketAccountId:
        if !std.isString(BucketAccountId) then (error 'BucketAccountId must be a string')
        else if std.isEmpty(BucketAccountId) then (error 'BucketAccountId must be not empty')
        else if std.length(BucketAccountId) > 64 then error ('BucketAccountId should have not more than 64 characters')
        else BucketAccountId,
    },
  },
  setVpcConfiguration(VpcConfiguration): {
    Properties+::: {
      VpcConfiguration:
        if !std.isObject(VpcConfiguration) then (error 'VpcConfiguration must be an object')
        else VpcConfiguration,
    },
  },
  setPublicAccessBlockConfiguration(PublicAccessBlockConfiguration): {
    Properties+::: {
      PublicAccessBlockConfiguration:
        if !std.isObject(PublicAccessBlockConfiguration) then (error 'PublicAccessBlockConfiguration must be an object')
        else PublicAccessBlockConfiguration,
    },
  },
  setPolicy(Policy): {
    Properties+::: {
      Policy:
        if !std.isObject(Policy) then (error 'Policy must be an object')
        else Policy,
    },
  },
  setNetworkOrigin(NetworkOrigin): {
    Properties+::: {
      NetworkOrigin:
        if !std.isString(NetworkOrigin) then (error 'NetworkOrigin must be a string')
        else if std.isEmpty(NetworkOrigin) then (error 'NetworkOrigin must be not empty')
        else if NetworkOrigin != 'Internet' && NetworkOrigin != 'VPC' then (error "NetworkOrigin should be 'Internet' or 'VPC'")
        else NetworkOrigin,
    },
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else Arn,
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
