{
  new(
    EC2SecurityGroupName,
    CacheSecurityGroupName,
  ): {
    local base = self,
    Properties: {
      EC2SecurityGroupName:
        if !std.isString(EC2SecurityGroupName) then (error 'EC2SecurityGroupName must be a string')
        else if std.isEmpty(EC2SecurityGroupName) then (error 'EC2SecurityGroupName must be not empty')
        else EC2SecurityGroupName,
      CacheSecurityGroupName:
        if !std.isString(CacheSecurityGroupName) then (error 'CacheSecurityGroupName must be a string')
        else if std.isEmpty(CacheSecurityGroupName) then (error 'CacheSecurityGroupName must be not empty')
        else CacheSecurityGroupName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::ElastiCache::SecurityGroupIngress',
  },
  setId(Id): {
    Properties+::: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else Id,
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
