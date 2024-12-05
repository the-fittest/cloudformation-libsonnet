{
  new(
    GlobalNetworkId,
  ): {
    local base = self,
    Properties: {
      GlobalNetworkId:
        if !std.isString(GlobalNetworkId) then (error 'GlobalNetworkId must be a string')
        else if std.isEmpty(GlobalNetworkId) then (error 'GlobalNetworkId must be not empty')
        else GlobalNetworkId,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::NetworkManager::CoreNetwork',
  },
  setCoreNetworkId(CoreNetworkId): {
    Properties+::: {
      CoreNetworkId:
        if !std.isString(CoreNetworkId) then (error 'CoreNetworkId must be a string')
        else if std.isEmpty(CoreNetworkId) then (error 'CoreNetworkId must be not empty')
        else CoreNetworkId,
    },
  },
  setCoreNetworkArn(CoreNetworkArn): {
    Properties+::: {
      CoreNetworkArn:
        if !std.isString(CoreNetworkArn) then (error 'CoreNetworkArn must be a string')
        else if std.isEmpty(CoreNetworkArn) then (error 'CoreNetworkArn must be not empty')
        else CoreNetworkArn,
    },
  },
  setPolicyDocument(PolicyDocument): {
    Properties+::: {
      PolicyDocument:
        if !std.isObject(PolicyDocument) then (error 'PolicyDocument must be an object')
        else PolicyDocument,
    },
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
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
  setState(State): {
    Properties+::: {
      State:
        if !std.isString(State) then (error 'State must be a string')
        else if std.isEmpty(State) then (error 'State must be not empty')
        else State,
    },
  },
  setSegments(Segments): {
    Properties+::: {
      Segments:
        if !std.isArray(Segments) then (error 'Segments must be an array')
        else Segments,
    },
  },
  setSegmentsMixin(Segments): {
    Properties+::: {
      Segments+: Segments,
    },
  },
  setNetworkFunctionGroups(NetworkFunctionGroups): {
    Properties+::: {
      NetworkFunctionGroups:
        if !std.isArray(NetworkFunctionGroups) then (error 'NetworkFunctionGroups must be an array')
        else NetworkFunctionGroups,
    },
  },
  setNetworkFunctionGroupsMixin(NetworkFunctionGroups): {
    Properties+::: {
      NetworkFunctionGroups+: NetworkFunctionGroups,
    },
  },
  setEdges(Edges): {
    Properties+::: {
      Edges:
        if !std.isArray(Edges) then (error 'Edges must be an array')
        else Edges,
    },
  },
  setEdgesMixin(Edges): {
    Properties+::: {
      Edges+: Edges,
    },
  },
  setOwnerAccount(OwnerAccount): {
    Properties+::: {
      OwnerAccount:
        if !std.isString(OwnerAccount) then (error 'OwnerAccount must be a string')
        else if std.isEmpty(OwnerAccount) then (error 'OwnerAccount must be not empty')
        else OwnerAccount,
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
