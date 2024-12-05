{
  new(
    CollaborationIdentifier,
    QueryLogStatus,
  ): {
    local base = self,
    Properties: {
      CollaborationIdentifier:
        if !std.isString(CollaborationIdentifier) then (error 'CollaborationIdentifier must be a string')
        else if std.isEmpty(CollaborationIdentifier) then (error 'CollaborationIdentifier must be not empty')
        else if std.length(CollaborationIdentifier) < 36 then error ('CollaborationIdentifier should have at least 36 characters')
        else if std.length(CollaborationIdentifier) > 36 then error ('CollaborationIdentifier should have not more than 36 characters')
        else CollaborationIdentifier,
      QueryLogStatus:
        if !std.isString(QueryLogStatus) then (error 'QueryLogStatus must be a string')
        else if std.isEmpty(QueryLogStatus) then (error 'QueryLogStatus must be not empty')
        else if QueryLogStatus != 'ENABLED' && QueryLogStatus != 'DISABLED' then (error "QueryLogStatus should be 'ENABLED' or 'DISABLED'")
        else QueryLogStatus,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::CleanRooms::Membership',
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else if std.length(Arn) > 100 then error ('Arn should have not more than 100 characters')
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
  setCollaborationArn(CollaborationArn): {
    Properties+::: {
      CollaborationArn:
        if !std.isString(CollaborationArn) then (error 'CollaborationArn must be a string')
        else if std.isEmpty(CollaborationArn) then (error 'CollaborationArn must be not empty')
        else if std.length(CollaborationArn) > 100 then error ('CollaborationArn should have not more than 100 characters')
        else CollaborationArn,
    },
  },
  setCollaborationCreatorAccountId(CollaborationCreatorAccountId): {
    Properties+::: {
      CollaborationCreatorAccountId:
        if !std.isString(CollaborationCreatorAccountId) then (error 'CollaborationCreatorAccountId must be a string')
        else if std.isEmpty(CollaborationCreatorAccountId) then (error 'CollaborationCreatorAccountId must be not empty')
        else if std.length(CollaborationCreatorAccountId) < 12 then error ('CollaborationCreatorAccountId should have at least 12 characters')
        else if std.length(CollaborationCreatorAccountId) > 12 then error ('CollaborationCreatorAccountId should have not more than 12 characters')
        else CollaborationCreatorAccountId,
    },
  },
  setMembershipIdentifier(MembershipIdentifier): {
    Properties+::: {
      MembershipIdentifier:
        if !std.isString(MembershipIdentifier) then (error 'MembershipIdentifier must be a string')
        else if std.isEmpty(MembershipIdentifier) then (error 'MembershipIdentifier must be not empty')
        else if std.length(MembershipIdentifier) < 36 then error ('MembershipIdentifier should have at least 36 characters')
        else if std.length(MembershipIdentifier) > 36 then error ('MembershipIdentifier should have not more than 36 characters')
        else MembershipIdentifier,
    },
  },
  setDefaultResultConfiguration(DefaultResultConfiguration): {
    Properties+::: {
      DefaultResultConfiguration:
        if !std.isObject(DefaultResultConfiguration) then (error 'DefaultResultConfiguration must be an object')
        else if !std.objectHas(DefaultResultConfiguration, 'OutputConfiguration') then (error ' have attribute OutputConfiguration')
        else DefaultResultConfiguration,
    },
  },
  setPaymentConfiguration(PaymentConfiguration): {
    Properties+::: {
      PaymentConfiguration:
        if !std.isObject(PaymentConfiguration) then (error 'PaymentConfiguration must be an object')
        else if !std.objectHas(PaymentConfiguration, 'QueryCompute') then (error ' have attribute QueryCompute')
        else PaymentConfiguration,
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
