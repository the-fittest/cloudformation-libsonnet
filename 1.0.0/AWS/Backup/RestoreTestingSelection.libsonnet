{
  new(
    IamRoleArn,
    ProtectedResourceType,
    RestoreTestingPlanName,
    RestoreTestingSelectionName,
  ): {
    local base = self,
    Properties: {
      IamRoleArn:
        if !std.isString(IamRoleArn) then (error 'IamRoleArn must be a string')
        else if std.isEmpty(IamRoleArn) then (error 'IamRoleArn must be not empty')
        else IamRoleArn,
      ProtectedResourceType:
        if !std.isString(ProtectedResourceType) then (error 'ProtectedResourceType must be a string')
        else if std.isEmpty(ProtectedResourceType) then (error 'ProtectedResourceType must be not empty')
        else ProtectedResourceType,
      RestoreTestingPlanName:
        if !std.isString(RestoreTestingPlanName) then (error 'RestoreTestingPlanName must be a string')
        else if std.isEmpty(RestoreTestingPlanName) then (error 'RestoreTestingPlanName must be not empty')
        else RestoreTestingPlanName,
      RestoreTestingSelectionName:
        if !std.isString(RestoreTestingSelectionName) then (error 'RestoreTestingSelectionName must be a string')
        else if std.isEmpty(RestoreTestingSelectionName) then (error 'RestoreTestingSelectionName must be not empty')
        else RestoreTestingSelectionName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Backup::RestoreTestingSelection',
  },
  setProtectedResourceArns(ProtectedResourceArns): {
    Properties+::: {
      ProtectedResourceArns:
        if !std.isArray(ProtectedResourceArns) then (error 'ProtectedResourceArns must be an array')
        else ProtectedResourceArns,
    },
  },
  setProtectedResourceArnsMixin(ProtectedResourceArns): {
    Properties+::: {
      ProtectedResourceArns+: ProtectedResourceArns,
    },
  },
  setProtectedResourceConditions(ProtectedResourceConditions): {
    Properties+::: {
      ProtectedResourceConditions:
        if !std.isObject(ProtectedResourceConditions) then (error 'ProtectedResourceConditions must be an object')
        else ProtectedResourceConditions,
    },
  },
  setRestoreMetadataOverrides(RestoreMetadataOverrides): {
    Properties+::: {
      RestoreMetadataOverrides:
        if !std.isObject(RestoreMetadataOverrides) then (error 'RestoreMetadataOverrides must be an object')
        else RestoreMetadataOverrides,
    },
  },
  setValidationWindowHours(ValidationWindowHours): {
    Properties+::: {
      ValidationWindowHours:
        if !std.isNumber(ValidationWindowHours) then (error 'ValidationWindowHours must be an number')
        else ValidationWindowHours,
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
