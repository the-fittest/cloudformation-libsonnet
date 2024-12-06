{
  new(
    DBClusterIdentifier,
    MaxACU,
  ): {
    local base = self,
    Properties: {
      DBClusterIdentifier:
        if !std.isString(DBClusterIdentifier) then (error 'DBClusterIdentifier must be a string')
        else if std.isEmpty(DBClusterIdentifier) then (error 'DBClusterIdentifier must be not empty')
        else if std.length(DBClusterIdentifier) < 1 then error ('DBClusterIdentifier should have at least 1 characters')
        else if std.length(DBClusterIdentifier) > 63 then error ('DBClusterIdentifier should have not more than 63 characters')
        else DBClusterIdentifier,
      MaxACU:
        if !std.isNumber(MaxACU) then (error 'MaxACU must be an number')
        else MaxACU,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::RDS::DBShardGroup',
  },
  setDBShardGroupResourceId(DBShardGroupResourceId): {
    Properties+::: {
      DBShardGroupResourceId:
        if !std.isString(DBShardGroupResourceId) then (error 'DBShardGroupResourceId must be a string')
        else if std.isEmpty(DBShardGroupResourceId) then (error 'DBShardGroupResourceId must be not empty')
        else DBShardGroupResourceId,
    },
  },
  setDBShardGroupIdentifier(DBShardGroupIdentifier): {
    Properties+::: {
      DBShardGroupIdentifier:
        if !std.isString(DBShardGroupIdentifier) then (error 'DBShardGroupIdentifier must be a string')
        else if std.isEmpty(DBShardGroupIdentifier) then (error 'DBShardGroupIdentifier must be not empty')
        else if std.length(DBShardGroupIdentifier) < 1 then error ('DBShardGroupIdentifier should have at least 1 characters')
        else if std.length(DBShardGroupIdentifier) > 63 then error ('DBShardGroupIdentifier should have not more than 63 characters')
        else DBShardGroupIdentifier,
    },
  },
  setComputeRedundancy(ComputeRedundancy): {
    Properties+::: {
      ComputeRedundancy:
        if !std.isNumber(ComputeRedundancy) then (error 'ComputeRedundancy must be an number')
        else ComputeRedundancy,
    },
  },
  setMinACU(MinACU): {
    Properties+::: {
      MinACU:
        if !std.isNumber(MinACU) then (error 'MinACU must be an number')
        else MinACU,
    },
  },
  setPubliclyAccessible(PubliclyAccessible): {
    Properties+::: {
      PubliclyAccessible:
        if !std.isBoolean(PubliclyAccessible) then (error 'PubliclyAccessible must be a boolean') else PubliclyAccessible,
    },
  },
  setEndpoint(Endpoint): {
    Properties+::: {
      Endpoint:
        if !std.isString(Endpoint) then (error 'Endpoint must be a string')
        else if std.isEmpty(Endpoint) then (error 'Endpoint must be not empty')
        else Endpoint,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else if std.length(Tags) > 50 then error ('Tags cannot have more than 50 items')
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
