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
    Type: 'AWS::Macie::Session',
  },
  setAwsAccountId(AwsAccountId): {
    Properties+::: {
      AwsAccountId:
        if !std.isString(AwsAccountId) then (error 'AwsAccountId must be a string')
        else if std.isEmpty(AwsAccountId) then (error 'AwsAccountId must be not empty')
        else AwsAccountId,
    },
  },
  setStatus(Status): {
    Properties+::: {
      Status:
        if !std.isString(Status) then (error 'Status must be a string')
        else if std.isEmpty(Status) then (error 'Status must be not empty')
        else if Status != 'ENABLED' && Status != 'PAUSED' then (error "Status should be 'ENABLED' or 'PAUSED'")
        else Status,
    },
  },
  setFindingPublishingFrequency(FindingPublishingFrequency): {
    Properties+::: {
      FindingPublishingFrequency:
        if !std.isString(FindingPublishingFrequency) then (error 'FindingPublishingFrequency must be a string')
        else if std.isEmpty(FindingPublishingFrequency) then (error 'FindingPublishingFrequency must be not empty')
        else if FindingPublishingFrequency != 'FIFTEEN_MINUTES' && FindingPublishingFrequency != 'ONE_HOUR' && FindingPublishingFrequency != 'SIX_HOURS' then (error "FindingPublishingFrequency should be 'FIFTEEN_MINUTES' or 'ONE_HOUR' or 'SIX_HOURS'")
        else FindingPublishingFrequency,
    },
  },
  setServiceRole(ServiceRole): {
    Properties+::: {
      ServiceRole:
        if !std.isString(ServiceRole) then (error 'ServiceRole must be a string')
        else if std.isEmpty(ServiceRole) then (error 'ServiceRole must be not empty')
        else ServiceRole,
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
