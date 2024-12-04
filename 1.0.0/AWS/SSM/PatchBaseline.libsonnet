{
  new(
    Name,
  ): {
    local base = self,
    Properties: {
      assert std.isString(Name) : 'Name must be a string',
      Name: Name,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::SSM::PatchBaseline',
  },
  withId(Id): {
    assert std.isString(Id) : 'Id must be a string',
    Properties+::: {
      Id: Id,
    },
  },
  withDefaultBaseline(DefaultBaseline): {
    assert std.isBoolean(DefaultBaseline) : 'DefaultBaseline must be a boolean',
    Properties+::: {
      DefaultBaseline: DefaultBaseline,
    },
  },
  withOperatingSystem(OperatingSystem): {
    assert std.isString(OperatingSystem) : 'OperatingSystem must be a string',
    Properties+::: {
      OperatingSystem: OperatingSystem,
    },
  },
  withDescription(Description): {
    assert std.isString(Description) : 'Description must be a string',
    Properties+::: {
      Description: Description,
    },
  },
  withApprovalRules(ApprovalRules): {
    assert std.isObject(ApprovalRules) : 'ApprovalRules must be a object',
    Properties+::: {
      ApprovalRules: ApprovalRules,
    },
  },
  withSources(Sources): {
    Properties+::: {
      Sources: (if std.isArray(Sources) then Sources else [Sources]),
    },
  },
  withSourcesMixin(Sources): {
    Properties+::: {
      Sources+: (if std.isArray(Sources) then Sources else [Sources]),
    },
  },
  withRejectedPatches(RejectedPatches): {
    Properties+::: {
      RejectedPatches: (if std.isArray(RejectedPatches) then RejectedPatches else [RejectedPatches]),
    },
  },
  withRejectedPatchesMixin(RejectedPatches): {
    Properties+::: {
      RejectedPatches+: (if std.isArray(RejectedPatches) then RejectedPatches else [RejectedPatches]),
    },
  },
  withApprovedPatches(ApprovedPatches): {
    Properties+::: {
      ApprovedPatches: (if std.isArray(ApprovedPatches) then ApprovedPatches else [ApprovedPatches]),
    },
  },
  withApprovedPatchesMixin(ApprovedPatches): {
    Properties+::: {
      ApprovedPatches+: (if std.isArray(ApprovedPatches) then ApprovedPatches else [ApprovedPatches]),
    },
  },
  withRejectedPatchesAction(RejectedPatchesAction): {
    assert std.isString(RejectedPatchesAction) : 'RejectedPatchesAction must be a string',
    Properties+::: {
      RejectedPatchesAction: RejectedPatchesAction,
    },
  },
  withPatchGroups(PatchGroups): {
    Properties+::: {
      PatchGroups: (if std.isArray(PatchGroups) then PatchGroups else [PatchGroups]),
    },
  },
  withPatchGroupsMixin(PatchGroups): {
    Properties+::: {
      PatchGroups+: (if std.isArray(PatchGroups) then PatchGroups else [PatchGroups]),
    },
  },
  withApprovedPatchesComplianceLevel(ApprovedPatchesComplianceLevel): {
    assert std.isString(ApprovedPatchesComplianceLevel) : 'ApprovedPatchesComplianceLevel must be a string',
    Properties+::: {
      ApprovedPatchesComplianceLevel: ApprovedPatchesComplianceLevel,
    },
  },
  withApprovedPatchesEnableNonSecurity(ApprovedPatchesEnableNonSecurity): {
    assert std.isBoolean(ApprovedPatchesEnableNonSecurity) : 'ApprovedPatchesEnableNonSecurity must be a boolean',
    Properties+::: {
      ApprovedPatchesEnableNonSecurity: ApprovedPatchesEnableNonSecurity,
    },
  },
  withGlobalFilters(GlobalFilters): {
    assert std.isObject(GlobalFilters) : 'GlobalFilters must be a object',
    Properties+::: {
      GlobalFilters: GlobalFilters,
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
