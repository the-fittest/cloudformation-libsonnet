{
  new(): {
    local base = self,
    Properties:: {},
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::AuditManager::Assessment',
  },
  setFrameworkId(FrameworkId): {
    Properties+::: {
      FrameworkId:
        if !std.isString(FrameworkId) then (error 'FrameworkId must be a string')
        else if std.isEmpty(FrameworkId) then (error 'FrameworkId must be not empty')
        else if std.length(FrameworkId) < 32 then error ('FrameworkId should have at least 32 characters')
        else if std.length(FrameworkId) > 36 then error ('FrameworkId should have not more than 36 characters')
        else FrameworkId,
    },
  },
  setAssessmentId(AssessmentId): {
    Properties+::: {
      AssessmentId:
        if !std.isString(AssessmentId) then (error 'AssessmentId must be a string')
        else if std.isEmpty(AssessmentId) then (error 'AssessmentId must be not empty')
        else if std.length(AssessmentId) < 36 then error ('AssessmentId should have at least 36 characters')
        else if std.length(AssessmentId) > 36 then error ('AssessmentId should have not more than 36 characters')
        else AssessmentId,
    },
  },
  setAwsAccount(AwsAccount): {
    Properties+::: {
      AwsAccount:
        if !std.isObject(AwsAccount) then (error 'AwsAccount must be an object')
        else AwsAccount,
    },
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else if std.length(Arn) < 20 then error ('Arn should have at least 20 characters')
        else if std.length(Arn) > 2048 then error ('Arn should have not more than 2048 characters')
        else Arn,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else Tags,
    },
  },
  setTagsMixin(Tags): {
    Properties+::: {
      Tags+: Tags,
    },
  },
  setDelegations(Delegations): {
    Properties+::: {
      Delegations:
        if !std.isArray(Delegations) then (error 'Delegations must be an array')
        else Delegations,
    },
  },
  setDelegationsMixin(Delegations): {
    Properties+::: {
      Delegations+: Delegations,
    },
  },
  setRoles(Roles): {
    Properties+::: {
      Roles:
        if !std.isArray(Roles) then (error 'Roles must be an array')
        else Roles,
    },
  },
  setRolesMixin(Roles): {
    Properties+::: {
      Roles+: Roles,
    },
  },
  setScope(Scope): {
    Properties+::: {
      Scope:
        if !std.isObject(Scope) then (error 'Scope must be an object')
        else Scope,
    },
  },
  setAssessmentReportsDestination(AssessmentReportsDestination): {
    Properties+::: {
      AssessmentReportsDestination:
        if !std.isObject(AssessmentReportsDestination) then (error 'AssessmentReportsDestination must be an object')
        else AssessmentReportsDestination,
    },
  },
  setStatus(Status): {
    Properties+::: {
      Status:
        if !std.isString(Status) then (error 'Status must be a string')
        else if std.isEmpty(Status) then (error 'Status must be not empty')
        else if Status != 'ACTIVE' && Status != 'INACTIVE' then (error "Status should be 'ACTIVE' or 'INACTIVE'")
        else Status,
    },
  },
  setCreationTime(CreationTime): {
    Properties+::: {
      CreationTime:
        if !std.isNumber(CreationTime) then (error 'CreationTime must be an number')
        else CreationTime,
    },
  },
  setName(Name): {
    Properties+::: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else if std.length(Name) < 1 then error ('Name should have at least 1 characters')
        else if std.length(Name) > 127 then error ('Name should have not more than 127 characters')
        else Name,
    },
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else Description,
    },
  },
  setDependsOn(DependsOn): {
    Properties+::: {
      DependsOn: DependsOn,
    },
  },
  setDependsOnMixin(DependsOn): {
    Properties+::: {
      DependsOn+: DependsOn,
    },
  },
  setCreationPolicy(CreationPolicy): {
    Properties+::: {
      CreationPolicy: CreationPolicy,
    },
  },
  setCreationPolicyMixin(CreationPolicy): {
    Properties+::: {
      CreationPolicy+: CreationPolicy,
    },
  },
  setDeletionPolicy(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy: DeletionPolicy,
    },
  },
  setDeletionPolicyMixin(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy+: DeletionPolicy,
    },
  },
  setUpdatePolicy(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy: UpdatePolicy,
    },
  },
  setUpdatePolicyMixin(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy+: UpdatePolicy,
    },
  },
  setUpdateReplacePolicy(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy: UpdateReplacePolicy,
    },
  },
  setUpdateReplacePolicyMixin(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy+: UpdateReplacePolicy,
    },
  },
  setMetadata(Metadata): {
    Properties+::: {
      Metadata: Metadata,
    },
  },
  setMetadataMixin(Metadata): {
    Properties+::: {
      Metadata+: Metadata,
    },
  },
}
