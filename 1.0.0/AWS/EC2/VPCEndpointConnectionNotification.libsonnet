{
  new(
    ConnectionEvents,
    ConnectionNotificationArn,
  ): {
    local base = self,
    Properties: {
      ConnectionEvents:
        if !std.isArray(ConnectionEvents) then (error 'ConnectionEvents must be an array')
        else ConnectionEvents,
      ConnectionNotificationArn:
        if !std.isString(ConnectionNotificationArn) then (error 'ConnectionNotificationArn must be a string')
        else if std.isEmpty(ConnectionNotificationArn) then (error 'ConnectionNotificationArn must be not empty')
        else ConnectionNotificationArn,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::EC2::VPCEndpointConnectionNotification',
  },
  setVPCEndpointId(VPCEndpointId): {
    Properties+::: {
      VPCEndpointId:
        if !std.isString(VPCEndpointId) then (error 'VPCEndpointId must be a string')
        else if std.isEmpty(VPCEndpointId) then (error 'VPCEndpointId must be not empty')
        else VPCEndpointId,
    },
  },
  setVPCEndpointConnectionNotificationId(VPCEndpointConnectionNotificationId): {
    Properties+::: {
      VPCEndpointConnectionNotificationId:
        if !std.isString(VPCEndpointConnectionNotificationId) then (error 'VPCEndpointConnectionNotificationId must be a string')
        else if std.isEmpty(VPCEndpointConnectionNotificationId) then (error 'VPCEndpointConnectionNotificationId must be not empty')
        else VPCEndpointConnectionNotificationId,
    },
  },
  setServiceId(ServiceId): {
    Properties+::: {
      ServiceId:
        if !std.isString(ServiceId) then (error 'ServiceId must be a string')
        else if std.isEmpty(ServiceId) then (error 'ServiceId must be not empty')
        else ServiceId,
    },
  },
  setDependsOn(DependsOn): {
    Properties+::: {
      DependsOn: DependsOn,
    },
  },
  pushDependsOn(DependsOn): {
    Properties+::: {
      DependsOn+: DependsOn,
    },
  },
  setCreationPolicy(CreationPolicy): {
    Properties+::: {
      CreationPolicy: CreationPolicy,
    },
  },
  pushCreationPolicy(CreationPolicy): {
    Properties+::: {
      CreationPolicy+: CreationPolicy,
    },
  },
  setDeletionPolicy(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy: DeletionPolicy,
    },
  },
  pushDeletionPolicy(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy+: DeletionPolicy,
    },
  },
  setUpdatePolicy(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy: UpdatePolicy,
    },
  },
  pushUpdatePolicy(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy+: UpdatePolicy,
    },
  },
  setUpdateReplacePolicy(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy: UpdateReplacePolicy,
    },
  },
  pushUpdateReplacePolicy(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy+: UpdateReplacePolicy,
    },
  },
  setMetadata(Metadata): {
    Properties+::: {
      Metadata: Metadata,
    },
  },
  pushMetadata(Metadata): {
    Properties+::: {
      Metadata+: Metadata,
    },
  },
}
