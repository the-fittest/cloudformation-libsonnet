{
  new(
    DeviceIndex,
    InstanceId,
    NetworkInterfaceId,
  ): {
    local base = self,
    Properties: {
      DeviceIndex:
        if !std.isString(DeviceIndex) then (error 'DeviceIndex must be a string')
        else if std.isEmpty(DeviceIndex) then (error 'DeviceIndex must be not empty')
        else DeviceIndex,
      InstanceId:
        if !std.isString(InstanceId) then (error 'InstanceId must be a string')
        else if std.isEmpty(InstanceId) then (error 'InstanceId must be not empty')
        else InstanceId,
      NetworkInterfaceId:
        if !std.isString(NetworkInterfaceId) then (error 'NetworkInterfaceId must be a string')
        else if std.isEmpty(NetworkInterfaceId) then (error 'NetworkInterfaceId must be not empty')
        else NetworkInterfaceId,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::EC2::NetworkInterfaceAttachment',
  },
  setAttachmentId(AttachmentId): {
    Properties+::: {
      AttachmentId:
        if !std.isString(AttachmentId) then (error 'AttachmentId must be a string')
        else if std.isEmpty(AttachmentId) then (error 'AttachmentId must be not empty')
        else AttachmentId,
    },
  },
  setDeleteOnTermination(DeleteOnTermination): {
    Properties+::: {
      DeleteOnTermination:
        if !std.isBoolean(DeleteOnTermination) then (error 'DeleteOnTermination must be a boolean') else DeleteOnTermination,
    },
  },
  setEnaSrdSpecification(EnaSrdSpecification): {
    Properties+::: {
      EnaSrdSpecification:
        if !std.isObject(EnaSrdSpecification) then (error 'EnaSrdSpecification must be an object')
        else EnaSrdSpecification,
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
