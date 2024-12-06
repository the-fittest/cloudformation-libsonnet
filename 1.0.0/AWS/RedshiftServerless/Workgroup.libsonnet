{
  new(
    WorkgroupName,
  ): {
    local base = self,
    Properties: {
      WorkgroupName:
        if !std.isString(WorkgroupName) then (error 'WorkgroupName must be a string')
        else if std.isEmpty(WorkgroupName) then (error 'WorkgroupName must be not empty')
        else if std.length(WorkgroupName) < 3 then error ('WorkgroupName should have at least 3 characters')
        else if std.length(WorkgroupName) > 64 then error ('WorkgroupName should have not more than 64 characters')
        else WorkgroupName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::RedshiftServerless::Workgroup',
  },
  setNamespaceName(NamespaceName): {
    Properties+::: {
      NamespaceName:
        if !std.isString(NamespaceName) then (error 'NamespaceName must be a string')
        else if std.isEmpty(NamespaceName) then (error 'NamespaceName must be not empty')
        else if std.length(NamespaceName) < 3 then error ('NamespaceName should have at least 3 characters')
        else if std.length(NamespaceName) > 64 then error ('NamespaceName should have not more than 64 characters')
        else NamespaceName,
    },
  },
  setBaseCapacity(BaseCapacity): {
    Properties+::: {
      BaseCapacity:
        if !std.isNumber(BaseCapacity) then (error 'BaseCapacity must be an number')
        else BaseCapacity,
    },
  },
  setMaxCapacity(MaxCapacity): {
    Properties+::: {
      MaxCapacity:
        if !std.isNumber(MaxCapacity) then (error 'MaxCapacity must be an number')
        else MaxCapacity,
    },
  },
  setEnhancedVpcRouting(EnhancedVpcRouting): {
    Properties+::: {
      EnhancedVpcRouting:
        if !std.isBoolean(EnhancedVpcRouting) then (error 'EnhancedVpcRouting must be a boolean') else EnhancedVpcRouting,
    },
  },
  setConfigParameters(ConfigParameters): {
    Properties+::: {
      ConfigParameters:
        if !std.isArray(ConfigParameters) then (error 'ConfigParameters must be an array')
        else if std.length(ConfigParameters) < 1 then error ('ConfigParameters cannot have less than 1 items')
        else ConfigParameters,
    },
  },
  pushConfigParameters(ConfigParameters): {
    Properties+::: {
      ConfigParameters+: ConfigParameters,
    },
  },
  setSecurityGroupIds(SecurityGroupIds): {
    Properties+::: {
      SecurityGroupIds:
        if !std.isArray(SecurityGroupIds) then (error 'SecurityGroupIds must be an array')
        else if std.length(SecurityGroupIds) < 1 then error ('SecurityGroupIds cannot have less than 1 items')
        else if std.length(SecurityGroupIds) > 32 then error ('SecurityGroupIds cannot have more than 32 items')
        else SecurityGroupIds,
    },
  },
  pushSecurityGroupIds(SecurityGroupIds): {
    Properties+::: {
      SecurityGroupIds+: SecurityGroupIds,
    },
  },
  setSubnetIds(SubnetIds): {
    Properties+::: {
      SubnetIds:
        if !std.isArray(SubnetIds) then (error 'SubnetIds must be an array')
        else if std.length(SubnetIds) < 1 then error ('SubnetIds cannot have less than 1 items')
        else if std.length(SubnetIds) > 32 then error ('SubnetIds cannot have more than 32 items')
        else SubnetIds,
    },
  },
  pushSubnetIds(SubnetIds): {
    Properties+::: {
      SubnetIds+: SubnetIds,
    },
  },
  setPubliclyAccessible(PubliclyAccessible): {
    Properties+::: {
      PubliclyAccessible:
        if !std.isBoolean(PubliclyAccessible) then (error 'PubliclyAccessible must be a boolean') else PubliclyAccessible,
    },
  },
  setPort(Port): {
    Properties+::: {
      Port:
        if !std.isNumber(Port) then (error 'Port must be an number')
        else Port,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else if std.length(Tags) > 200 then error ('Tags cannot have more than 200 items')
        else Tags,
    },
  },
  pushTags(Tags): {
    Properties+::: {
      Tags+: Tags,
    },
  },
  setWorkgroup(Workgroup): {
    Properties+::: {
      Workgroup:
        if !std.isObject(Workgroup) then (error 'Workgroup must be an object')
        else Workgroup,
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
