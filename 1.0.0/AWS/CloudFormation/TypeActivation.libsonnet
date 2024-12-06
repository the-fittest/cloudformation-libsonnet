{
  new(): {
    local base = self,
    Properties:: {},
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::CloudFormation::TypeActivation',
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else Arn,
    },
  },
  setExecutionRoleArn(ExecutionRoleArn): {
    Properties+::: {
      ExecutionRoleArn:
        if !std.isString(ExecutionRoleArn) then (error 'ExecutionRoleArn must be a string')
        else if std.isEmpty(ExecutionRoleArn) then (error 'ExecutionRoleArn must be not empty')
        else ExecutionRoleArn,
    },
  },
  setPublisherId(PublisherId): {
    Properties+::: {
      PublisherId:
        if !std.isString(PublisherId) then (error 'PublisherId must be a string')
        else if std.isEmpty(PublisherId) then (error 'PublisherId must be not empty')
        else if std.length(PublisherId) < 1 then error ('PublisherId should have at least 1 characters')
        else if std.length(PublisherId) > 40 then error ('PublisherId should have not more than 40 characters')
        else PublisherId,
    },
  },
  setLoggingConfig(LoggingConfig): {
    Properties+::: {
      LoggingConfig:
        if !std.isObject(LoggingConfig) then (error 'LoggingConfig must be an object')
        else LoggingConfig,
    },
  },
  setPublicTypeArn(PublicTypeArn): {
    Properties+::: {
      PublicTypeArn:
        if !std.isString(PublicTypeArn) then (error 'PublicTypeArn must be a string')
        else if std.isEmpty(PublicTypeArn) then (error 'PublicTypeArn must be not empty')
        else if std.length(PublicTypeArn) > 1024 then error ('PublicTypeArn should have not more than 1024 characters')
        else PublicTypeArn,
    },
  },
  setAutoUpdate(AutoUpdate): {
    Properties+::: {
      AutoUpdate:
        if !std.isBoolean(AutoUpdate) then (error 'AutoUpdate must be a boolean') else AutoUpdate,
    },
  },
  setTypeNameAlias(TypeNameAlias): {
    Properties+::: {
      TypeNameAlias:
        if !std.isString(TypeNameAlias) then (error 'TypeNameAlias must be a string')
        else if std.isEmpty(TypeNameAlias) then (error 'TypeNameAlias must be not empty')
        else if std.length(TypeNameAlias) < 10 then error ('TypeNameAlias should have at least 10 characters')
        else if std.length(TypeNameAlias) > 204 then error ('TypeNameAlias should have not more than 204 characters')
        else TypeNameAlias,
    },
  },
  setVersionBump(VersionBump): {
    Properties+::: {
      VersionBump:
        if !std.isString(VersionBump) then (error 'VersionBump must be a string')
        else if std.isEmpty(VersionBump) then (error 'VersionBump must be not empty')
        else if VersionBump != 'MAJOR' && VersionBump != 'MINOR' then (error "VersionBump should be 'MAJOR' or 'MINOR'")
        else VersionBump,
    },
  },
  setMajorVersion(MajorVersion): {
    Properties+::: {
      MajorVersion:
        if !std.isString(MajorVersion) then (error 'MajorVersion must be a string')
        else if std.isEmpty(MajorVersion) then (error 'MajorVersion must be not empty')
        else if std.length(MajorVersion) < 1 then error ('MajorVersion should have at least 1 characters')
        else if std.length(MajorVersion) > 100000 then error ('MajorVersion should have not more than 100000 characters')
        else MajorVersion,
    },
  },
  setTypeName(TypeName): {
    Properties+::: {
      TypeName:
        if !std.isString(TypeName) then (error 'TypeName must be a string')
        else if std.isEmpty(TypeName) then (error 'TypeName must be not empty')
        else TypeName,
    },
  },
  setType(Type): {
    Properties+::: {
      Type:
        if !std.isString(Type) then (error 'Type must be a string')
        else if std.isEmpty(Type) then (error 'Type must be not empty')
        else if Type != 'RESOURCE' && Type != 'MODULE' && Type != 'HOOK' then (error "Type should be 'RESOURCE' or 'MODULE' or 'HOOK'")
        else Type,
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
