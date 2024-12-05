{
  new(
    AccessTypes,
    DataLakeArn,
    Sources,
    SubscriberIdentity,
    SubscriberName,
  ): {
    local base = self,
    Properties: {
      AccessTypes:
        if !std.isArray(AccessTypes) then (error 'AccessTypes must be an array')
        else if std.length(AccessTypes) < 1 then error ('AccessTypes cannot have less than 1 items')
        else AccessTypes,
      DataLakeArn:
        if !std.isString(DataLakeArn) then (error 'DataLakeArn must be a string')
        else if std.isEmpty(DataLakeArn) then (error 'DataLakeArn must be not empty')
        else if std.length(DataLakeArn) < 1 then error ('DataLakeArn should have at least 1 characters')
        else if std.length(DataLakeArn) > 256 then error ('DataLakeArn should have not more than 256 characters')
        else DataLakeArn,
      Sources:
        if !std.isArray(Sources) then (error 'Sources must be an array')
        else Sources,
      SubscriberIdentity:
        if !std.isObject(SubscriberIdentity) then (error 'SubscriberIdentity must be an object')
        else if !std.objectHas(SubscriberIdentity, 'ExternalId') then (error ' have attribute ExternalId')
        else if !std.objectHas(SubscriberIdentity, 'Principal') then (error ' have attribute Principal')
        else SubscriberIdentity,
      SubscriberName:
        if !std.isString(SubscriberName) then (error 'SubscriberName must be a string')
        else if std.isEmpty(SubscriberName) then (error 'SubscriberName must be not empty')
        else if std.length(SubscriberName) < 1 then error ('SubscriberName should have at least 1 characters')
        else if std.length(SubscriberName) > 64 then error ('SubscriberName should have not more than 64 characters')
        else SubscriberName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::SecurityLake::Subscriber',
  },
  setSubscriberDescription(SubscriberDescription): {
    Properties+::: {
      SubscriberDescription:
        if !std.isString(SubscriberDescription) then (error 'SubscriberDescription must be a string')
        else if std.isEmpty(SubscriberDescription) then (error 'SubscriberDescription must be not empty')
        else SubscriberDescription,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else Tags,
    },
  },
  setTagsMixin(Tags): {
    Properties+::: {
      Tags+: Tags,
    },
  },
  setResourceShareArn(ResourceShareArn): {
    Properties+::: {
      ResourceShareArn:
        if !std.isString(ResourceShareArn) then (error 'ResourceShareArn must be a string')
        else if std.isEmpty(ResourceShareArn) then (error 'ResourceShareArn must be not empty')
        else ResourceShareArn,
    },
  },
  setResourceShareName(ResourceShareName): {
    Properties+::: {
      ResourceShareName:
        if !std.isString(ResourceShareName) then (error 'ResourceShareName must be a string')
        else if std.isEmpty(ResourceShareName) then (error 'ResourceShareName must be not empty')
        else ResourceShareName,
    },
  },
  setSubscriberRoleArn(SubscriberRoleArn): {
    Properties+::: {
      SubscriberRoleArn:
        if !std.isString(SubscriberRoleArn) then (error 'SubscriberRoleArn must be a string')
        else if std.isEmpty(SubscriberRoleArn) then (error 'SubscriberRoleArn must be not empty')
        else SubscriberRoleArn,
    },
  },
  setS3BucketArn(S3BucketArn): {
    Properties+::: {
      S3BucketArn:
        if !std.isString(S3BucketArn) then (error 'S3BucketArn must be a string')
        else if std.isEmpty(S3BucketArn) then (error 'S3BucketArn must be not empty')
        else S3BucketArn,
    },
  },
  setSubscriberArn(SubscriberArn): {
    Properties+::: {
      SubscriberArn:
        if !std.isString(SubscriberArn) then (error 'SubscriberArn must be a string')
        else if std.isEmpty(SubscriberArn) then (error 'SubscriberArn must be not empty')
        else SubscriberArn,
    },
  },
  setDependsOn(DependsOn): {
    Properties+::: {
      DependsOn: DependsOn,
    },
  },
  setDependsOnMixin(DependsOn): {
    Properties+::: {
      DependsOn+: DependsOn,
    },
  },
  setCreationPolicy(CreationPolicy): {
    Properties+::: {
      CreationPolicy: CreationPolicy,
    },
  },
  setCreationPolicyMixin(CreationPolicy): {
    Properties+::: {
      CreationPolicy+: CreationPolicy,
    },
  },
  setDeletionPolicy(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy: DeletionPolicy,
    },
  },
  setDeletionPolicyMixin(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy+: DeletionPolicy,
    },
  },
  setUpdatePolicy(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy: UpdatePolicy,
    },
  },
  setUpdatePolicyMixin(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy+: UpdatePolicy,
    },
  },
  setUpdateReplacePolicy(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy: UpdateReplacePolicy,
    },
  },
  setUpdateReplacePolicyMixin(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy+: UpdateReplacePolicy,
    },
  },
  setMetadata(Metadata): {
    Properties+::: {
      Metadata: Metadata,
    },
  },
  setMetadataMixin(Metadata): {
    Properties+::: {
      Metadata+: Metadata,
    },
  },
}
