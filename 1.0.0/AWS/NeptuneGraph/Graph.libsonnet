{
  new(
    ProvisionedMemory,
  ): {
    local base = self,
    Properties: {
      ProvisionedMemory:
        if !std.isNumber(ProvisionedMemory) then (error 'ProvisionedMemory must be an number')
        else ProvisionedMemory,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::NeptuneGraph::Graph',
  },
  setDeletionProtection(DeletionProtection): {
    Properties+::: {
      DeletionProtection:
        if !std.isBoolean(DeletionProtection) then (error 'DeletionProtection must be a boolean') else DeletionProtection,
    },
  },
  setGraphName(GraphName): {
    Properties+::: {
      GraphName:
        if !std.isString(GraphName) then (error 'GraphName must be a string')
        else if std.isEmpty(GraphName) then (error 'GraphName must be not empty')
        else if std.length(GraphName) < 1 then error ('GraphName should have at least 1 characters')
        else if std.length(GraphName) > 63 then error ('GraphName should have not more than 63 characters')
        else GraphName,
    },
  },
  setPublicConnectivity(PublicConnectivity): {
    Properties+::: {
      PublicConnectivity:
        if !std.isBoolean(PublicConnectivity) then (error 'PublicConnectivity must be a boolean') else PublicConnectivity,
    },
  },
  setReplicaCount(ReplicaCount): {
    Properties+::: {
      ReplicaCount:
        if !std.isNumber(ReplicaCount) then (error 'ReplicaCount must be an number')
        else ReplicaCount,
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
  setTagsMixin(Tags): {
    Properties+::: {
      Tags+: Tags,
    },
  },
  setVectorSearchConfiguration(VectorSearchConfiguration): {
    Properties+::: {
      VectorSearchConfiguration:
        if !std.isObject(VectorSearchConfiguration) then (error 'VectorSearchConfiguration must be an object')
        else if !std.objectHas(VectorSearchConfiguration, 'VectorSearchDimension') then (error ' have attribute VectorSearchDimension')
        else VectorSearchConfiguration,
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
  setGraphArn(GraphArn): {
    Properties+::: {
      GraphArn:
        if !std.isString(GraphArn) then (error 'GraphArn must be a string')
        else if std.isEmpty(GraphArn) then (error 'GraphArn must be not empty')
        else GraphArn,
    },
  },
  setGraphId(GraphId): {
    Properties+::: {
      GraphId:
        if !std.isString(GraphId) then (error 'GraphId must be a string')
        else if std.isEmpty(GraphId) then (error 'GraphId must be not empty')
        else GraphId,
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
