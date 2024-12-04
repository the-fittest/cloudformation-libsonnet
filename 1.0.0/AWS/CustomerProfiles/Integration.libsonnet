{
  new(
    DomainName,
  ): {
    local base = self,
    Properties: {
      assert std.isString(DomainName) : 'DomainName must be a string',
      DomainName: DomainName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::CustomerProfiles::Integration',
  },
  withUri(Uri): {
    assert std.isString(Uri) : 'Uri must be a string',
    Properties+::: {
      Uri: Uri,
    },
  },
  withFlowDefinition(FlowDefinition): {
    assert std.isObject(FlowDefinition) : 'FlowDefinition must be a object',
    Properties+::: {
      FlowDefinition: FlowDefinition,
    },
  },
  withObjectTypeName(ObjectTypeName): {
    assert std.isString(ObjectTypeName) : 'ObjectTypeName must be a string',
    Properties+::: {
      ObjectTypeName: ObjectTypeName,
    },
  },
  withCreatedAt(CreatedAt): {
    assert std.isString(CreatedAt) : 'CreatedAt must be a string',
    Properties+::: {
      CreatedAt: CreatedAt,
    },
  },
  withLastUpdatedAt(LastUpdatedAt): {
    assert std.isString(LastUpdatedAt) : 'LastUpdatedAt must be a string',
    Properties+::: {
      LastUpdatedAt: LastUpdatedAt,
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
  withObjectTypeNames(ObjectTypeNames): {
    Properties+::: {
      ObjectTypeNames: (if std.isArray(ObjectTypeNames) then ObjectTypeNames else [ObjectTypeNames]),
    },
  },
  withObjectTypeNamesMixin(ObjectTypeNames): {
    Properties+::: {
      ObjectTypeNames+: (if std.isArray(ObjectTypeNames) then ObjectTypeNames else [ObjectTypeNames]),
    },
  },
  withEventTriggerNames(EventTriggerNames): {
    Properties+::: {
      EventTriggerNames: (if std.isArray(EventTriggerNames) then EventTriggerNames else [EventTriggerNames]),
    },
  },
  withEventTriggerNamesMixin(EventTriggerNames): {
    Properties+::: {
      EventTriggerNames+: (if std.isArray(EventTriggerNames) then EventTriggerNames else [EventTriggerNames]),
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
