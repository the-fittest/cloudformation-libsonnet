{
  new(
    VerifiedAccessInstanceId,
  ): {
    local base = self,
    Properties: {
      assert std.isString(VerifiedAccessInstanceId) : 'VerifiedAccessInstanceId must be a string',
      VerifiedAccessInstanceId: VerifiedAccessInstanceId,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::EC2::VerifiedAccessGroup',
  },
  withVerifiedAccessGroupId(VerifiedAccessGroupId): {
    assert std.isString(VerifiedAccessGroupId) : 'VerifiedAccessGroupId must be a string',
    Properties+::: {
      VerifiedAccessGroupId: VerifiedAccessGroupId,
    },
  },
  withVerifiedAccessGroupArn(VerifiedAccessGroupArn): {
    assert std.isString(VerifiedAccessGroupArn) : 'VerifiedAccessGroupArn must be a string',
    Properties+::: {
      VerifiedAccessGroupArn: VerifiedAccessGroupArn,
    },
  },
  withOwner(Owner): {
    assert std.isString(Owner) : 'Owner must be a string',
    Properties+::: {
      Owner: Owner,
    },
  },
  withCreationTime(CreationTime): {
    assert std.isString(CreationTime) : 'CreationTime must be a string',
    Properties+::: {
      CreationTime: CreationTime,
    },
  },
  withLastUpdatedTime(LastUpdatedTime): {
    assert std.isString(LastUpdatedTime) : 'LastUpdatedTime must be a string',
    Properties+::: {
      LastUpdatedTime: LastUpdatedTime,
    },
  },
  withDescription(Description): {
    assert std.isString(Description) : 'Description must be a string',
    Properties+::: {
      Description: Description,
    },
  },
  withPolicyDocument(PolicyDocument): {
    assert std.isString(PolicyDocument) : 'PolicyDocument must be a string',
    Properties+::: {
      PolicyDocument: PolicyDocument,
    },
  },
  withPolicyEnabled(PolicyEnabled): {
    assert std.isBoolean(PolicyEnabled) : 'PolicyEnabled must be a boolean',
    Properties+::: {
      PolicyEnabled: PolicyEnabled,
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
  withSseSpecification(SseSpecification): {
    assert std.isObject(SseSpecification) : 'SseSpecification must be a object',
    Properties+::: {
      SseSpecification: SseSpecification,
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
