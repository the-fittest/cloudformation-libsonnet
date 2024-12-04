{
  new(
    DeviceIndex,
    InstanceId,
    NetworkInterfaceId,
  ): {
    local base = self,
    Properties: {
      assert std.isString(DeviceIndex) : 'DeviceIndex must be a string',
      DeviceIndex: DeviceIndex,
      assert std.isString(InstanceId) : 'InstanceId must be a string',
      InstanceId: InstanceId,
      assert std.isString(NetworkInterfaceId) : 'NetworkInterfaceId must be a string',
      NetworkInterfaceId: NetworkInterfaceId,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::EC2::NetworkInterfaceAttachment',
  },
  withAttachmentId(AttachmentId): {
    assert std.isString(AttachmentId) : 'AttachmentId must be a string',
    Properties+::: {
      AttachmentId: AttachmentId,
    },
  },
  withDeleteOnTermination(DeleteOnTermination): {
    assert std.isBoolean(DeleteOnTermination) : 'DeleteOnTermination must be a boolean',
    Properties+::: {
      DeleteOnTermination: DeleteOnTermination,
    },
  },
  withEnaSrdSpecification(EnaSrdSpecification): {
    assert std.isObject(EnaSrdSpecification) : 'EnaSrdSpecification must be a object',
    Properties+::: {
      EnaSrdSpecification: EnaSrdSpecification,
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
