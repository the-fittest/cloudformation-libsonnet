{
  new(
    IpProtocol,
    GroupId,
  ): {
    local base = self,
    Properties: {
      IpProtocol:
        if !std.isString(IpProtocol) then (error 'IpProtocol must be a string')
        else if std.isEmpty(IpProtocol) then (error 'IpProtocol must be not empty')
        else IpProtocol,
      GroupId:
        if !std.isString(GroupId) then (error 'GroupId must be a string')
        else if std.isEmpty(GroupId) then (error 'GroupId must be not empty')
        else GroupId,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::EC2::SecurityGroupEgress',
  },
  setCidrIp(CidrIp): {
    Properties+::: {
      CidrIp:
        if !std.isString(CidrIp) then (error 'CidrIp must be a string')
        else if std.isEmpty(CidrIp) then (error 'CidrIp must be not empty')
        else CidrIp,
    },
  },
  setCidrIpv6(CidrIpv6): {
    Properties+::: {
      CidrIpv6:
        if !std.isString(CidrIpv6) then (error 'CidrIpv6 must be a string')
        else if std.isEmpty(CidrIpv6) then (error 'CidrIpv6 must be not empty')
        else CidrIpv6,
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
  setFromPort(FromPort): {
    Properties+::: {
      FromPort:
        if !std.isNumber(FromPort) then (error 'FromPort must be an number')
        else FromPort,
    },
  },
  setToPort(ToPort): {
    Properties+::: {
      ToPort:
        if !std.isNumber(ToPort) then (error 'ToPort must be an number')
        else ToPort,
    },
  },
  setDestinationSecurityGroupId(DestinationSecurityGroupId): {
    Properties+::: {
      DestinationSecurityGroupId:
        if !std.isString(DestinationSecurityGroupId) then (error 'DestinationSecurityGroupId must be a string')
        else if std.isEmpty(DestinationSecurityGroupId) then (error 'DestinationSecurityGroupId must be not empty')
        else DestinationSecurityGroupId,
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
  setDestinationPrefixListId(DestinationPrefixListId): {
    Properties+::: {
      DestinationPrefixListId:
        if !std.isString(DestinationPrefixListId) then (error 'DestinationPrefixListId must be a string')
        else if std.isEmpty(DestinationPrefixListId) then (error 'DestinationPrefixListId must be not empty')
        else DestinationPrefixListId,
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
