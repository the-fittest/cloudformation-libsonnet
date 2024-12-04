{
  new(
    AssessmentTargetArn,
    DurationInSeconds,
    RulesPackageArns,
  ): {
    local base = self,
    Properties: {
      assert std.isString(AssessmentTargetArn) : 'AssessmentTargetArn must be a string',
      AssessmentTargetArn: AssessmentTargetArn,
      assert std.isNumber(DurationInSeconds) : 'DurationInSeconds must be a number',
      DurationInSeconds: DurationInSeconds,
      RulesPackageArns: (if std.isArray(RulesPackageArns) then RulesPackageArns else [RulesPackageArns]),
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Inspector::AssessmentTemplate',
  },
  withArn(Arn): {
    assert std.isString(Arn) : 'Arn must be a string',
    Properties+::: {
      Arn: Arn,
    },
  },
  withAssessmentTemplateName(AssessmentTemplateName): {
    assert std.isString(AssessmentTemplateName) : 'AssessmentTemplateName must be a string',
    Properties+::: {
      AssessmentTemplateName: AssessmentTemplateName,
    },
  },
  withUserAttributesForFindings(UserAttributesForFindings): {
    Properties+::: {
      UserAttributesForFindings: (if std.isArray(UserAttributesForFindings) then UserAttributesForFindings else [UserAttributesForFindings]),
    },
  },
  withUserAttributesForFindingsMixin(UserAttributesForFindings): {
    Properties+::: {
      UserAttributesForFindings+: (if std.isArray(UserAttributesForFindings) then UserAttributesForFindings else [UserAttributesForFindings]),
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
