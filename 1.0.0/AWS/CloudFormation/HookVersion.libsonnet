{
  new(
    SchemaHandlerPackage,
    TypeName,
  ): {
    local base = self,
    Properties: {
      SchemaHandlerPackage:
        if !std.isString(SchemaHandlerPackage) then (error 'SchemaHandlerPackage must be a string')
        else if std.isEmpty(SchemaHandlerPackage) then (error 'SchemaHandlerPackage must be not empty')
        else if std.length(SchemaHandlerPackage) > 4096 then error ('SchemaHandlerPackage should have not more than 4096 characters')
        else SchemaHandlerPackage,
      TypeName:
        if !std.isString(TypeName) then (error 'TypeName must be a string')
        else if std.isEmpty(TypeName) then (error 'TypeName must be not empty')
        else TypeName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::CloudFormation::HookVersion',
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else Arn,
    },
  },
  setTypeArn(TypeArn): {
    Properties+::: {
      TypeArn:
        if !std.isString(TypeArn) then (error 'TypeArn must be a string')
        else if std.isEmpty(TypeArn) then (error 'TypeArn must be not empty')
        else TypeArn,
    },
  },
  setExecutionRoleArn(ExecutionRoleArn): {
    Properties+::: {
      ExecutionRoleArn:
        if !std.isString(ExecutionRoleArn) then (error 'ExecutionRoleArn must be a string')
        else if std.isEmpty(ExecutionRoleArn) then (error 'ExecutionRoleArn must be not empty')
        else if std.length(ExecutionRoleArn) > 256 then error ('ExecutionRoleArn should have not more than 256 characters')
        else ExecutionRoleArn,
    },
  },
  setIsDefaultVersion(IsDefaultVersion): {
    Properties+::: {
      IsDefaultVersion:
        if !std.isBoolean(IsDefaultVersion) then (error 'IsDefaultVersion must be a boolean') else IsDefaultVersion,
    },
  },
  setLoggingConfig(LoggingConfig): {
    Properties+::: {
      LoggingConfig:
        if !std.isObject(LoggingConfig) then (error 'LoggingConfig must be an object')
        else LoggingConfig,
    },
  },
  setVersionId(VersionId): {
    Properties+::: {
      VersionId:
        if !std.isString(VersionId) then (error 'VersionId must be a string')
        else if std.isEmpty(VersionId) then (error 'VersionId must be not empty')
        else VersionId,
    },
  },
  setVisibility(Visibility): {
    Properties+::: {
      Visibility:
        if !std.isString(Visibility) then (error 'Visibility must be a string')
        else if std.isEmpty(Visibility) then (error 'Visibility must be not empty')
        else if Visibility != 'PUBLIC' && Visibility != 'PRIVATE' then (error "Visibility should be 'PUBLIC' or 'PRIVATE'")
        else Visibility,
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
