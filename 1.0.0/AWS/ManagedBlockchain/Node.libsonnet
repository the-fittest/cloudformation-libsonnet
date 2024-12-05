{
  new(
    MemberId,
    NetworkId,
    NodeConfiguration,
  ): {
    local base = self,
    Properties: {
      MemberId:
        if !std.isString(MemberId) then (error 'MemberId must be a string')
        else if std.isEmpty(MemberId) then (error 'MemberId must be not empty')
        else MemberId,
      NetworkId:
        if !std.isString(NetworkId) then (error 'NetworkId must be a string')
        else if std.isEmpty(NetworkId) then (error 'NetworkId must be not empty')
        else NetworkId,
      NodeConfiguration:
        if !std.isObject(NodeConfiguration) then (error 'NodeConfiguration must be an object')
        else if !std.objectHas(NodeConfiguration, 'AvailabilityZone') then (error ' have attribute AvailabilityZone')
        else if !std.objectHas(NodeConfiguration, 'InstanceType') then (error ' have attribute InstanceType')
        else NodeConfiguration,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::ManagedBlockchain::Node',
  },
  setNodeId(NodeId): {
    Properties+::: {
      NodeId:
        if !std.isString(NodeId) then (error 'NodeId must be a string')
        else if std.isEmpty(NodeId) then (error 'NodeId must be not empty')
        else NodeId,
    },
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else Arn,
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
