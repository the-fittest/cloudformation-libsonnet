{
  new(
    VpcId,
  ): {
    local base = self,
    Properties: {
      VpcId:
        if !std.isString(VpcId) then (error 'VpcId must be a string')
        else if std.isEmpty(VpcId) then (error 'VpcId must be not empty')
        else VpcId,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::EC2::VPCGatewayAttachment',
  },
  setAttachmentType(AttachmentType): {
    Properties+::: {
      AttachmentType:
        if !std.isString(AttachmentType) then (error 'AttachmentType must be a string')
        else if std.isEmpty(AttachmentType) then (error 'AttachmentType must be not empty')
        else AttachmentType,
    },
  },
  setInternetGatewayId(InternetGatewayId): {
    Properties+::: {
      InternetGatewayId:
        if !std.isString(InternetGatewayId) then (error 'InternetGatewayId must be a string')
        else if std.isEmpty(InternetGatewayId) then (error 'InternetGatewayId must be not empty')
        else InternetGatewayId,
    },
  },
  setVpnGatewayId(VpnGatewayId): {
    Properties+::: {
      VpnGatewayId:
        if !std.isString(VpnGatewayId) then (error 'VpnGatewayId must be a string')
        else if std.isEmpty(VpnGatewayId) then (error 'VpnGatewayId must be not empty')
        else VpnGatewayId,
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
