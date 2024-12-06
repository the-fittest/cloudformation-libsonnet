{
  new(
    RoleArn,
    Source,
    Target,
  ): {
    local base = self,
    Properties: {
      RoleArn:
        if !std.isString(RoleArn) then (error 'RoleArn must be a string')
        else if std.isEmpty(RoleArn) then (error 'RoleArn must be not empty')
        else if std.length(RoleArn) < 1 then error ('RoleArn should have at least 1 characters')
        else if std.length(RoleArn) > 1600 then error ('RoleArn should have not more than 1600 characters')
        else RoleArn,
      Source:
        if !std.isString(Source) then (error 'Source must be a string')
        else if std.isEmpty(Source) then (error 'Source must be not empty')
        else if std.length(Source) < 1 then error ('Source should have at least 1 characters')
        else if std.length(Source) > 1600 then error ('Source should have not more than 1600 characters')
        else Source,
      Target:
        if !std.isString(Target) then (error 'Target must be a string')
        else if std.isEmpty(Target) then (error 'Target must be not empty')
        else if std.length(Target) < 1 then error ('Target should have at least 1 characters')
        else if std.length(Target) > 1600 then error ('Target should have not more than 1600 characters')
        else Target,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Pipes::Pipe',
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else if std.length(Arn) < 1 then error ('Arn should have at least 1 characters')
        else if std.length(Arn) > 1600 then error ('Arn should have not more than 1600 characters')
        else Arn,
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
  setCurrentState(CurrentState): {
    Properties+::: {
      CurrentState:
        if !std.isString(CurrentState) then (error 'CurrentState must be a string')
        else if std.isEmpty(CurrentState) then (error 'CurrentState must be not empty')
        else if CurrentState != 'RUNNING' && CurrentState != 'STOPPED' && CurrentState != 'CREATING' && CurrentState != 'UPDATING' && CurrentState != 'DELETING' && CurrentState != 'STARTING' && CurrentState != 'STOPPING' && CurrentState != 'CREATE_FAILED' && CurrentState != 'UPDATE_FAILED' && CurrentState != 'START_FAILED' && CurrentState != 'STOP_FAILED' && CurrentState != 'DELETE_FAILED' && CurrentState != 'CREATE_ROLLBACK_FAILED' && CurrentState != 'DELETE_ROLLBACK_FAILED' && CurrentState != 'UPDATE_ROLLBACK_FAILED' then (error "CurrentState should be 'RUNNING' or 'STOPPED' or 'CREATING' or 'UPDATING' or 'DELETING' or 'STARTING' or 'STOPPING' or 'CREATE_FAILED' or 'UPDATE_FAILED' or 'START_FAILED' or 'STOP_FAILED' or 'DELETE_FAILED' or 'CREATE_ROLLBACK_FAILED' or 'DELETE_ROLLBACK_FAILED' or 'UPDATE_ROLLBACK_FAILED'")
        else CurrentState,
    },
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else if std.length(Description) > 512 then error ('Description should have not more than 512 characters')
        else Description,
    },
  },
  setDesiredState(DesiredState): {
    Properties+::: {
      DesiredState:
        if !std.isString(DesiredState) then (error 'DesiredState must be a string')
        else if std.isEmpty(DesiredState) then (error 'DesiredState must be not empty')
        else if DesiredState != 'RUNNING' && DesiredState != 'STOPPED' then (error "DesiredState should be 'RUNNING' or 'STOPPED'")
        else DesiredState,
    },
  },
  setEnrichment(Enrichment): {
    Properties+::: {
      Enrichment:
        if !std.isString(Enrichment) then (error 'Enrichment must be a string')
        else if std.isEmpty(Enrichment) then (error 'Enrichment must be not empty')
        else if std.length(Enrichment) > 1600 then error ('Enrichment should have not more than 1600 characters')
        else Enrichment,
    },
  },
  setEnrichmentParameters(EnrichmentParameters): {
    Properties+::: {
      EnrichmentParameters:
        if !std.isObject(EnrichmentParameters) then (error 'EnrichmentParameters must be an object')
        else EnrichmentParameters,
    },
  },
  setKmsKeyIdentifier(KmsKeyIdentifier): {
    Properties+::: {
      KmsKeyIdentifier:
        if !std.isString(KmsKeyIdentifier) then (error 'KmsKeyIdentifier must be a string')
        else if std.isEmpty(KmsKeyIdentifier) then (error 'KmsKeyIdentifier must be not empty')
        else if std.length(KmsKeyIdentifier) > 2048 then error ('KmsKeyIdentifier should have not more than 2048 characters')
        else KmsKeyIdentifier,
    },
  },
  setLastModifiedTime(LastModifiedTime): {
    Properties+::: {
      LastModifiedTime:
        if !std.isString(LastModifiedTime) then (error 'LastModifiedTime must be a string')
        else if std.isEmpty(LastModifiedTime) then (error 'LastModifiedTime must be not empty')
        else LastModifiedTime,
    },
  },
  setLogConfiguration(LogConfiguration): {
    Properties+::: {
      LogConfiguration:
        if !std.isObject(LogConfiguration) then (error 'LogConfiguration must be an object')
        else LogConfiguration,
    },
  },
  setName(Name): {
    Properties+::: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else if std.length(Name) < 1 then error ('Name should have at least 1 characters')
        else if std.length(Name) > 64 then error ('Name should have not more than 64 characters')
        else Name,
    },
  },
  setSourceParameters(SourceParameters): {
    Properties+::: {
      SourceParameters:
        if !std.isObject(SourceParameters) then (error 'SourceParameters must be an object')
        else SourceParameters,
    },
  },
  setStateReason(StateReason): {
    Properties+::: {
      StateReason:
        if !std.isString(StateReason) then (error 'StateReason must be a string')
        else if std.isEmpty(StateReason) then (error 'StateReason must be not empty')
        else if std.length(StateReason) > 512 then error ('StateReason should have not more than 512 characters')
        else StateReason,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isObject(Tags) then (error 'Tags must be an object')
        else Tags,
    },
  },
  setTargetParameters(TargetParameters): {
    Properties+::: {
      TargetParameters:
        if !std.isObject(TargetParameters) then (error 'TargetParameters must be an object')
        else TargetParameters,
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
