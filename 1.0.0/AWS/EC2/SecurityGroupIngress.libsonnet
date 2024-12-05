{
  new(
    IpProtocol,
  ): {
    local base = self,
    Properties: {
      IpProtocol:
        if !std.isString(IpProtocol) then (error 'IpProtocol must be a string')
        else if std.isEmpty(IpProtocol) then (error 'IpProtocol must be not empty')
        else IpProtocol,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::EC2::SecurityGroupIngress',
  },
  setId(Id): {
    Properties+::: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else Id,
    },
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
  setGroupId(GroupId): {
    Properties+::: {
      GroupId:
        if !std.isString(GroupId) then (error 'GroupId must be a string')
        else if std.isEmpty(GroupId) then (error 'GroupId must be not empty')
        else GroupId,
    },
  },
  setGroupName(GroupName): {
    Properties+::: {
      GroupName:
        if !std.isString(GroupName) then (error 'GroupName must be a string')
        else if std.isEmpty(GroupName) then (error 'GroupName must be not empty')
        else GroupName,
    },
  },
  setSourcePrefixListId(SourcePrefixListId): {
    Properties+::: {
      SourcePrefixListId:
        if !std.isString(SourcePrefixListId) then (error 'SourcePrefixListId must be a string')
        else if std.isEmpty(SourcePrefixListId) then (error 'SourcePrefixListId must be not empty')
        else SourcePrefixListId,
    },
  },
  setSourceSecurityGroupId(SourceSecurityGroupId): {
    Properties+::: {
      SourceSecurityGroupId:
        if !std.isString(SourceSecurityGroupId) then (error 'SourceSecurityGroupId must be a string')
        else if std.isEmpty(SourceSecurityGroupId) then (error 'SourceSecurityGroupId must be not empty')
        else SourceSecurityGroupId,
    },
  },
  setSourceSecurityGroupName(SourceSecurityGroupName): {
    Properties+::: {
      SourceSecurityGroupName:
        if !std.isString(SourceSecurityGroupName) then (error 'SourceSecurityGroupName must be a string')
        else if std.isEmpty(SourceSecurityGroupName) then (error 'SourceSecurityGroupName must be not empty')
        else SourceSecurityGroupName,
    },
  },
  setSourceSecurityGroupOwnerId(SourceSecurityGroupOwnerId): {
    Properties+::: {
      SourceSecurityGroupOwnerId:
        if !std.isString(SourceSecurityGroupOwnerId) then (error 'SourceSecurityGroupOwnerId must be a string')
        else if std.isEmpty(SourceSecurityGroupOwnerId) then (error 'SourceSecurityGroupOwnerId must be not empty')
        else SourceSecurityGroupOwnerId,
    },
  },
  setToPort(ToPort): {
    Properties+::: {
      ToPort:
        if !std.isNumber(ToPort) then (error 'ToPort must be an number')
        else ToPort,
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
