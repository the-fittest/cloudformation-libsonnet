{
  new(
    Name,
    IpPools,
  ): {
    local base = self,
    Properties: {
      assert std.isString(Name) : 'Name must be a string',
      Name: Name,
      IpPools: (if std.isArray(IpPools) then IpPools else [IpPools]),
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::MediaLive::Network',
  },
  withArn(Arn): {
    assert std.isString(Arn) : 'Arn must be a string',
    Properties+::: {
      Arn: Arn,
    },
  },
  withAssociatedClusterIds(AssociatedClusterIds): {
    Properties+::: {
      AssociatedClusterIds: (if std.isArray(AssociatedClusterIds) then AssociatedClusterIds else [AssociatedClusterIds]),
    },
  },
  withAssociatedClusterIdsMixin(AssociatedClusterIds): {
    Properties+::: {
      AssociatedClusterIds+: (if std.isArray(AssociatedClusterIds) then AssociatedClusterIds else [AssociatedClusterIds]),
    },
  },
  withId(Id): {
    assert std.isString(Id) : 'Id must be a string',
    Properties+::: {
      Id: Id,
    },
  },
  withRoutes(Routes): {
    Properties+::: {
      Routes: (if std.isArray(Routes) then Routes else [Routes]),
    },
  },
  withRoutesMixin(Routes): {
    Properties+::: {
      Routes+: (if std.isArray(Routes) then Routes else [Routes]),
    },
  },
  withState(State): {
    assert std.isString(State) : 'State must be a string',
    assert State == 'CREATING' || State == 'CREATE_FAILED' || State == 'ACTIVE' || State == 'DELETING' || State == 'IDLE' || State == 'IN_USE' || State == 'UPDATING' || State == 'DELETED' || State == 'DELETE_FAILED' : "State should be 'CREATING' or 'CREATE_FAILED' or 'ACTIVE' or 'DELETING' or 'IDLE' or 'IN_USE' or 'UPDATING' or 'DELETED' or 'DELETE_FAILED'",
    Properties+::: {
      State: State,
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
