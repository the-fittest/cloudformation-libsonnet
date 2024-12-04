{
  new(
    Role,
    TransformParameters,
    InputRecordTables,
  ): {
    local base = self,
    Properties: {
      assert std.isString(Role) : 'Role must be a string',
      Role: Role,
      assert std.isObject(TransformParameters) : 'TransformParameters must be an object',
      TransformParameters: TransformParameters,
      assert std.isObject(InputRecordTables) : 'InputRecordTables must be an object',
      InputRecordTables: InputRecordTables,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Glue::MLTransform',
  },
  withMaxRetries(MaxRetries): {
    assert std.isNumber(MaxRetries) : 'MaxRetries must be a number',
    Properties+::: {
      MaxRetries: MaxRetries,
    },
  },
  withDescription(Description): {
    assert std.isString(Description) : 'Description must be a string',
    Properties+::: {
      Description: Description,
    },
  },
  withTransformEncryption(TransformEncryption): {
    assert std.isObject(TransformEncryption) : 'TransformEncryption must be a object',
    Properties+::: {
      TransformEncryption: TransformEncryption,
    },
  },
  withTimeout(Timeout): {
    assert std.isNumber(Timeout) : 'Timeout must be a number',
    Properties+::: {
      Timeout: Timeout,
    },
  },
  withName(Name): {
    assert std.isString(Name) : 'Name must be a string',
    Properties+::: {
      Name: Name,
    },
  },
  withWorkerType(WorkerType): {
    assert std.isString(WorkerType) : 'WorkerType must be a string',
    Properties+::: {
      WorkerType: WorkerType,
    },
  },
  withGlueVersion(GlueVersion): {
    assert std.isString(GlueVersion) : 'GlueVersion must be a string',
    Properties+::: {
      GlueVersion: GlueVersion,
    },
  },
  withId(Id): {
    assert std.isString(Id) : 'Id must be a string',
    Properties+::: {
      Id: Id,
    },
  },
  withNumberOfWorkers(NumberOfWorkers): {
    assert std.isNumber(NumberOfWorkers) : 'NumberOfWorkers must be a number',
    Properties+::: {
      NumberOfWorkers: NumberOfWorkers,
    },
  },
  withTags(Tags): {
    assert std.isObject(Tags) : 'Tags must be a object',
    Properties+::: {
      Tags: Tags,
    },
  },
  withMaxCapacity(MaxCapacity): {
    assert std.isNumber(MaxCapacity) : 'MaxCapacity must be a number',
    Properties+::: {
      MaxCapacity: MaxCapacity,
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
