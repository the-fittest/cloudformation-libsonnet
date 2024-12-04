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
    Type: 'AWS::AppSync::SourceApiAssociation',
  },
  withSourceApiIdentifier(SourceApiIdentifier): {
    assert std.isString(SourceApiIdentifier) : 'SourceApiIdentifier must be a string',
    Properties+::: {
      SourceApiIdentifier: SourceApiIdentifier,
    },
  },
  withMergedApiIdentifier(MergedApiIdentifier): {
    assert std.isString(MergedApiIdentifier) : 'MergedApiIdentifier must be a string',
    Properties+::: {
      MergedApiIdentifier: MergedApiIdentifier,
    },
  },
  withDescription(Description): {
    assert std.isString(Description) : 'Description must be a string',
    Properties+::: {
      Description: Description,
    },
  },
  withSourceApiAssociationConfig(SourceApiAssociationConfig): {
    Properties+::: {
      SourceApiAssociationConfig: SourceApiAssociationConfig,
    },
  },
  withAssociationId(AssociationId): {
    assert std.isString(AssociationId) : 'AssociationId must be a string',
    Properties+::: {
      AssociationId: AssociationId,
    },
  },
  withAssociationArn(AssociationArn): {
    assert std.isString(AssociationArn) : 'AssociationArn must be a string',
    Properties+::: {
      AssociationArn: AssociationArn,
    },
  },
  withSourceApiId(SourceApiId): {
    assert std.isString(SourceApiId) : 'SourceApiId must be a string',
    Properties+::: {
      SourceApiId: SourceApiId,
    },
  },
  withSourceApiArn(SourceApiArn): {
    assert std.isString(SourceApiArn) : 'SourceApiArn must be a string',
    Properties+::: {
      SourceApiArn: SourceApiArn,
    },
  },
  withMergedApiId(MergedApiId): {
    assert std.isString(MergedApiId) : 'MergedApiId must be a string',
    Properties+::: {
      MergedApiId: MergedApiId,
    },
  },
  withMergedApiArn(MergedApiArn): {
    assert std.isString(MergedApiArn) : 'MergedApiArn must be a string',
    Properties+::: {
      MergedApiArn: MergedApiArn,
    },
  },
  withSourceApiAssociationStatus(SourceApiAssociationStatus): {
    assert std.isString(SourceApiAssociationStatus) : 'SourceApiAssociationStatus must be a string',
    Properties+::: {
      SourceApiAssociationStatus: SourceApiAssociationStatus,
    },
  },
  withSourceApiAssociationStatusDetail(SourceApiAssociationStatusDetail): {
    assert std.isString(SourceApiAssociationStatusDetail) : 'SourceApiAssociationStatusDetail must be a string',
    Properties+::: {
      SourceApiAssociationStatusDetail: SourceApiAssociationStatusDetail,
    },
  },
  withLastSuccessfulMergeDate(LastSuccessfulMergeDate): {
    assert std.isString(LastSuccessfulMergeDate) : 'LastSuccessfulMergeDate must be a string',
    Properties+::: {
      LastSuccessfulMergeDate: LastSuccessfulMergeDate,
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
