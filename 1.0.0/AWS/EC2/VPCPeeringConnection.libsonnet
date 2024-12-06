{
  new(
    VpcId,
    PeerVpcId,
  ): {
    local base = self,
    Properties: {
      VpcId:
        if !std.isString(VpcId) then (error 'VpcId must be a string')
        else if std.isEmpty(VpcId) then (error 'VpcId must be not empty')
        else VpcId,
      PeerVpcId:
        if !std.isString(PeerVpcId) then (error 'PeerVpcId must be a string')
        else if std.isEmpty(PeerVpcId) then (error 'PeerVpcId must be not empty')
        else PeerVpcId,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::EC2::VPCPeeringConnection',
  },
  setPeerRoleArn(PeerRoleArn): {
    Properties+::: {
      PeerRoleArn:
        if !std.isString(PeerRoleArn) then (error 'PeerRoleArn must be a string')
        else if std.isEmpty(PeerRoleArn) then (error 'PeerRoleArn must be not empty')
        else PeerRoleArn,
    },
  },
  setId(Id): {
    Properties+::: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else Id,
    },
  },
  setPeerRegion(PeerRegion): {
    Properties+::: {
      PeerRegion:
        if !std.isString(PeerRegion) then (error 'PeerRegion must be a string')
        else if std.isEmpty(PeerRegion) then (error 'PeerRegion must be not empty')
        else PeerRegion,
    },
  },
  setPeerOwnerId(PeerOwnerId): {
    Properties+::: {
      PeerOwnerId:
        if !std.isString(PeerOwnerId) then (error 'PeerOwnerId must be a string')
        else if std.isEmpty(PeerOwnerId) then (error 'PeerOwnerId must be not empty')
        else PeerOwnerId,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else Tags,
    },
  },
  pushTags(Tags): {
    Properties+::: {
      Tags+: Tags,
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
