{
  new(
    Email,
  ): {
    local base = self,
    Properties: {
      Email:
        if !std.isString(Email) then (error 'Email must be a string')
        else if std.isEmpty(Email) then (error 'Email must be not empty')
        else Email,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::GuardDuty::Member',
  },
  setStatus(Status): {
    Properties+::: {
      Status:
        if !std.isString(Status) then (error 'Status must be a string')
        else if std.isEmpty(Status) then (error 'Status must be not empty')
        else Status,
    },
  },
  setMemberId(MemberId): {
    Properties+::: {
      MemberId:
        if !std.isString(MemberId) then (error 'MemberId must be a string')
        else if std.isEmpty(MemberId) then (error 'MemberId must be not empty')
        else MemberId,
    },
  },
  setMessage(Message): {
    Properties+::: {
      Message:
        if !std.isString(Message) then (error 'Message must be a string')
        else if std.isEmpty(Message) then (error 'Message must be not empty')
        else Message,
    },
  },
  setDisableEmailNotification(DisableEmailNotification): {
    Properties+::: {
      DisableEmailNotification:
        if !std.isBoolean(DisableEmailNotification) then (error 'DisableEmailNotification must be a boolean') else DisableEmailNotification,
    },
  },
  setDetectorId(DetectorId): {
    Properties+::: {
      DetectorId:
        if !std.isString(DetectorId) then (error 'DetectorId must be a string')
        else if std.isEmpty(DetectorId) then (error 'DetectorId must be not empty')
        else DetectorId,
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
