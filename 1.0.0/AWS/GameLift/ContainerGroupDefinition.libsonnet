{
  // AWS GameLift ContainerGroupDefinition
  ContainerGroupDefinition: {
    new(
      Name,
      OperatingSystem,
      TotalMemoryLimitMebibytes,
      TotalVcpuLimit,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isString(OperatingSystem) : 'OperatingSystem must be a string',
        OperatingSystem: OperatingSystem,
        assert std.isNumber(TotalMemoryLimitMebibytes) : 'TotalMemoryLimitMebibytes must be a number',
        TotalMemoryLimitMebibytes: TotalMemoryLimitMebibytes,
        assert std.isNumber(TotalVcpuLimit) : 'TotalVcpuLimit must be a number',
        TotalVcpuLimit: TotalVcpuLimit,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::GameLift::ContainerGroupDefinition',
    },
    withContainerGroupDefinitionArn(ContainerGroupDefinitionArn): {
      assert std.isString(ContainerGroupDefinitionArn) : 'ContainerGroupDefinitionArn must be a string',
      Properties+::: {
        ContainerGroupDefinitionArn: ContainerGroupDefinitionArn,
      },
    },
    withCreationTime(CreationTime): {
      assert std.isString(CreationTime) : 'CreationTime must be a string',
      Properties+::: {
        CreationTime: CreationTime,
      },
    },
    withContainerGroupType(ContainerGroupType): {
      assert std.isString(ContainerGroupType) : 'ContainerGroupType must be a string',
      Properties+::: {
        ContainerGroupType: ContainerGroupType,
      },
    },
    withGameServerContainerDefinition(GameServerContainerDefinition): {
      assert std.isObject(GameServerContainerDefinition) : 'GameServerContainerDefinition must be a object',
      Properties+::: {
        GameServerContainerDefinition: GameServerContainerDefinition,
      },
    },
    withSupportContainerDefinitions(SupportContainerDefinitions): {
      Properties+::: {
        SupportContainerDefinitions: (if std.isArray(SupportContainerDefinitions) then SupportContainerDefinitions else [SupportContainerDefinitions]),
      },
    },
    withSupportContainerDefinitionsMixin(SupportContainerDefinitions): {
      Properties+::: {
        SupportContainerDefinitions+: (if std.isArray(SupportContainerDefinitions) then SupportContainerDefinitions else [SupportContainerDefinitions]),
      },
    },
    withVersionNumber(VersionNumber): {
      assert std.isNumber(VersionNumber) : 'VersionNumber must be a number',
      Properties+::: {
        VersionNumber: VersionNumber,
      },
    },
    withSourceVersionNumber(SourceVersionNumber): {
      assert std.isNumber(SourceVersionNumber) : 'SourceVersionNumber must be a number',
      Properties+::: {
        SourceVersionNumber: SourceVersionNumber,
      },
    },
    withVersionDescription(VersionDescription): {
      assert std.isString(VersionDescription) : 'VersionDescription must be a string',
      Properties+::: {
        VersionDescription: VersionDescription,
      },
    },
    withStatus(Status): {
      assert std.isString(Status) : 'Status must be a string',
      Properties+::: {
        Status: Status,
      },
    },
    withStatusReason(StatusReason): {
      assert std.isString(StatusReason) : 'StatusReason must be a string',
      Properties+::: {
        StatusReason: StatusReason,
      },
    },
    withTags(Tags): {
      Properties+::: {
        Tags: (if std.isArray(Tags) then Tags else [Tags]),
      },
    },
    withTagsMixin(Tags): {
      Properties+::: {
        Tags+: (if std.isArray(Tags) then Tags else [Tags]),
      },
    },
    withDependsOn(DependsOn): {
      Properties+::: {
        DependsOn: (if std.isArray(DependsOn) then DependsOn else [DependsOn]),
      },
    },
    withDependsOnMixin(DependsOn): {
      Properties+::: {
        DependsOn+: (if std.isArray(DependsOn) then DependsOn else [DependsOn]),
      },
    },
    withCreationPolicy(CreationPolicy): {
      Properties+::: {
        CreationPolicy: (if std.isArray(CreationPolicy) then CreationPolicy else [CreationPolicy]),
      },
    },
    withCreationPolicyMixin(CreationPolicy): {
      Properties+::: {
        CreationPolicy+: (if std.isArray(CreationPolicy) then CreationPolicy else [CreationPolicy]),
      },
    },
    withDeletionPolicy(DeletionPolicy): {
      Properties+::: {
        DeletionPolicy: (if std.isArray(DeletionPolicy) then DeletionPolicy else [DeletionPolicy]),
      },
    },
    withDeletionPolicyMixin(DeletionPolicy): {
      Properties+::: {
        DeletionPolicy+: (if std.isArray(DeletionPolicy) then DeletionPolicy else [DeletionPolicy]),
      },
    },
    withUpdatePolicy(UpdatePolicy): {
      Properties+::: {
        UpdatePolicy: (if std.isArray(UpdatePolicy) then UpdatePolicy else [UpdatePolicy]),
      },
    },
    withUpdatePolicyMixin(UpdatePolicy): {
      Properties+::: {
        UpdatePolicy+: (if std.isArray(UpdatePolicy) then UpdatePolicy else [UpdatePolicy]),
      },
    },
    withUpdateReplacePolicy(UpdateReplacePolicy): {
      Properties+::: {
        UpdateReplacePolicy: (if std.isArray(UpdateReplacePolicy) then UpdateReplacePolicy else [UpdateReplacePolicy]),
      },
    },
    withUpdateReplacePolicyMixin(UpdateReplacePolicy): {
      Properties+::: {
        UpdateReplacePolicy+: (if std.isArray(UpdateReplacePolicy) then UpdateReplacePolicy else [UpdateReplacePolicy]),
      },
    },
    withMetadata(Metadata): {
      Properties+::: {
        Metadata: (if std.isArray(Metadata) then Metadata else [Metadata]),
      },
    },
    withMetadataMixin(Metadata): {
      Properties+::: {
        Metadata+: (if std.isArray(Metadata) then Metadata else [Metadata]),
      },
    },
  },
}
