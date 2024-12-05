{
  new(
    RoleArn,
  ): {
    local base = self,
    Properties: {
      RoleArn:
        if !std.isString(RoleArn) then (error 'RoleArn must be a string')
        else if std.isEmpty(RoleArn) then (error 'RoleArn must be not empty')
        else if std.length(RoleArn) < 1 then error ('RoleArn should have at least 1 characters')
        else if std.length(RoleArn) > 256 then error ('RoleArn should have not more than 256 characters')
        else RoleArn,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::StepFunctions::StateMachine',
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else if std.length(Arn) < 1 then error ('Arn should have at least 1 characters')
        else if std.length(Arn) > 2048 then error ('Arn should have not more than 2048 characters')
        else Arn,
    },
  },
  setName(Name): {
    Properties+::: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else if std.length(Name) < 1 then error ('Name should have at least 1 characters')
        else if std.length(Name) > 80 then error ('Name should have not more than 80 characters')
        else Name,
    },
  },
  setDefinitionString(DefinitionString): {
    Properties+::: {
      DefinitionString:
        if !std.isString(DefinitionString) then (error 'DefinitionString must be a string')
        else if std.isEmpty(DefinitionString) then (error 'DefinitionString must be not empty')
        else if std.length(DefinitionString) < 1 then error ('DefinitionString should have at least 1 characters')
        else if std.length(DefinitionString) > 1048576 then error ('DefinitionString should have not more than 1048576 characters')
        else DefinitionString,
    },
  },
  setStateMachineName(StateMachineName): {
    Properties+::: {
      StateMachineName:
        if !std.isString(StateMachineName) then (error 'StateMachineName must be a string')
        else if std.isEmpty(StateMachineName) then (error 'StateMachineName must be not empty')
        else if std.length(StateMachineName) < 1 then error ('StateMachineName should have at least 1 characters')
        else if std.length(StateMachineName) > 80 then error ('StateMachineName should have not more than 80 characters')
        else StateMachineName,
    },
  },
  setStateMachineType(StateMachineType): {
    Properties+::: {
      StateMachineType:
        if !std.isString(StateMachineType) then (error 'StateMachineType must be a string')
        else if std.isEmpty(StateMachineType) then (error 'StateMachineType must be not empty')
        else if StateMachineType != 'STANDARD' && StateMachineType != 'EXPRESS' then (error "StateMachineType should be 'STANDARD' or 'EXPRESS'")
        else StateMachineType,
    },
  },
  setStateMachineRevisionId(StateMachineRevisionId): {
    Properties+::: {
      StateMachineRevisionId:
        if !std.isString(StateMachineRevisionId) then (error 'StateMachineRevisionId must be a string')
        else if std.isEmpty(StateMachineRevisionId) then (error 'StateMachineRevisionId must be not empty')
        else if std.length(StateMachineRevisionId) < 1 then error ('StateMachineRevisionId should have at least 1 characters')
        else if std.length(StateMachineRevisionId) > 256 then error ('StateMachineRevisionId should have not more than 256 characters')
        else StateMachineRevisionId,
    },
  },
  setLoggingConfiguration(LoggingConfiguration): {
    Properties+::: {
      LoggingConfiguration:
        if !std.isObject(LoggingConfiguration) then (error 'LoggingConfiguration must be an object')
        else LoggingConfiguration,
    },
  },
  setTracingConfiguration(TracingConfiguration): {
    Properties+::: {
      TracingConfiguration:
        if !std.isObject(TracingConfiguration) then (error 'TracingConfiguration must be an object')
        else TracingConfiguration,
    },
  },
  setEncryptionConfiguration(EncryptionConfiguration): {
    Properties+::: {
      EncryptionConfiguration:
        if !std.isObject(EncryptionConfiguration) then (error 'EncryptionConfiguration must be an object')
        else if !std.objectHas(EncryptionConfiguration, 'Type') then (error ' have attribute Type')
        else EncryptionConfiguration,
    },
  },
  setDefinitionS3Location(DefinitionS3Location): {
    Properties+::: {
      DefinitionS3Location:
        if !std.isObject(DefinitionS3Location) then (error 'DefinitionS3Location must be an object')
        else if !std.objectHas(DefinitionS3Location, 'Bucket') then (error ' have attribute Bucket')
        else if !std.objectHas(DefinitionS3Location, 'Key') then (error ' have attribute Key')
        else DefinitionS3Location,
    },
  },
  setDefinitionSubstitutions(DefinitionSubstitutions): {
    Properties+::: {
      DefinitionSubstitutions:
        if !std.isObject(DefinitionSubstitutions) then (error 'DefinitionSubstitutions must be an object')
        else DefinitionSubstitutions,
    },
  },
  setDefinition(Definition): {
    Properties+::: {
      Definition:
        if !std.isObject(Definition) then (error 'Definition must be an object')
        else Definition,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
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
