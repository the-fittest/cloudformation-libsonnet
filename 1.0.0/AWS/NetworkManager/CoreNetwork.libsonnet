{
  new(
    GlobalNetworkId,
  ): {
    local base = self,
    Properties: {
      assert std.isString(GlobalNetworkId) : 'GlobalNetworkId must be a string',
      GlobalNetworkId: GlobalNetworkId,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::NetworkManager::CoreNetwork',
  },
  withCoreNetworkId(CoreNetworkId): {
    assert std.isString(CoreNetworkId) : 'CoreNetworkId must be a string',
    Properties+::: {
      CoreNetworkId: CoreNetworkId,
    },
  },
  withCoreNetworkArn(CoreNetworkArn): {
    assert std.isString(CoreNetworkArn) : 'CoreNetworkArn must be a string',
    Properties+::: {
      CoreNetworkArn: CoreNetworkArn,
    },
  },
  withPolicyDocument(PolicyDocument): {
    assert std.isObject(PolicyDocument) : 'PolicyDocument must be a object',
    Properties+::: {
      PolicyDocument: PolicyDocument,
    },
  },
  withDescription(Description): {
    assert std.isString(Description) : 'Description must be a string',
    Properties+::: {
      Description: Description,
    },
  },
  withCreatedAt(CreatedAt): {
    assert std.isString(CreatedAt) : 'CreatedAt must be a string',
    Properties+::: {
      CreatedAt: CreatedAt,
    },
  },
  withState(State): {
    assert std.isString(State) : 'State must be a string',
    Properties+::: {
      State: State,
    },
  },
  withSegments(Segments): {
    Properties+::: {
      Segments: (if std.isArray(Segments) then Segments else [Segments]),
    },
  },
  withSegmentsMixin(Segments): {
    Properties+::: {
      Segments+: (if std.isArray(Segments) then Segments else [Segments]),
    },
  },
  withNetworkFunctionGroups(NetworkFunctionGroups): {
    Properties+::: {
      NetworkFunctionGroups: (if std.isArray(NetworkFunctionGroups) then NetworkFunctionGroups else [NetworkFunctionGroups]),
    },
  },
  withNetworkFunctionGroupsMixin(NetworkFunctionGroups): {
    Properties+::: {
      NetworkFunctionGroups+: (if std.isArray(NetworkFunctionGroups) then NetworkFunctionGroups else [NetworkFunctionGroups]),
    },
  },
  withEdges(Edges): {
    Properties+::: {
      Edges: (if std.isArray(Edges) then Edges else [Edges]),
    },
  },
  withEdgesMixin(Edges): {
    Properties+::: {
      Edges+: (if std.isArray(Edges) then Edges else [Edges]),
    },
  },
  withOwnerAccount(OwnerAccount): {
    assert std.isString(OwnerAccount) : 'OwnerAccount must be a string',
    Properties+::: {
      OwnerAccount: OwnerAccount,
    },
  },
  withTags(Tags): {
    Properties+::: {
      Tags: (if std.isArray(Tags) then Tags else [Tags]),
    },
  },
  withTagsMixin(Tags): {
    Properties+::: {
      Tags+: (if std.isArray(Tags) then Tags else [Tags]),
    },
  },
  withDependsOn(DependsOn): {
    Properties+::: {
      DependsOn: (if std.isArray(DependsOn) then DependsOn else [DependsOn]),
    },
  },
  withDependsOnMixin(DependsOn): {
    Properties+::: {
      DependsOn+: (if std.isArray(DependsOn) then DependsOn else [DependsOn]),
    },
  },
  withCreationPolicy(CreationPolicy): {
    Properties+::: {
      CreationPolicy: (if std.isArray(CreationPolicy) then CreationPolicy else [CreationPolicy]),
    },
  },
  withCreationPolicyMixin(CreationPolicy): {
    Properties+::: {
      CreationPolicy+: (if std.isArray(CreationPolicy) then CreationPolicy else [CreationPolicy]),
    },
  },
  withDeletionPolicy(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy: (if std.isArray(DeletionPolicy) then DeletionPolicy else [DeletionPolicy]),
    },
  },
  withDeletionPolicyMixin(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy+: (if std.isArray(DeletionPolicy) then DeletionPolicy else [DeletionPolicy]),
    },
  },
  withUpdatePolicy(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy: (if std.isArray(UpdatePolicy) then UpdatePolicy else [UpdatePolicy]),
    },
  },
  withUpdatePolicyMixin(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy+: (if std.isArray(UpdatePolicy) then UpdatePolicy else [UpdatePolicy]),
    },
  },
  withUpdateReplacePolicy(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy: (if std.isArray(UpdateReplacePolicy) then UpdateReplacePolicy else [UpdateReplacePolicy]),
    },
  },
  withUpdateReplacePolicyMixin(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy+: (if std.isArray(UpdateReplacePolicy) then UpdateReplacePolicy else [UpdateReplacePolicy]),
    },
  },
  withMetadata(Metadata): {
    Properties+::: {
      Metadata: (if std.isArray(Metadata) then Metadata else [Metadata]),
    },
  },
  withMetadataMixin(Metadata): {
    Properties+::: {
      Metadata+: (if std.isArray(Metadata) then Metadata else [Metadata]),
    },
  },
}
