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
    Type: 'AWS::Organizations::Organization',
  },
  setId(Id): {
    Properties+::: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else Id,
    },
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else Arn,
    },
  },
  setFeatureSet(FeatureSet): {
    Properties+::: {
      FeatureSet:
        if !std.isString(FeatureSet) then (error 'FeatureSet must be a string')
        else if std.isEmpty(FeatureSet) then (error 'FeatureSet must be not empty')
        else if FeatureSet != 'ALL' && FeatureSet != 'CONSOLIDATED_BILLING' then (error "FeatureSet should be 'ALL' or 'CONSOLIDATED_BILLING'")
        else FeatureSet,
    },
  },
  setManagementAccountArn(ManagementAccountArn): {
    Properties+::: {
      ManagementAccountArn:
        if !std.isString(ManagementAccountArn) then (error 'ManagementAccountArn must be a string')
        else if std.isEmpty(ManagementAccountArn) then (error 'ManagementAccountArn must be not empty')
        else ManagementAccountArn,
    },
  },
  setManagementAccountId(ManagementAccountId): {
    Properties+::: {
      ManagementAccountId:
        if !std.isString(ManagementAccountId) then (error 'ManagementAccountId must be a string')
        else if std.isEmpty(ManagementAccountId) then (error 'ManagementAccountId must be not empty')
        else ManagementAccountId,
    },
  },
  setManagementAccountEmail(ManagementAccountEmail): {
    Properties+::: {
      ManagementAccountEmail:
        if !std.isString(ManagementAccountEmail) then (error 'ManagementAccountEmail must be a string')
        else if std.isEmpty(ManagementAccountEmail) then (error 'ManagementAccountEmail must be not empty')
        else if std.length(ManagementAccountEmail) < 6 then error ('ManagementAccountEmail should have at least 6 characters')
        else if std.length(ManagementAccountEmail) > 64 then error ('ManagementAccountEmail should have not more than 64 characters')
        else ManagementAccountEmail,
    },
  },
  setRootId(RootId): {
    Properties+::: {
      RootId:
        if !std.isString(RootId) then (error 'RootId must be a string')
        else if std.isEmpty(RootId) then (error 'RootId must be not empty')
        else if std.length(RootId) > 64 then error ('RootId should have not more than 64 characters')
        else RootId,
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
