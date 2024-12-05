{
  new(
    GraphArn,
    MemberId,
    MemberEmailAddress,
  ): {
    local base = self,
    Properties: {
      GraphArn:
        if !std.isString(GraphArn) then (error 'GraphArn must be a string')
        else if std.isEmpty(GraphArn) then (error 'GraphArn must be not empty')
        else GraphArn,
      MemberId:
        if !std.isString(MemberId) then (error 'MemberId must be a string')
        else if std.isEmpty(MemberId) then (error 'MemberId must be not empty')
        else MemberId,
      MemberEmailAddress:
        if !std.isString(MemberEmailAddress) then (error 'MemberEmailAddress must be a string')
        else if std.isEmpty(MemberEmailAddress) then (error 'MemberEmailAddress must be not empty')
        else MemberEmailAddress,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Detective::MemberInvitation',
  },
  setDisableEmailNotification(DisableEmailNotification): {
    Properties+::: {
      DisableEmailNotification:
        if !std.isBoolean(DisableEmailNotification) then (error 'DisableEmailNotification must be a boolean') else DisableEmailNotification,
    },
  },
  setMessage(Message): {
    Properties+::: {
      Message:
        if !std.isString(Message) then (error 'Message must be a string')
        else if std.isEmpty(Message) then (error 'Message must be not empty')
        else if std.length(Message) < 1 then error ('Message should have at least 1 characters')
        else if std.length(Message) > 1000 then error ('Message should have not more than 1000 characters')
        else Message,
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
