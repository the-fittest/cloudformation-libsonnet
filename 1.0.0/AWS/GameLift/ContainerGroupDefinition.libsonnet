{
  new(
    Name,
    OperatingSystem,
    TotalMemoryLimitMebibytes,
    TotalVcpuLimit,
  ): {
    local base = self,
    Properties: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else if std.length(Name) < 1 then error ('Name should have at least 1 characters')
        else if std.length(Name) > 128 then error ('Name should have not more than 128 characters')
        else Name,
      OperatingSystem:
        if !std.isString(OperatingSystem) then (error 'OperatingSystem must be a string')
        else if std.isEmpty(OperatingSystem) then (error 'OperatingSystem must be not empty')
        else if OperatingSystem != 'AMAZON_LINUX_2023' then (error "OperatingSystem should be 'AMAZON_LINUX_2023'")
        else OperatingSystem,
      TotalMemoryLimitMebibytes:
        if !std.isNumber(TotalMemoryLimitMebibytes) then (error 'TotalMemoryLimitMebibytes must be an number')
        else if TotalMemoryLimitMebibytes < 4 then error ('TotalMemoryLimitMebibytes should be at least 4')
        else if TotalMemoryLimitMebibytes > 1024000 then error ('TotalMemoryLimitMebibytes should be not more than 1024000')
        else TotalMemoryLimitMebibytes,
      TotalVcpuLimit:
        if !std.isNumber(TotalVcpuLimit) then (error 'TotalVcpuLimit must be an number')
        else if TotalVcpuLimit < 0.125 then error ('TotalVcpuLimit should be at least 0.125')
        else if TotalVcpuLimit > 10 then error ('TotalVcpuLimit should be not more than 10')
        else TotalVcpuLimit,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::GameLift::ContainerGroupDefinition',
  },
  setContainerGroupDefinitionArn(ContainerGroupDefinitionArn): {
    Properties+::: {
      ContainerGroupDefinitionArn:
        if !std.isString(ContainerGroupDefinitionArn) then (error 'ContainerGroupDefinitionArn must be a string')
        else if std.isEmpty(ContainerGroupDefinitionArn) then (error 'ContainerGroupDefinitionArn must be not empty')
        else if std.length(ContainerGroupDefinitionArn) < 1 then error ('ContainerGroupDefinitionArn should have at least 1 characters')
        else if std.length(ContainerGroupDefinitionArn) > 512 then error ('ContainerGroupDefinitionArn should have not more than 512 characters')
        else ContainerGroupDefinitionArn,
    },
  },
  setCreationTime(CreationTime): {
    Properties+::: {
      CreationTime:
        if !std.isString(CreationTime) then (error 'CreationTime must be a string')
        else if std.isEmpty(CreationTime) then (error 'CreationTime must be not empty')
        else CreationTime,
    },
  },
  setContainerGroupType(ContainerGroupType): {
    Properties+::: {
      ContainerGroupType:
        if !std.isString(ContainerGroupType) then (error 'ContainerGroupType must be a string')
        else if std.isEmpty(ContainerGroupType) then (error 'ContainerGroupType must be not empty')
        else if ContainerGroupType != 'GAME_SERVER' && ContainerGroupType != 'PER_INSTANCE' then (error "ContainerGroupType should be 'GAME_SERVER' or 'PER_INSTANCE'")
        else ContainerGroupType,
    },
  },
  setGameServerContainerDefinition(GameServerContainerDefinition): {
    Properties+::: {
      GameServerContainerDefinition:
        if !std.isObject(GameServerContainerDefinition) then (error 'GameServerContainerDefinition must be an object')
        else if !std.objectHas(GameServerContainerDefinition, 'ContainerName') then (error ' have attribute ContainerName')
        else if !std.objectHas(GameServerContainerDefinition, 'ImageUri') then (error ' have attribute ImageUri')
        else if !std.objectHas(GameServerContainerDefinition, 'ServerSdkVersion') then (error ' have attribute ServerSdkVersion')
        else GameServerContainerDefinition,
    },
  },
  setSupportContainerDefinitions(SupportContainerDefinitions): {
    Properties+::: {
      SupportContainerDefinitions:
        if !std.isArray(SupportContainerDefinitions) then (error 'SupportContainerDefinitions must be an array')
        else if std.length(SupportContainerDefinitions) < 1 then error ('SupportContainerDefinitions cannot have less than 1 items')
        else if std.length(SupportContainerDefinitions) > 10 then error ('SupportContainerDefinitions cannot have more than 10 items')
        else SupportContainerDefinitions,
    },
  },
  setSupportContainerDefinitionsMixin(SupportContainerDefinitions): {
    Properties+::: {
      SupportContainerDefinitions+: SupportContainerDefinitions,
    },
  },
  setVersionNumber(VersionNumber): {
    Properties+::: {
      VersionNumber:
        if !std.isNumber(VersionNumber) then (error 'VersionNumber must be an number')
        else VersionNumber,
    },
  },
  setSourceVersionNumber(SourceVersionNumber): {
    Properties+::: {
      SourceVersionNumber:
        if !std.isNumber(SourceVersionNumber) then (error 'SourceVersionNumber must be an number')
        else SourceVersionNumber,
    },
  },
  setVersionDescription(VersionDescription): {
    Properties+::: {
      VersionDescription:
        if !std.isString(VersionDescription) then (error 'VersionDescription must be a string')
        else if std.isEmpty(VersionDescription) then (error 'VersionDescription must be not empty')
        else if std.length(VersionDescription) < 1 then error ('VersionDescription should have at least 1 characters')
        else if std.length(VersionDescription) > 1024 then error ('VersionDescription should have not more than 1024 characters')
        else VersionDescription,
    },
  },
  setStatus(Status): {
    Properties+::: {
      Status:
        if !std.isString(Status) then (error 'Status must be a string')
        else if std.isEmpty(Status) then (error 'Status must be not empty')
        else if Status != 'READY' && Status != 'COPYING' && Status != 'FAILED' then (error "Status should be 'READY' or 'COPYING' or 'FAILED'")
        else Status,
    },
  },
  setStatusReason(StatusReason): {
    Properties+::: {
      StatusReason:
        if !std.isString(StatusReason) then (error 'StatusReason must be a string')
        else if std.isEmpty(StatusReason) then (error 'StatusReason must be not empty')
        else StatusReason,
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
