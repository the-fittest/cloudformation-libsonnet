{
  new(
    Group,
    TagKey,
    TagValue,
    RoleArn,
  ): {
    local base = self,
    Properties: {
      Group:
        if !std.isString(Group) then (error 'Group must be a string')
        else if std.isEmpty(Group) then (error 'Group must be not empty')
        else if std.length(Group) < 12 then error ('Group should have at least 12 characters')
        else if std.length(Group) > 1600 then error ('Group should have not more than 1600 characters')
        else Group,
      TagKey:
        if !std.isString(TagKey) then (error 'TagKey must be a string')
        else if std.isEmpty(TagKey) then (error 'TagKey must be not empty')
        else if std.length(TagKey) < 1 then error ('TagKey should have at least 1 characters')
        else if std.length(TagKey) > 128 then error ('TagKey should have not more than 128 characters')
        else TagKey,
      TagValue:
        if !std.isString(TagValue) then (error 'TagValue must be a string')
        else if std.isEmpty(TagValue) then (error 'TagValue must be not empty')
        else if std.length(TagValue) > 256 then error ('TagValue should have not more than 256 characters')
        else TagValue,
      RoleArn:
        if !std.isString(RoleArn) then (error 'RoleArn must be a string')
        else if std.isEmpty(RoleArn) then (error 'RoleArn must be not empty')
        else if std.length(RoleArn) < 20 then error ('RoleArn should have at least 20 characters')
        else if std.length(RoleArn) > 2048 then error ('RoleArn should have not more than 2048 characters')
        else RoleArn,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::ResourceGroups::TagSyncTask',
  },
  setGroupArn(GroupArn): {
    Properties+::: {
      GroupArn:
        if !std.isString(GroupArn) then (error 'GroupArn must be a string')
        else if std.isEmpty(GroupArn) then (error 'GroupArn must be not empty')
        else if std.length(GroupArn) < 12 then error ('GroupArn should have at least 12 characters')
        else if std.length(GroupArn) > 1600 then error ('GroupArn should have not more than 1600 characters')
        else GroupArn,
    },
  },
  setGroupName(GroupName): {
    Properties+::: {
      GroupName:
        if !std.isString(GroupName) then (error 'GroupName must be a string')
        else if std.isEmpty(GroupName) then (error 'GroupName must be not empty')
        else if std.length(GroupName) < 1 then error ('GroupName should have at least 1 characters')
        else if std.length(GroupName) > 300 then error ('GroupName should have not more than 300 characters')
        else GroupName,
    },
  },
  setTaskArn(TaskArn): {
    Properties+::: {
      TaskArn:
        if !std.isString(TaskArn) then (error 'TaskArn must be a string')
        else if std.isEmpty(TaskArn) then (error 'TaskArn must be not empty')
        else if std.length(TaskArn) < 12 then error ('TaskArn should have at least 12 characters')
        else if std.length(TaskArn) > 1600 then error ('TaskArn should have not more than 1600 characters')
        else TaskArn,
    },
  },
  setStatus(Status): {
    Properties+::: {
      Status:
        if !std.isString(Status) then (error 'Status must be a string')
        else if std.isEmpty(Status) then (error 'Status must be not empty')
        else if Status != 'ACTIVE' && Status != 'ERROR' then (error "Status should be 'ACTIVE' or 'ERROR'")
        else Status,
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
