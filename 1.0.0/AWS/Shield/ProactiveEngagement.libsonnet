{
  new(
    ProactiveEngagementStatus,
    EmergencyContactList,
  ): {
    local base = self,
    Properties: {
      ProactiveEngagementStatus:
        if !std.isString(ProactiveEngagementStatus) then (error 'ProactiveEngagementStatus must be a string')
        else if std.isEmpty(ProactiveEngagementStatus) then (error 'ProactiveEngagementStatus must be not empty')
        else if ProactiveEngagementStatus != 'ENABLED' && ProactiveEngagementStatus != 'DISABLED' then (error "ProactiveEngagementStatus should be 'ENABLED' or 'DISABLED'")
        else ProactiveEngagementStatus,
      EmergencyContactList:
        if !std.isArray(EmergencyContactList) then (error 'EmergencyContactList must be an array')
        else if std.length(EmergencyContactList) < 1 then error ('EmergencyContactList cannot have less than 1 items')
        else if std.length(EmergencyContactList) > 10 then error ('EmergencyContactList cannot have more than 10 items')
        else EmergencyContactList,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Shield::ProactiveEngagement',
  },
  setAccountId(AccountId): {
    Properties+::: {
      AccountId:
        if !std.isString(AccountId) then (error 'AccountId must be a string')
        else if std.isEmpty(AccountId) then (error 'AccountId must be not empty')
        else AccountId,
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
