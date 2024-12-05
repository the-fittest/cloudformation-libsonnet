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
    Type: 'AWS::ARCZonalShift::ZonalAutoshiftConfiguration',
  },
  setZonalAutoshiftStatus(ZonalAutoshiftStatus): {
    Properties+::: {
      ZonalAutoshiftStatus:
        if !std.isString(ZonalAutoshiftStatus) then (error 'ZonalAutoshiftStatus must be a string')
        else if std.isEmpty(ZonalAutoshiftStatus) then (error 'ZonalAutoshiftStatus must be not empty')
        else if ZonalAutoshiftStatus != 'ENABLED' then (error "ZonalAutoshiftStatus should be 'ENABLED'")
        else ZonalAutoshiftStatus,
    },
  },
  setPracticeRunConfiguration(PracticeRunConfiguration): {
    Properties+::: {
      PracticeRunConfiguration:
        if !std.isObject(PracticeRunConfiguration) then (error 'PracticeRunConfiguration must be an object')
        else if !std.objectHas(PracticeRunConfiguration, 'OutcomeAlarms') then (error ' have attribute OutcomeAlarms')
        else PracticeRunConfiguration,
    },
  },
  setResourceIdentifier(ResourceIdentifier): {
    Properties+::: {
      ResourceIdentifier:
        if !std.isString(ResourceIdentifier) then (error 'ResourceIdentifier must be a string')
        else if std.isEmpty(ResourceIdentifier) then (error 'ResourceIdentifier must be not empty')
        else if std.length(ResourceIdentifier) < 8 then error ('ResourceIdentifier should have at least 8 characters')
        else if std.length(ResourceIdentifier) > 1024 then error ('ResourceIdentifier should have not more than 1024 characters')
        else ResourceIdentifier,
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
