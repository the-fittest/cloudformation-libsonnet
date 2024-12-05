{
  new(
    ReplicationConfigIdentifier,
    SourceEndpointArn,
    TargetEndpointArn,
    ReplicationType,
    ComputeConfig,
    TableMappings,
  ): {
    local base = self,
    Properties: {
      ReplicationConfigIdentifier:
        if !std.isString(ReplicationConfigIdentifier) then (error 'ReplicationConfigIdentifier must be a string')
        else if std.isEmpty(ReplicationConfigIdentifier) then (error 'ReplicationConfigIdentifier must be not empty')
        else ReplicationConfigIdentifier,
      SourceEndpointArn:
        if !std.isString(SourceEndpointArn) then (error 'SourceEndpointArn must be a string')
        else if std.isEmpty(SourceEndpointArn) then (error 'SourceEndpointArn must be not empty')
        else SourceEndpointArn,
      TargetEndpointArn:
        if !std.isString(TargetEndpointArn) then (error 'TargetEndpointArn must be a string')
        else if std.isEmpty(TargetEndpointArn) then (error 'TargetEndpointArn must be not empty')
        else TargetEndpointArn,
      ReplicationType:
        if !std.isString(ReplicationType) then (error 'ReplicationType must be a string')
        else if std.isEmpty(ReplicationType) then (error 'ReplicationType must be not empty')
        else if ReplicationType != 'full-load' && ReplicationType != 'full-load-and-cdc' && ReplicationType != 'cdc' then (error "ReplicationType should be 'full-load' or 'full-load-and-cdc' or 'cdc'")
        else ReplicationType,
      ComputeConfig:
        if !std.isObject(ComputeConfig) then (error 'ComputeConfig must be an object')
        else if !std.objectHas(ComputeConfig, 'MaxCapacityUnits') then (error ' have attribute MaxCapacityUnits')
        else ComputeConfig,
      TableMappings:
        if !std.isObject(TableMappings) then (error 'TableMappings must be an object')
        else TableMappings,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::DMS::ReplicationConfig',
  },
  setReplicationConfigArn(ReplicationConfigArn): {
    Properties+::: {
      ReplicationConfigArn:
        if !std.isString(ReplicationConfigArn) then (error 'ReplicationConfigArn must be a string')
        else if std.isEmpty(ReplicationConfigArn) then (error 'ReplicationConfigArn must be not empty')
        else ReplicationConfigArn,
    },
  },
  setReplicationSettings(ReplicationSettings): {
    Properties+::: {
      ReplicationSettings:
        if !std.isObject(ReplicationSettings) then (error 'ReplicationSettings must be an object')
        else ReplicationSettings,
    },
  },
  setSupplementalSettings(SupplementalSettings): {
    Properties+::: {
      SupplementalSettings:
        if !std.isObject(SupplementalSettings) then (error 'SupplementalSettings must be an object')
        else SupplementalSettings,
    },
  },
  setResourceIdentifier(ResourceIdentifier): {
    Properties+::: {
      ResourceIdentifier:
        if !std.isString(ResourceIdentifier) then (error 'ResourceIdentifier must be a string')
        else if std.isEmpty(ResourceIdentifier) then (error 'ResourceIdentifier must be not empty')
        else ResourceIdentifier,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else if std.length(Tags) < 1 then error ('Tags cannot have less than 1 items')
        else if std.length(Tags) > 200 then error ('Tags cannot have more than 200 items')
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
