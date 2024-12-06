{
  new(
    RoleArn,
  ): {
    local base = self,
    Properties: {
      RoleArn:
        if !std.isString(RoleArn) then (error 'RoleArn must be a string')
        else if std.isEmpty(RoleArn) then (error 'RoleArn must be not empty')
        else RoleArn,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Glue::DevEndpoint',
  },
  setExtraJarsS3Path(ExtraJarsS3Path): {
    Properties+::: {
      ExtraJarsS3Path:
        if !std.isString(ExtraJarsS3Path) then (error 'ExtraJarsS3Path must be a string')
        else if std.isEmpty(ExtraJarsS3Path) then (error 'ExtraJarsS3Path must be not empty')
        else ExtraJarsS3Path,
    },
  },
  setPublicKey(PublicKey): {
    Properties+::: {
      PublicKey:
        if !std.isString(PublicKey) then (error 'PublicKey must be a string')
        else if std.isEmpty(PublicKey) then (error 'PublicKey must be not empty')
        else PublicKey,
    },
  },
  setNumberOfNodes(NumberOfNodes): {
    Properties+::: {
      NumberOfNodes:
        if !std.isNumber(NumberOfNodes) then (error 'NumberOfNodes must be an number')
        else NumberOfNodes,
    },
  },
  setArguments(Arguments): {
    Properties+::: {
      Arguments:
        if !std.isObject(Arguments) then (error 'Arguments must be an object')
        else Arguments,
    },
  },
  setSubnetId(SubnetId): {
    Properties+::: {
      SubnetId:
        if !std.isString(SubnetId) then (error 'SubnetId must be a string')
        else if std.isEmpty(SubnetId) then (error 'SubnetId must be not empty')
        else SubnetId,
    },
  },
  setPublicKeys(PublicKeys): {
    Properties+::: {
      PublicKeys:
        if !std.isArray(PublicKeys) then (error 'PublicKeys must be an array')
        else PublicKeys,
    },
  },
  pushPublicKeys(PublicKeys): {
    Properties+::: {
      PublicKeys+: PublicKeys,
    },
  },
  setSecurityGroupIds(SecurityGroupIds): {
    Properties+::: {
      SecurityGroupIds:
        if !std.isArray(SecurityGroupIds) then (error 'SecurityGroupIds must be an array')
        else SecurityGroupIds,
    },
  },
  pushSecurityGroupIds(SecurityGroupIds): {
    Properties+::: {
      SecurityGroupIds+: SecurityGroupIds,
    },
  },
  setWorkerType(WorkerType): {
    Properties+::: {
      WorkerType:
        if !std.isString(WorkerType) then (error 'WorkerType must be a string')
        else if std.isEmpty(WorkerType) then (error 'WorkerType must be not empty')
        else WorkerType,
    },
  },
  setEndpointName(EndpointName): {
    Properties+::: {
      EndpointName:
        if !std.isString(EndpointName) then (error 'EndpointName must be a string')
        else if std.isEmpty(EndpointName) then (error 'EndpointName must be not empty')
        else EndpointName,
    },
  },
  setGlueVersion(GlueVersion): {
    Properties+::: {
      GlueVersion:
        if !std.isString(GlueVersion) then (error 'GlueVersion must be a string')
        else if std.isEmpty(GlueVersion) then (error 'GlueVersion must be not empty')
        else GlueVersion,
    },
  },
  setExtraPythonLibsS3Path(ExtraPythonLibsS3Path): {
    Properties+::: {
      ExtraPythonLibsS3Path:
        if !std.isString(ExtraPythonLibsS3Path) then (error 'ExtraPythonLibsS3Path must be a string')
        else if std.isEmpty(ExtraPythonLibsS3Path) then (error 'ExtraPythonLibsS3Path must be not empty')
        else ExtraPythonLibsS3Path,
    },
  },
  setSecurityConfiguration(SecurityConfiguration): {
    Properties+::: {
      SecurityConfiguration:
        if !std.isString(SecurityConfiguration) then (error 'SecurityConfiguration must be a string')
        else if std.isEmpty(SecurityConfiguration) then (error 'SecurityConfiguration must be not empty')
        else SecurityConfiguration,
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
  setNumberOfWorkers(NumberOfWorkers): {
    Properties+::: {
      NumberOfWorkers:
        if !std.isNumber(NumberOfWorkers) then (error 'NumberOfWorkers must be an number')
        else NumberOfWorkers,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isObject(Tags) then (error 'Tags must be an object')
        else Tags,
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
