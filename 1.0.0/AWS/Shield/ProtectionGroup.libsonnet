{
  new(
    Aggregation,
    Pattern,
    ProtectionGroupId,
  ): {
    local base = self,
    Properties: {
      assert std.isString(Aggregation) : 'Aggregation must be a string',
      assert Aggregation == 'SUM' || Aggregation == 'MEAN' || Aggregation == 'MAX' : "Aggregation should be 'SUM' or 'MEAN' or 'MAX'",
      Aggregation: Aggregation,
      assert std.isString(Pattern) : 'Pattern must be a string',
      assert Pattern == 'ALL' || Pattern == 'ARBITRARY' || Pattern == 'BY_RESOURCE_TYPE' : "Pattern should be 'ALL' or 'ARBITRARY' or 'BY_RESOURCE_TYPE'",
      Pattern: Pattern,
      assert std.isString(ProtectionGroupId) : 'ProtectionGroupId must be a string',
      ProtectionGroupId: ProtectionGroupId,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Shield::ProtectionGroup',
  },
  withProtectionGroupArn(ProtectionGroupArn): {
    assert std.isString(ProtectionGroupArn) : 'ProtectionGroupArn must be a string',
    Properties+::: {
      ProtectionGroupArn: ProtectionGroupArn,
    },
  },
  withMembers(Members): {
    Properties+::: {
      Members: (if std.isArray(Members) then Members else [Members]),
    },
  },
  withMembersMixin(Members): {
    Properties+::: {
      Members+: (if std.isArray(Members) then Members else [Members]),
    },
  },
  withResourceType(ResourceType): {
    assert std.isString(ResourceType) : 'ResourceType must be a string',
    assert ResourceType == 'CLOUDFRONT_DISTRIBUTION' || ResourceType == 'ROUTE_53_HOSTED_ZONE' || ResourceType == 'ELASTIC_IP_ALLOCATION' || ResourceType == 'CLASSIC_LOAD_BALANCER' || ResourceType == 'APPLICATION_LOAD_BALANCER' || ResourceType == 'GLOBAL_ACCELERATOR' : "ResourceType should be 'CLOUDFRONT_DISTRIBUTION' or 'ROUTE_53_HOSTED_ZONE' or 'ELASTIC_IP_ALLOCATION' or 'CLASSIC_LOAD_BALANCER' or 'APPLICATION_LOAD_BALANCER' or 'GLOBAL_ACCELERATOR'",
    Properties+::: {
      ResourceType: ResourceType,
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
