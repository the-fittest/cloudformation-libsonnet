{
  new(
    NetworkAclId,
    RuleAction,
    RuleNumber,
    Protocol,
  ): {
    local base = self,
    Properties: {
      NetworkAclId:
        if !std.isString(NetworkAclId) then (error 'NetworkAclId must be a string')
        else if std.isEmpty(NetworkAclId) then (error 'NetworkAclId must be not empty')
        else NetworkAclId,
      RuleAction:
        if !std.isString(RuleAction) then (error 'RuleAction must be a string')
        else if std.isEmpty(RuleAction) then (error 'RuleAction must be not empty')
        else RuleAction,
      RuleNumber:
        if !std.isNumber(RuleNumber) then (error 'RuleNumber must be an number')
        else RuleNumber,
      Protocol:
        if !std.isNumber(Protocol) then (error 'Protocol must be an number')
        else Protocol,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::EC2::NetworkAclEntry',
  },
  setId(Id): {
    Properties+::: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else Id,
    },
  },
  setPortRange(PortRange): {
    Properties+::: {
      PortRange:
        if !std.isObject(PortRange) then (error 'PortRange must be an object')
        else PortRange,
    },
  },
  setCidrBlock(CidrBlock): {
    Properties+::: {
      CidrBlock:
        if !std.isString(CidrBlock) then (error 'CidrBlock must be a string')
        else if std.isEmpty(CidrBlock) then (error 'CidrBlock must be not empty')
        else CidrBlock,
    },
  },
  setEgress(Egress): {
    Properties+::: {
      Egress:
        if !std.isBoolean(Egress) then (error 'Egress must be a boolean') else Egress,
    },
  },
  setIpv6CidrBlock(Ipv6CidrBlock): {
    Properties+::: {
      Ipv6CidrBlock:
        if !std.isString(Ipv6CidrBlock) then (error 'Ipv6CidrBlock must be a string')
        else if std.isEmpty(Ipv6CidrBlock) then (error 'Ipv6CidrBlock must be not empty')
        else Ipv6CidrBlock,
    },
  },
  setIcmp(Icmp): {
    Properties+::: {
      Icmp:
        if !std.isObject(Icmp) then (error 'Icmp must be an object')
        else Icmp,
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
