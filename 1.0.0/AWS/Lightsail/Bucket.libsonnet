{
  new(
    BucketName,
    BundleId,
  ): {
    local base = self,
    Properties: {
      BucketName:
        if !std.isString(BucketName) then (error 'BucketName must be a string')
        else if std.isEmpty(BucketName) then (error 'BucketName must be not empty')
        else if std.length(BucketName) < 3 then error ('BucketName should have at least 3 characters')
        else if std.length(BucketName) > 54 then error ('BucketName should have not more than 54 characters')
        else BucketName,
      BundleId:
        if !std.isString(BundleId) then (error 'BundleId must be a string')
        else if std.isEmpty(BundleId) then (error 'BundleId must be not empty')
        else BundleId,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Lightsail::Bucket',
  },
  setBucketArn(BucketArn): {
    Properties+::: {
      BucketArn:
        if !std.isString(BucketArn) then (error 'BucketArn must be a string')
        else if std.isEmpty(BucketArn) then (error 'BucketArn must be not empty')
        else BucketArn,
    },
  },
  setObjectVersioning(ObjectVersioning): {
    Properties+::: {
      ObjectVersioning:
        if !std.isBoolean(ObjectVersioning) then (error 'ObjectVersioning must be a boolean') else ObjectVersioning,
    },
  },
  setAccessRules(AccessRules): {
    Properties+::: {
      AccessRules:
        if !std.isObject(AccessRules) then (error 'AccessRules must be an object')
        else AccessRules,
    },
  },
  setResourcesReceivingAccess(ResourcesReceivingAccess): {
    Properties+::: {
      ResourcesReceivingAccess:
        if !std.isArray(ResourcesReceivingAccess) then (error 'ResourcesReceivingAccess must be an array')
        else ResourcesReceivingAccess,
    },
  },
  setResourcesReceivingAccessMixin(ResourcesReceivingAccess): {
    Properties+::: {
      ResourcesReceivingAccess+: ResourcesReceivingAccess,
    },
  },
  setReadOnlyAccessAccounts(ReadOnlyAccessAccounts): {
    Properties+::: {
      ReadOnlyAccessAccounts:
        if !std.isArray(ReadOnlyAccessAccounts) then (error 'ReadOnlyAccessAccounts must be an array')
        else ReadOnlyAccessAccounts,
    },
  },
  setReadOnlyAccessAccountsMixin(ReadOnlyAccessAccounts): {
    Properties+::: {
      ReadOnlyAccessAccounts+: ReadOnlyAccessAccounts,
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
  setUrl(Url): {
    Properties+::: {
      Url:
        if !std.isString(Url) then (error 'Url must be a string')
        else if std.isEmpty(Url) then (error 'Url must be not empty')
        else Url,
    },
  },
  setAbleToUpdateBundle(AbleToUpdateBundle): {
    Properties+::: {
      AbleToUpdateBundle:
        if !std.isBoolean(AbleToUpdateBundle) then (error 'AbleToUpdateBundle must be a boolean') else AbleToUpdateBundle,
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
