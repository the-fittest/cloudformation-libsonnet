{
  new(
    TargetName,
    TargetType,
    LogLevel,
  ): {
    local base = self,
    Properties: {
      TargetName:
        if !std.isString(TargetName) then (error 'TargetName must be a string')
        else if std.isEmpty(TargetName) then (error 'TargetName must be not empty')
        else if std.length(TargetName) < 1 then error ('TargetName should have at least 1 characters')
        else if std.length(TargetName) > 128 then error ('TargetName should have not more than 128 characters')
        else TargetName,
      TargetType:
        if !std.isString(TargetType) then (error 'TargetType must be a string')
        else if std.isEmpty(TargetType) then (error 'TargetType must be not empty')
        else if TargetType != 'THING_GROUP' && TargetType != 'CLIENT_ID' && TargetType != 'SOURCE_IP' && TargetType != 'PRINCIPAL_ID' && TargetType != 'EVENT_TYPE' then (error "TargetType should be 'THING_GROUP' or 'CLIENT_ID' or 'SOURCE_IP' or 'PRINCIPAL_ID' or 'EVENT_TYPE'")
        else TargetType,
      LogLevel:
        if !std.isString(LogLevel) then (error 'LogLevel must be a string')
        else if std.isEmpty(LogLevel) then (error 'LogLevel must be not empty')
        else if LogLevel != 'ERROR' && LogLevel != 'WARN' && LogLevel != 'INFO' && LogLevel != 'DEBUG' && LogLevel != 'DISABLED' then (error "LogLevel should be 'ERROR' or 'WARN' or 'INFO' or 'DEBUG' or 'DISABLED'")
        else LogLevel,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::IoT::ResourceSpecificLogging',
  },
  setTargetId(TargetId): {
    Properties+::: {
      TargetId:
        if !std.isString(TargetId) then (error 'TargetId must be a string')
        else if std.isEmpty(TargetId) then (error 'TargetId must be not empty')
        else if std.length(TargetId) < 13 then error ('TargetId should have at least 13 characters')
        else if std.length(TargetId) > 140 then error ('TargetId should have not more than 140 characters')
        else TargetId,
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
