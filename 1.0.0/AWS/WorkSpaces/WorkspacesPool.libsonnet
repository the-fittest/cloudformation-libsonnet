{
  new(
    PoolName,
    BundleId,
    DirectoryId,
    Capacity,
  ): {
    local base = self,
    Properties: {
      PoolName:
        if !std.isString(PoolName) then (error 'PoolName must be a string')
        else if std.isEmpty(PoolName) then (error 'PoolName must be not empty')
        else PoolName,
      BundleId:
        if !std.isString(BundleId) then (error 'BundleId must be a string')
        else if std.isEmpty(BundleId) then (error 'BundleId must be not empty')
        else BundleId,
      DirectoryId:
        if !std.isString(DirectoryId) then (error 'DirectoryId must be a string')
        else if std.isEmpty(DirectoryId) then (error 'DirectoryId must be not empty')
        else if std.length(DirectoryId) < 10 then error ('DirectoryId should have at least 10 characters')
        else if std.length(DirectoryId) > 65 then error ('DirectoryId should have not more than 65 characters')
        else DirectoryId,
      Capacity:
        if !std.isObject(Capacity) then (error 'Capacity must be an object')
        else if !std.objectHas(Capacity, 'DesiredUserSessions') then (error ' have attribute DesiredUserSessions')
        else Capacity,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::WorkSpaces::WorkspacesPool',
  },
  setPoolId(PoolId): {
    Properties+::: {
      PoolId:
        if !std.isString(PoolId) then (error 'PoolId must be a string')
        else if std.isEmpty(PoolId) then (error 'PoolId must be not empty')
        else PoolId,
    },
  },
  setPoolArn(PoolArn): {
    Properties+::: {
      PoolArn:
        if !std.isString(PoolArn) then (error 'PoolArn must be a string')
        else if std.isEmpty(PoolArn) then (error 'PoolArn must be not empty')
        else PoolArn,
    },
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else if std.length(Description) < 1 then error ('Description should have at least 1 characters')
        else if std.length(Description) > 255 then error ('Description should have not more than 255 characters')
        else Description,
    },
  },
  setCreatedAt(CreatedAt): {
    Properties+::: {
      CreatedAt:
        if !std.isString(CreatedAt) then (error 'CreatedAt must be a string')
        else if std.isEmpty(CreatedAt) then (error 'CreatedAt must be not empty')
        else CreatedAt,
    },
  },
  setApplicationSettings(ApplicationSettings): {
    Properties+::: {
      ApplicationSettings:
        if !std.isObject(ApplicationSettings) then (error 'ApplicationSettings must be an object')
        else if !std.objectHas(ApplicationSettings, 'Status') then (error ' have attribute Status')
        else ApplicationSettings,
    },
  },
  setTimeoutSettings(TimeoutSettings): {
    Properties+::: {
      TimeoutSettings:
        if !std.isObject(TimeoutSettings) then (error 'TimeoutSettings must be an object')
        else TimeoutSettings,
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
