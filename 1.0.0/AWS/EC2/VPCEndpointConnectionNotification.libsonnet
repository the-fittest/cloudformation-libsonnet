{
  // AWS EC2 VPCEndpointConnectionNotification
  VPCEndpointConnectionNotification: {
    new(
      ConnectionEvents,
      ConnectionNotificationArn,
    ): {
      local base = self,
      Properties: {
        ConnectionEvents: (if std.isArray(ConnectionEvents) then ConnectionEvents else [ConnectionEvents]),
        assert std.isString(ConnectionNotificationArn) : 'ConnectionNotificationArn must be a string',
        ConnectionNotificationArn: ConnectionNotificationArn,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::EC2::VPCEndpointConnectionNotification',
    },
    withVPCEndpointId(VPCEndpointId): {
      assert std.isString(VPCEndpointId) : 'VPCEndpointId must be a string',
      Properties+::: {
        VPCEndpointId: VPCEndpointId,
      },
    },
    withVPCEndpointConnectionNotificationId(VPCEndpointConnectionNotificationId): {
      assert std.isString(VPCEndpointConnectionNotificationId) : 'VPCEndpointConnectionNotificationId must be a string',
      Properties+::: {
        VPCEndpointConnectionNotificationId: VPCEndpointConnectionNotificationId,
      },
    },
    withServiceId(ServiceId): {
      assert std.isString(ServiceId) : 'ServiceId must be a string',
      Properties+::: {
        ServiceId: ServiceId,
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
  },
}
