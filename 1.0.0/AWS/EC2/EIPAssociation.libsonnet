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
    Type: 'AWS::EC2::EIPAssociation',
  },
  setId(Id): {
    Properties+::: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else Id,
    },
  },
  setAllocationId(AllocationId): {
    Properties+::: {
      AllocationId:
        if !std.isString(AllocationId) then (error 'AllocationId must be a string')
        else if std.isEmpty(AllocationId) then (error 'AllocationId must be not empty')
        else AllocationId,
    },
  },
  setNetworkInterfaceId(NetworkInterfaceId): {
    Properties+::: {
      NetworkInterfaceId:
        if !std.isString(NetworkInterfaceId) then (error 'NetworkInterfaceId must be a string')
        else if std.isEmpty(NetworkInterfaceId) then (error 'NetworkInterfaceId must be not empty')
        else NetworkInterfaceId,
    },
  },
  setInstanceId(InstanceId): {
    Properties+::: {
      InstanceId:
        if !std.isString(InstanceId) then (error 'InstanceId must be a string')
        else if std.isEmpty(InstanceId) then (error 'InstanceId must be not empty')
        else InstanceId,
    },
  },
  setPrivateIpAddress(PrivateIpAddress): {
    Properties+::: {
      PrivateIpAddress:
        if !std.isString(PrivateIpAddress) then (error 'PrivateIpAddress must be a string')
        else if std.isEmpty(PrivateIpAddress) then (error 'PrivateIpAddress must be not empty')
        else PrivateIpAddress,
    },
  },
  setEIP(EIP): {
    Properties+::: {
      EIP:
        if !std.isString(EIP) then (error 'EIP must be a string')
        else if std.isEmpty(EIP) then (error 'EIP must be not empty')
        else EIP,
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
