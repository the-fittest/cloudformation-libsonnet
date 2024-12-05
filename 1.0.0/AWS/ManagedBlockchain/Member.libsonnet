{
  new(
    MemberConfiguration,
  ): {
    local base = self,
    Properties: {
      MemberConfiguration:
        if !std.isObject(MemberConfiguration) then (error 'MemberConfiguration must be an object')
        else if !std.objectHas(MemberConfiguration, 'Name') then (error ' have attribute Name')
        else MemberConfiguration,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::ManagedBlockchain::Member',
  },
  setMemberId(MemberId): {
    Properties+::: {
      MemberId:
        if !std.isString(MemberId) then (error 'MemberId must be a string')
        else if std.isEmpty(MemberId) then (error 'MemberId must be not empty')
        else MemberId,
    },
  },
  setNetworkConfiguration(NetworkConfiguration): {
    Properties+::: {
      NetworkConfiguration:
        if !std.isObject(NetworkConfiguration) then (error 'NetworkConfiguration must be an object')
        else if !std.objectHas(NetworkConfiguration, 'FrameworkVersion') then (error ' have attribute FrameworkVersion')
        else if !std.objectHas(NetworkConfiguration, 'VotingPolicy') then (error ' have attribute VotingPolicy')
        else if !std.objectHas(NetworkConfiguration, 'Framework') then (error ' have attribute Framework')
        else if !std.objectHas(NetworkConfiguration, 'Name') then (error ' have attribute Name')
        else NetworkConfiguration,
    },
  },
  setNetworkId(NetworkId): {
    Properties+::: {
      NetworkId:
        if !std.isString(NetworkId) then (error 'NetworkId must be a string')
        else if std.isEmpty(NetworkId) then (error 'NetworkId must be not empty')
        else NetworkId,
    },
  },
  setInvitationId(InvitationId): {
    Properties+::: {
      InvitationId:
        if !std.isString(InvitationId) then (error 'InvitationId must be a string')
        else if std.isEmpty(InvitationId) then (error 'InvitationId must be not empty')
        else InvitationId,
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
