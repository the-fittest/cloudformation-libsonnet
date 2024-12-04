{
  // AWS CloudFormation HookVersion
  HookVersion: {
    new(
      SchemaHandlerPackage,
      TypeName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(SchemaHandlerPackage) : 'SchemaHandlerPackage must be a string',
        SchemaHandlerPackage: SchemaHandlerPackage,
        assert std.isString(TypeName) : 'TypeName must be a string',
        TypeName: TypeName,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::CloudFormation::HookVersion',
    },
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: {
        Arn: Arn,
      },
    },
    withTypeArn(TypeArn): {
      assert std.isString(TypeArn) : 'TypeArn must be a string',
      Properties+::: {
        TypeArn: TypeArn,
      },
    },
    withExecutionRoleArn(ExecutionRoleArn): {
      assert std.isString(ExecutionRoleArn) : 'ExecutionRoleArn must be a string',
      Properties+::: {
        ExecutionRoleArn: ExecutionRoleArn,
      },
    },
    withIsDefaultVersion(IsDefaultVersion): {
      assert std.isBoolean(IsDefaultVersion) : 'IsDefaultVersion must be a boolean',
      Properties+::: {
        IsDefaultVersion: IsDefaultVersion,
      },
    },
    withLoggingConfig(LoggingConfig): {
      assert std.isObject(LoggingConfig) : 'LoggingConfig must be a object',
      Properties+::: {
        LoggingConfig: LoggingConfig,
      },
    },
    withVersionId(VersionId): {
      assert std.isString(VersionId) : 'VersionId must be a string',
      Properties+::: {
        VersionId: VersionId,
      },
    },
    withVisibility(Visibility): {
      assert std.isString(Visibility) : 'Visibility must be a string',
      Properties+::: {
        Visibility: Visibility,
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
