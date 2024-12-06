{
  new(
    DBSecurityGroupName,
  ): {
    local base = self,
    Properties: {
      DBSecurityGroupName:
        if !std.isString(DBSecurityGroupName) then (error 'DBSecurityGroupName must be a string')
        else if std.isEmpty(DBSecurityGroupName) then (error 'DBSecurityGroupName must be not empty')
        else DBSecurityGroupName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::RDS::DBSecurityGroupIngress',
  },
  setId(Id): {
    Properties+::: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else Id,
    },
  },
  setCIDRIP(CIDRIP): {
    Properties+::: {
      CIDRIP:
        if !std.isString(CIDRIP) then (error 'CIDRIP must be a string')
        else if std.isEmpty(CIDRIP) then (error 'CIDRIP must be not empty')
        else CIDRIP,
    },
  },
  setEC2SecurityGroupId(EC2SecurityGroupId): {
    Properties+::: {
      EC2SecurityGroupId:
        if !std.isString(EC2SecurityGroupId) then (error 'EC2SecurityGroupId must be a string')
        else if std.isEmpty(EC2SecurityGroupId) then (error 'EC2SecurityGroupId must be not empty')
        else EC2SecurityGroupId,
    },
  },
  setEC2SecurityGroupName(EC2SecurityGroupName): {
    Properties+::: {
      EC2SecurityGroupName:
        if !std.isString(EC2SecurityGroupName) then (error 'EC2SecurityGroupName must be a string')
        else if std.isEmpty(EC2SecurityGroupName) then (error 'EC2SecurityGroupName must be not empty')
        else EC2SecurityGroupName,
    },
  },
  setEC2SecurityGroupOwnerId(EC2SecurityGroupOwnerId): {
    Properties+::: {
      EC2SecurityGroupOwnerId:
        if !std.isString(EC2SecurityGroupOwnerId) then (error 'EC2SecurityGroupOwnerId must be a string')
        else if std.isEmpty(EC2SecurityGroupOwnerId) then (error 'EC2SecurityGroupOwnerId must be not empty')
        else EC2SecurityGroupOwnerId,
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
