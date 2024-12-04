{
  new(
    RoleArn,
  ): {
    local base = self,
    Properties: {
      assert std.isString(RoleArn) : 'RoleArn must be a string',
      RoleArn: RoleArn,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::StepFunctions::StateMachine',
  },
  withArn(Arn): {
    assert std.isString(Arn) : 'Arn must be a string',
    Properties+::: {
      Arn: Arn,
    },
  },
  withName(Name): {
    assert std.isString(Name) : 'Name must be a string',
    Properties+::: {
      Name: Name,
    },
  },
  withDefinitionString(DefinitionString): {
    assert std.isString(DefinitionString) : 'DefinitionString must be a string',
    Properties+::: {
      DefinitionString: DefinitionString,
    },
  },
  withStateMachineName(StateMachineName): {
    assert std.isString(StateMachineName) : 'StateMachineName must be a string',
    Properties+::: {
      StateMachineName: StateMachineName,
    },
  },
  withStateMachineType(StateMachineType): {
    assert std.isString(StateMachineType) : 'StateMachineType must be a string',
    Properties+::: {
      StateMachineType: StateMachineType,
    },
  },
  withStateMachineRevisionId(StateMachineRevisionId): {
    assert std.isString(StateMachineRevisionId) : 'StateMachineRevisionId must be a string',
    Properties+::: {
      StateMachineRevisionId: StateMachineRevisionId,
    },
  },
  withLoggingConfiguration(LoggingConfiguration): {
    assert std.isObject(LoggingConfiguration) : 'LoggingConfiguration must be a object',
    Properties+::: {
      LoggingConfiguration: LoggingConfiguration,
    },
  },
  withTracingConfiguration(TracingConfiguration): {
    assert std.isObject(TracingConfiguration) : 'TracingConfiguration must be a object',
    Properties+::: {
      TracingConfiguration: TracingConfiguration,
    },
  },
  withEncryptionConfiguration(EncryptionConfiguration): {
    assert std.isObject(EncryptionConfiguration) : 'EncryptionConfiguration must be a object',
    Properties+::: {
      EncryptionConfiguration: EncryptionConfiguration,
    },
  },
  withDefinitionS3Location(DefinitionS3Location): {
    assert std.isObject(DefinitionS3Location) : 'DefinitionS3Location must be a object',
    Properties+::: {
      DefinitionS3Location: DefinitionS3Location,
    },
  },
  withDefinitionSubstitutions(DefinitionSubstitutions): {
    assert std.isObject(DefinitionSubstitutions) : 'DefinitionSubstitutions must be a object',
    Properties+::: {
      DefinitionSubstitutions: DefinitionSubstitutions,
    },
  },
  withDefinition(Definition): {
    assert std.isObject(Definition) : 'Definition must be a object',
    Properties+::: {
      Definition: Definition,
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
}
