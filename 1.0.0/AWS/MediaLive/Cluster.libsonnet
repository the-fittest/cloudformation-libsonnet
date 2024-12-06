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
    Type: 'AWS::MediaLive::Cluster',
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else Arn,
    },
  },
  setChannelIds(ChannelIds): {
    Properties+::: {
      ChannelIds:
        if !std.isArray(ChannelIds) then (error 'ChannelIds must be an array')
        else ChannelIds,
    },
  },
  pushChannelIds(ChannelIds): {
    Properties+::: {
      ChannelIds+: ChannelIds,
    },
  },
  setClusterType(ClusterType): {
    Properties+::: {
      ClusterType:
        if !std.isString(ClusterType) then (error 'ClusterType must be a string')
        else if std.isEmpty(ClusterType) then (error 'ClusterType must be not empty')
        else if ClusterType != 'ON_PREMISES' && ClusterType != 'OUTPOSTS_RACK' && ClusterType != 'OUTPOSTS_SERVER' && ClusterType != 'EC2' then (error "ClusterType should be 'ON_PREMISES' or 'OUTPOSTS_RACK' or 'OUTPOSTS_SERVER' or 'EC2'")
        else ClusterType,
    },
  },
  setId(Id): {
    Properties+::: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else Id,
    },
  },
  setInstanceRoleArn(InstanceRoleArn): {
    Properties+::: {
      InstanceRoleArn:
        if !std.isString(InstanceRoleArn) then (error 'InstanceRoleArn must be a string')
        else if std.isEmpty(InstanceRoleArn) then (error 'InstanceRoleArn must be not empty')
        else InstanceRoleArn,
    },
  },
  setName(Name): {
    Properties+::: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else Name,
    },
  },
  setNetworkSettings(NetworkSettings): {
    Properties+::: {
      NetworkSettings:
        if !std.isObject(NetworkSettings) then (error 'NetworkSettings must be an object')
        else NetworkSettings,
    },
  },
  setState(State): {
    Properties+::: {
      State:
        if !std.isString(State) then (error 'State must be a string')
        else if std.isEmpty(State) then (error 'State must be not empty')
        else if State != 'CREATING' && State != 'CREATE_FAILED' && State != 'ACTIVE' && State != 'DELETING' && State != 'DELETED' then (error "State should be 'CREATING' or 'CREATE_FAILED' or 'ACTIVE' or 'DELETING' or 'DELETED'")
        else State,
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
