{
  // AWS AuditManager Assessment
  Assessment: {
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
      Type: 'AWS::AuditManager::Assessment',
    },
    withFrameworkId(FrameworkId): {
      assert std.isString(FrameworkId) : 'FrameworkId must be a string',
      Properties+::: {
        FrameworkId: FrameworkId,
      },
    },
    withAssessmentId(AssessmentId): {
      assert std.isString(AssessmentId) : 'AssessmentId must be a string',
      Properties+::: {
        AssessmentId: AssessmentId,
      },
    },
    withAwsAccount(AwsAccount): {
      assert std.isObject(AwsAccount) : 'AwsAccount must be a object',
      Properties+::: {
        AwsAccount: AwsAccount,
      },
    },
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: {
        Arn: Arn,
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
    withDelegations(Delegations): {
      Properties+::: {
        Delegations: (if std.isArray(Delegations) then Delegations else [Delegations]),
      },
    },
    withDelegationsMixin(Delegations): {
      Properties+::: {
        Delegations+: (if std.isArray(Delegations) then Delegations else [Delegations]),
      },
    },
    withRoles(Roles): {
      Properties+::: {
        Roles: (if std.isArray(Roles) then Roles else [Roles]),
      },
    },
    withRolesMixin(Roles): {
      Properties+::: {
        Roles+: (if std.isArray(Roles) then Roles else [Roles]),
      },
    },
    withScope(Scope): {
      assert std.isObject(Scope) : 'Scope must be a object',
      Properties+::: {
        Scope: Scope,
      },
    },
    withAssessmentReportsDestination(AssessmentReportsDestination): {
      assert std.isObject(AssessmentReportsDestination) : 'AssessmentReportsDestination must be a object',
      Properties+::: {
        AssessmentReportsDestination: AssessmentReportsDestination,
      },
    },
    withStatus(Status): {
      assert std.isString(Status) : 'Status must be a string',
      Properties+::: {
        Status: Status,
      },
    },
    withCreationTime(CreationTime): {
      assert std.isNumber(CreationTime) : 'CreationTime must be a number',
      Properties+::: {
        CreationTime: CreationTime,
      },
    },
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: {
        Name: Name,
      },
    },
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: {
        Description: Description,
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
