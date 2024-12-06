{
  new(
    AssessmentTargetArn,
    DurationInSeconds,
    RulesPackageArns,
  ): {
    local base = self,
    Properties: {
      AssessmentTargetArn:
        if !std.isString(AssessmentTargetArn) then (error 'AssessmentTargetArn must be a string')
        else if std.isEmpty(AssessmentTargetArn) then (error 'AssessmentTargetArn must be not empty')
        else AssessmentTargetArn,
      DurationInSeconds:
        if !std.isNumber(DurationInSeconds) then (error 'DurationInSeconds must be an number')
        else DurationInSeconds,
      RulesPackageArns:
        if !std.isArray(RulesPackageArns) then (error 'RulesPackageArns must be an array')
        else RulesPackageArns,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Inspector::AssessmentTemplate',
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else Arn,
    },
  },
  setAssessmentTemplateName(AssessmentTemplateName): {
    Properties+::: {
      AssessmentTemplateName:
        if !std.isString(AssessmentTemplateName) then (error 'AssessmentTemplateName must be a string')
        else if std.isEmpty(AssessmentTemplateName) then (error 'AssessmentTemplateName must be not empty')
        else AssessmentTemplateName,
    },
  },
  setUserAttributesForFindings(UserAttributesForFindings): {
    Properties+::: {
      UserAttributesForFindings:
        if !std.isArray(UserAttributesForFindings) then (error 'UserAttributesForFindings must be an array')
        else UserAttributesForFindings,
    },
  },
  pushUserAttributesForFindings(UserAttributesForFindings): {
    Properties+::: {
      UserAttributesForFindings+: UserAttributesForFindings,
    },
  },
  setDependsOn(DependsOn): {
    Properties+::: {
      DependsOn: DependsOn,
    },
  },
  pushDependsOn(DependsOn): {
    Properties+::: {
      DependsOn+: DependsOn,
    },
  },
  setCreationPolicy(CreationPolicy): {
    Properties+::: {
      CreationPolicy: CreationPolicy,
    },
  },
  pushCreationPolicy(CreationPolicy): {
    Properties+::: {
      CreationPolicy+: CreationPolicy,
    },
  },
  setDeletionPolicy(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy: DeletionPolicy,
    },
  },
  pushDeletionPolicy(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy+: DeletionPolicy,
    },
  },
  setUpdatePolicy(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy: UpdatePolicy,
    },
  },
  pushUpdatePolicy(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy+: UpdatePolicy,
    },
  },
  setUpdateReplacePolicy(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy: UpdateReplacePolicy,
    },
  },
  pushUpdateReplacePolicy(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy+: UpdateReplacePolicy,
    },
  },
  setMetadata(Metadata): {
    Properties+::: {
      Metadata: Metadata,
    },
  },
  pushMetadata(Metadata): {
    Properties+::: {
      Metadata+: Metadata,
    },
  },
}
