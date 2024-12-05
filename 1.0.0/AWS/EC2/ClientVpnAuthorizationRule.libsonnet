{
  new(
    ClientVpnEndpointId,
    TargetNetworkCidr,
  ): {
    local base = self,
    Properties: {
      ClientVpnEndpointId:
        if !std.isString(ClientVpnEndpointId) then (error 'ClientVpnEndpointId must be a string')
        else if std.isEmpty(ClientVpnEndpointId) then (error 'ClientVpnEndpointId must be not empty')
        else ClientVpnEndpointId,
      TargetNetworkCidr:
        if !std.isString(TargetNetworkCidr) then (error 'TargetNetworkCidr must be a string')
        else if std.isEmpty(TargetNetworkCidr) then (error 'TargetNetworkCidr must be not empty')
        else TargetNetworkCidr,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::EC2::ClientVpnAuthorizationRule',
  },
  setId(Id): {
    Properties+::: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else Id,
    },
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else Description,
    },
  },
  setAccessGroupId(AccessGroupId): {
    Properties+::: {
      AccessGroupId:
        if !std.isString(AccessGroupId) then (error 'AccessGroupId must be a string')
        else if std.isEmpty(AccessGroupId) then (error 'AccessGroupId must be not empty')
        else AccessGroupId,
    },
  },
  setAuthorizeAllGroups(AuthorizeAllGroups): {
    Properties+::: {
      AuthorizeAllGroups:
        if !std.isBoolean(AuthorizeAllGroups) then (error 'AuthorizeAllGroups must be a boolean') else AuthorizeAllGroups,
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
