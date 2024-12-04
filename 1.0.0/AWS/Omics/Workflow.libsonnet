{
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
    Type: 'AWS::Omics::Workflow',
  },
  withArn(Arn): {
    assert std.isString(Arn) : 'Arn must be a string',
    Properties+::: {
      Arn: Arn,
    },
  },
  withCreationTime(CreationTime): {
    assert std.isString(CreationTime) : 'CreationTime must be a string',
    Properties+::: {
      CreationTime: CreationTime,
    },
  },
  withDefinitionUri(DefinitionUri): {
    assert std.isString(DefinitionUri) : 'DefinitionUri must be a string',
    Properties+::: {
      DefinitionUri: DefinitionUri,
    },
  },
  withDescription(Description): {
    assert std.isString(Description) : 'Description must be a string',
    Properties+::: {
      Description: Description,
    },
  },
  withEngine(Engine): {
    assert std.isString(Engine) : 'Engine must be a string',
    assert Engine == 'WDL' || Engine == 'NEXTFLOW' || Engine == 'CWL' : "Engine should be 'WDL' or 'NEXTFLOW' or 'CWL'",
    Properties+::: {
      Engine: Engine,
    },
  },
  withId(Id): {
    assert std.isString(Id) : 'Id must be a string',
    Properties+::: {
      Id: Id,
    },
  },
  withMain(Main): {
    assert std.isString(Main) : 'Main must be a string',
    Properties+::: {
      Main: Main,
    },
  },
  withName(Name): {
    assert std.isString(Name) : 'Name must be a string',
    Properties+::: {
      Name: Name,
    },
  },
  withParameterTemplate(ParameterTemplate): {
    assert std.isObject(ParameterTemplate) : 'ParameterTemplate must be a object',
    Properties+::: {
      ParameterTemplate: ParameterTemplate,
    },
  },
  withStatus(Status): {
    assert std.isString(Status) : 'Status must be a string',
    assert Status == 'CREATING' || Status == 'ACTIVE' || Status == 'UPDATING' || Status == 'DELETED' || Status == 'FAILED' : "Status should be 'CREATING' or 'ACTIVE' or 'UPDATING' or 'DELETED' or 'FAILED'",
    Properties+::: {
      Status: Status,
    },
  },
  withAccelerators(Accelerators): {
    assert std.isString(Accelerators) : 'Accelerators must be a string',
    assert Accelerators == 'GPU' : "Accelerators should be 'GPU'",
    Properties+::: {
      Accelerators: Accelerators,
    },
  },
  withStorageCapacity(StorageCapacity): {
    assert std.isNumber(StorageCapacity) : 'StorageCapacity must be a number',
    Properties+::: {
      StorageCapacity: StorageCapacity,
    },
  },
  withTags(Tags): {
    assert std.isObject(Tags) : 'Tags must be a object',
    Properties+::: {
      Tags: Tags,
    },
  },
  withType(Type): {
    assert std.isString(Type) : 'Type must be a string',
    assert Type == 'PRIVATE' : "Type should be 'PRIVATE'",
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
}
