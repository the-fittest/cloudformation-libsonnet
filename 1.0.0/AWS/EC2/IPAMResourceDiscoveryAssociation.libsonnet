{
  new(
    IpamId,
    IpamResourceDiscoveryId,
  ): {
    local base = self,
    Properties: {
      IpamId:
        if !std.isString(IpamId) then (error 'IpamId must be a string')
        else if std.isEmpty(IpamId) then (error 'IpamId must be not empty')
        else IpamId,
      IpamResourceDiscoveryId:
        if !std.isString(IpamResourceDiscoveryId) then (error 'IpamResourceDiscoveryId must be a string')
        else if std.isEmpty(IpamResourceDiscoveryId) then (error 'IpamResourceDiscoveryId must be not empty')
        else IpamResourceDiscoveryId,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::EC2::IPAMResourceDiscoveryAssociation',
  },
  setIpamArn(IpamArn): {
    Properties+::: {
      IpamArn:
        if !std.isString(IpamArn) then (error 'IpamArn must be a string')
        else if std.isEmpty(IpamArn) then (error 'IpamArn must be not empty')
        else IpamArn,
    },
  },
  setIpamRegion(IpamRegion): {
    Properties+::: {
      IpamRegion:
        if !std.isString(IpamRegion) then (error 'IpamRegion must be a string')
        else if std.isEmpty(IpamRegion) then (error 'IpamRegion must be not empty')
        else IpamRegion,
    },
  },
  setIpamResourceDiscoveryAssociationId(IpamResourceDiscoveryAssociationId): {
    Properties+::: {
      IpamResourceDiscoveryAssociationId:
        if !std.isString(IpamResourceDiscoveryAssociationId) then (error 'IpamResourceDiscoveryAssociationId must be a string')
        else if std.isEmpty(IpamResourceDiscoveryAssociationId) then (error 'IpamResourceDiscoveryAssociationId must be not empty')
        else IpamResourceDiscoveryAssociationId,
    },
  },
  setIpamResourceDiscoveryAssociationArn(IpamResourceDiscoveryAssociationArn): {
    Properties+::: {
      IpamResourceDiscoveryAssociationArn:
        if !std.isString(IpamResourceDiscoveryAssociationArn) then (error 'IpamResourceDiscoveryAssociationArn must be a string')
        else if std.isEmpty(IpamResourceDiscoveryAssociationArn) then (error 'IpamResourceDiscoveryAssociationArn must be not empty')
        else IpamResourceDiscoveryAssociationArn,
    },
  },
  setIsDefault(IsDefault): {
    Properties+::: {
      IsDefault:
        if !std.isBoolean(IsDefault) then (error 'IsDefault must be a boolean') else IsDefault,
    },
  },
  setOwnerId(OwnerId): {
    Properties+::: {
      OwnerId:
        if !std.isString(OwnerId) then (error 'OwnerId must be a string')
        else if std.isEmpty(OwnerId) then (error 'OwnerId must be not empty')
        else OwnerId,
    },
  },
  setState(State): {
    Properties+::: {
      State:
        if !std.isString(State) then (error 'State must be a string')
        else if std.isEmpty(State) then (error 'State must be not empty')
        else State,
    },
  },
  setResourceDiscoveryStatus(ResourceDiscoveryStatus): {
    Properties+::: {
      ResourceDiscoveryStatus:
        if !std.isString(ResourceDiscoveryStatus) then (error 'ResourceDiscoveryStatus must be a string')
        else if std.isEmpty(ResourceDiscoveryStatus) then (error 'ResourceDiscoveryStatus must be not empty')
        else ResourceDiscoveryStatus,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else Tags,
    },
  },
  setTagsMixin(Tags): {
    Properties+::: {
      Tags+: Tags,
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
