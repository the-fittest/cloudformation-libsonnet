{
  new(
    TargetId,
    TargetType,
    ConfigurationPolicyId,
  ): {
    local base = self,
    Properties: {
      assert std.isString(TargetId) : 'TargetId must be a string',
      TargetId: TargetId,
      assert std.isString(TargetType) : 'TargetType must be a string',
      TargetType: TargetType,
      assert std.isString(ConfigurationPolicyId) : 'ConfigurationPolicyId must be a string',
      ConfigurationPolicyId: ConfigurationPolicyId,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::SecurityHub::PolicyAssociation',
  },
  withAssociationStatus(AssociationStatus): {
    assert std.isString(AssociationStatus) : 'AssociationStatus must be a string',
    Properties+::: {
      AssociationStatus: AssociationStatus,
    },
  },
  withAssociationType(AssociationType): {
    assert std.isString(AssociationType) : 'AssociationType must be a string',
    Properties+::: {
      AssociationType: AssociationType,
    },
  },
  withAssociationStatusMessage(AssociationStatusMessage): {
    assert std.isString(AssociationStatusMessage) : 'AssociationStatusMessage must be a string',
    Properties+::: {
      AssociationStatusMessage: AssociationStatusMessage,
    },
  },
  withUpdatedAt(UpdatedAt): {
    assert std.isString(UpdatedAt) : 'UpdatedAt must be a string',
    Properties+::: {
      UpdatedAt: UpdatedAt,
    },
  },
  withAssociationIdentifier(AssociationIdentifier): {
    assert std.isString(AssociationIdentifier) : 'AssociationIdentifier must be a string',
    Properties+::: {
      AssociationIdentifier: AssociationIdentifier,
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
