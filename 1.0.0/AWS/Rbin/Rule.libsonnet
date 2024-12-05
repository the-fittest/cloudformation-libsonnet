{
  new(
    RetentionPeriod,
    ResourceType,
  ): {
    local base = self,
    Properties: {
      RetentionPeriod:
        if !std.isObject(RetentionPeriod) then (error 'RetentionPeriod must be an object')
        else if !std.objectHas(RetentionPeriod, 'RetentionPeriodValue') then (error ' have attribute RetentionPeriodValue')
        else if !std.objectHas(RetentionPeriod, 'RetentionPeriodUnit') then (error ' have attribute RetentionPeriodUnit')
        else RetentionPeriod,
      ResourceType:
        if !std.isString(ResourceType) then (error 'ResourceType must be a string')
        else if std.isEmpty(ResourceType) then (error 'ResourceType must be not empty')
        else if ResourceType != 'EBS_SNAPSHOT' && ResourceType != 'EC2_IMAGE' then (error "ResourceType should be 'EBS_SNAPSHOT' or 'EC2_IMAGE'")
        else ResourceType,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Rbin::Rule',
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else if std.length(Arn) > 1011 then error ('Arn should have not more than 1011 characters')
        else Arn,
    },
  },
  setIdentifier(Identifier): {
    Properties+::: {
      Identifier:
        if !std.isString(Identifier) then (error 'Identifier must be a string')
        else if std.isEmpty(Identifier) then (error 'Identifier must be not empty')
        else Identifier,
    },
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else if std.length(Description) > 255 then error ('Description should have not more than 255 characters')
        else Description,
    },
  },
  setResourceTags(ResourceTags): {
    Properties+::: {
      ResourceTags:
        if !std.isArray(ResourceTags) then (error 'ResourceTags must be an array')
        else if std.length(ResourceTags) > 50 then error ('ResourceTags cannot have more than 50 items')
        else ResourceTags,
    },
  },
  setResourceTagsMixin(ResourceTags): {
    Properties+::: {
      ResourceTags+: ResourceTags,
    },
  },
  setExcludeResourceTags(ExcludeResourceTags): {
    Properties+::: {
      ExcludeResourceTags:
        if !std.isArray(ExcludeResourceTags) then (error 'ExcludeResourceTags must be an array')
        else if std.length(ExcludeResourceTags) > 5 then error ('ExcludeResourceTags cannot have more than 5 items')
        else ExcludeResourceTags,
    },
  },
  setExcludeResourceTagsMixin(ExcludeResourceTags): {
    Properties+::: {
      ExcludeResourceTags+: ExcludeResourceTags,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else if std.length(Tags) > 200 then error ('Tags cannot have more than 200 items')
        else Tags,
    },
  },
  setTagsMixin(Tags): {
    Properties+::: {
      Tags+: Tags,
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
  setLockConfiguration(LockConfiguration): {
    Properties+::: {
      LockConfiguration:
        if !std.isObject(LockConfiguration) then (error 'LockConfiguration must be an object')
        else LockConfiguration,
    },
  },
  setLockState(LockState): {
    Properties+::: {
      LockState:
        if !std.isString(LockState) then (error 'LockState must be a string')
        else if std.isEmpty(LockState) then (error 'LockState must be not empty')
        else LockState,
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
