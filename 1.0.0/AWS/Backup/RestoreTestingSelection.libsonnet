{
  // AWS Backup RestoreTestingSelection
  RestoreTestingSelection: {
    new(
      IamRoleArn,
      ProtectedResourceType,
      RestoreTestingPlanName,
      RestoreTestingSelectionName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(IamRoleArn) : 'IamRoleArn must be a string',
        IamRoleArn: IamRoleArn,
        assert std.isString(ProtectedResourceType) : 'ProtectedResourceType must be a string',
        ProtectedResourceType: ProtectedResourceType,
        assert std.isString(RestoreTestingPlanName) : 'RestoreTestingPlanName must be a string',
        RestoreTestingPlanName: RestoreTestingPlanName,
        assert std.isString(RestoreTestingSelectionName) : 'RestoreTestingSelectionName must be a string',
        RestoreTestingSelectionName: RestoreTestingSelectionName,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::Backup::RestoreTestingSelection',
    },
    withProtectedResourceArns(ProtectedResourceArns): {
      Properties+::: {
        ProtectedResourceArns: (if std.isArray(ProtectedResourceArns) then ProtectedResourceArns else [ProtectedResourceArns]),
      },
    },
    withProtectedResourceArnsMixin(ProtectedResourceArns): {
      Properties+::: {
        ProtectedResourceArns+: (if std.isArray(ProtectedResourceArns) then ProtectedResourceArns else [ProtectedResourceArns]),
      },
    },
    withProtectedResourceConditions(ProtectedResourceConditions): {
      assert std.isObject(ProtectedResourceConditions) : 'ProtectedResourceConditions must be a object',
      Properties+::: {
        ProtectedResourceConditions: ProtectedResourceConditions,
      },
    },
    withRestoreMetadataOverrides(RestoreMetadataOverrides): {
      assert std.isObject(RestoreMetadataOverrides) : 'RestoreMetadataOverrides must be a object',
      Properties+::: {
        RestoreMetadataOverrides: RestoreMetadataOverrides,
      },
    },
    withValidationWindowHours(ValidationWindowHours): {
      assert std.isNumber(ValidationWindowHours) : 'ValidationWindowHours must be a number',
      Properties+::: {
        ValidationWindowHours: ValidationWindowHours,
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
  },
}
