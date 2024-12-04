{
  new(
    ExcludeResourceTags,
    PolicyName,
    RemediationEnabled,
    SecurityServicePolicyData,
  ): {
    local base = self,
    Properties: {
      assert std.isBoolean(ExcludeResourceTags) : 'ExcludeResourceTags must be a boolean',
      ExcludeResourceTags: ExcludeResourceTags,
      assert std.isString(PolicyName) : 'PolicyName must be a string',
      PolicyName: PolicyName,
      assert std.isBoolean(RemediationEnabled) : 'RemediationEnabled must be a boolean',
      RemediationEnabled: RemediationEnabled,
      assert std.isObject(SecurityServicePolicyData) : 'SecurityServicePolicyData must be an object',
      SecurityServicePolicyData: SecurityServicePolicyData,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::FMS::Policy',
  },
  withExcludeMap(ExcludeMap): {
    assert std.isObject(ExcludeMap) : 'ExcludeMap must be a object',
    Properties+::: {
      ExcludeMap: ExcludeMap,
    },
  },
  withIncludeMap(IncludeMap): {
    assert std.isObject(IncludeMap) : 'IncludeMap must be a object',
    Properties+::: {
      IncludeMap: IncludeMap,
    },
  },
  withId(Id): {
    assert std.isString(Id) : 'Id must be a string',
    Properties+::: {
      Id: Id,
    },
  },
  withPolicyDescription(PolicyDescription): {
    assert std.isString(PolicyDescription) : 'PolicyDescription must be a string',
    Properties+::: {
      PolicyDescription: PolicyDescription,
    },
  },
  withResourceTags(ResourceTags): {
    Properties+::: {
      ResourceTags: (if std.isArray(ResourceTags) then ResourceTags else [ResourceTags]),
    },
  },
  withResourceTagsMixin(ResourceTags): {
    Properties+::: {
      ResourceTags+: (if std.isArray(ResourceTags) then ResourceTags else [ResourceTags]),
    },
  },
  withResourceType(ResourceType): {
    assert std.isString(ResourceType) : 'ResourceType must be a string',
    Properties+::: {
      ResourceType: ResourceType,
    },
  },
  withResourceTypeList(ResourceTypeList): {
    Properties+::: {
      ResourceTypeList: (if std.isArray(ResourceTypeList) then ResourceTypeList else [ResourceTypeList]),
    },
  },
  withResourceTypeListMixin(ResourceTypeList): {
    Properties+::: {
      ResourceTypeList+: (if std.isArray(ResourceTypeList) then ResourceTypeList else [ResourceTypeList]),
    },
  },
  withResourceSetIds(ResourceSetIds): {
    Properties+::: {
      ResourceSetIds: (if std.isArray(ResourceSetIds) then ResourceSetIds else [ResourceSetIds]),
    },
  },
  withResourceSetIdsMixin(ResourceSetIds): {
    Properties+::: {
      ResourceSetIds+: (if std.isArray(ResourceSetIds) then ResourceSetIds else [ResourceSetIds]),
    },
  },
  withArn(Arn): {
    assert std.isString(Arn) : 'Arn must be a string',
    Properties+::: {
      Arn: Arn,
    },
  },
  withDeleteAllPolicyResources(DeleteAllPolicyResources): {
    assert std.isBoolean(DeleteAllPolicyResources) : 'DeleteAllPolicyResources must be a boolean',
    Properties+::: {
      DeleteAllPolicyResources: DeleteAllPolicyResources,
    },
  },
  withResourcesCleanUp(ResourcesCleanUp): {
    assert std.isBoolean(ResourcesCleanUp) : 'ResourcesCleanUp must be a boolean',
    Properties+::: {
      ResourcesCleanUp: ResourcesCleanUp,
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
