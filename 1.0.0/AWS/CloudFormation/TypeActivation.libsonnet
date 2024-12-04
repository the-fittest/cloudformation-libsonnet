{
  // AWS CloudFormation TypeActivation
  TypeActivation: {
    new(
    ): {
      local base = self,
      Properties: {
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::CloudFormation::TypeActivation',
    },
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: {
        Arn: Arn,
      },
    },
    withExecutionRoleArn(ExecutionRoleArn): {
      assert std.isString(ExecutionRoleArn) : 'ExecutionRoleArn must be a string',
      Properties+::: {
        ExecutionRoleArn: ExecutionRoleArn,
      },
    },
    withPublisherId(PublisherId): {
      assert std.isString(PublisherId) : 'PublisherId must be a string',
      Properties+::: {
        PublisherId: PublisherId,
      },
    },
    withLoggingConfig(LoggingConfig): {
      assert std.isObject(LoggingConfig) : 'LoggingConfig must be a object',
      Properties+::: {
        LoggingConfig: LoggingConfig,
      },
    },
    withPublicTypeArn(PublicTypeArn): {
      assert std.isString(PublicTypeArn) : 'PublicTypeArn must be a string',
      Properties+::: {
        PublicTypeArn: PublicTypeArn,
      },
    },
    withAutoUpdate(AutoUpdate): {
      assert std.isBoolean(AutoUpdate) : 'AutoUpdate must be a boolean',
      Properties+::: {
        AutoUpdate: AutoUpdate,
      },
    },
    withTypeNameAlias(TypeNameAlias): {
      assert std.isString(TypeNameAlias) : 'TypeNameAlias must be a string',
      Properties+::: {
        TypeNameAlias: TypeNameAlias,
      },
    },
    withVersionBump(VersionBump): {
      assert std.isString(VersionBump) : 'VersionBump must be a string',
      Properties+::: {
        VersionBump: VersionBump,
      },
    },
    withMajorVersion(MajorVersion): {
      assert std.isString(MajorVersion) : 'MajorVersion must be a string',
      Properties+::: {
        MajorVersion: MajorVersion,
      },
    },
    withTypeName(TypeName): {
      assert std.isString(TypeName) : 'TypeName must be a string',
      Properties+::: {
        TypeName: TypeName,
      },
    },
    withType(Type): {
      assert std.isString(Type) : 'Type must be a string',
      Properties+::: {
        Type: Type,
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
