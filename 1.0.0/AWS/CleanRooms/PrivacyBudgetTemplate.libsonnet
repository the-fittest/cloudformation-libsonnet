{
  new(
    AutoRefresh,
    PrivacyBudgetType,
    Parameters,
    MembershipIdentifier,
  ): {
    local base = self,
    Properties: {
      AutoRefresh:
        if !std.isString(AutoRefresh) then (error 'AutoRefresh must be a string')
        else if std.isEmpty(AutoRefresh) then (error 'AutoRefresh must be not empty')
        else if AutoRefresh != 'CALENDAR_MONTH' && AutoRefresh != 'NONE' then (error "AutoRefresh should be 'CALENDAR_MONTH' or 'NONE'")
        else AutoRefresh,
      PrivacyBudgetType:
        if !std.isString(PrivacyBudgetType) then (error 'PrivacyBudgetType must be a string')
        else if std.isEmpty(PrivacyBudgetType) then (error 'PrivacyBudgetType must be not empty')
        else if PrivacyBudgetType != 'DIFFERENTIAL_PRIVACY' then (error "PrivacyBudgetType should be 'DIFFERENTIAL_PRIVACY'")
        else PrivacyBudgetType,
      Parameters:
        if !std.isObject(Parameters) then (error 'Parameters must be an object')
        else if !std.objectHas(Parameters, 'Epsilon') then (error ' have attribute Epsilon')
        else if !std.objectHas(Parameters, 'UsersNoisePerQuery') then (error ' have attribute UsersNoisePerQuery')
        else Parameters,
      MembershipIdentifier:
        if !std.isString(MembershipIdentifier) then (error 'MembershipIdentifier must be a string')
        else if std.isEmpty(MembershipIdentifier) then (error 'MembershipIdentifier must be not empty')
        else if std.length(MembershipIdentifier) < 36 then error ('MembershipIdentifier should have at least 36 characters')
        else if std.length(MembershipIdentifier) > 36 then error ('MembershipIdentifier should have not more than 36 characters')
        else MembershipIdentifier,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::CleanRooms::PrivacyBudgetTemplate',
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else if std.length(Arn) > 200 then error ('Arn should have not more than 200 characters')
        else Arn,
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
  setCollaborationIdentifier(CollaborationIdentifier): {
    Properties+::: {
      CollaborationIdentifier:
        if !std.isString(CollaborationIdentifier) then (error 'CollaborationIdentifier must be a string')
        else if std.isEmpty(CollaborationIdentifier) then (error 'CollaborationIdentifier must be not empty')
        else if std.length(CollaborationIdentifier) < 36 then error ('CollaborationIdentifier should have at least 36 characters')
        else if std.length(CollaborationIdentifier) > 36 then error ('CollaborationIdentifier should have not more than 36 characters')
        else CollaborationIdentifier,
    },
  },
  setPrivacyBudgetTemplateIdentifier(PrivacyBudgetTemplateIdentifier): {
    Properties+::: {
      PrivacyBudgetTemplateIdentifier:
        if !std.isString(PrivacyBudgetTemplateIdentifier) then (error 'PrivacyBudgetTemplateIdentifier must be a string')
        else if std.isEmpty(PrivacyBudgetTemplateIdentifier) then (error 'PrivacyBudgetTemplateIdentifier must be not empty')
        else if std.length(PrivacyBudgetTemplateIdentifier) < 36 then error ('PrivacyBudgetTemplateIdentifier should have at least 36 characters')
        else if std.length(PrivacyBudgetTemplateIdentifier) > 36 then error ('PrivacyBudgetTemplateIdentifier should have not more than 36 characters')
        else PrivacyBudgetTemplateIdentifier,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else Tags,
    },
  },
  pushTags(Tags): {
    Properties+::: {
      Tags+: Tags,
    },
  },
  setMembershipArn(MembershipArn): {
    Properties+::: {
      MembershipArn:
        if !std.isString(MembershipArn) then (error 'MembershipArn must be a string')
        else if std.isEmpty(MembershipArn) then (error 'MembershipArn must be not empty')
        else if std.length(MembershipArn) > 100 then error ('MembershipArn should have not more than 100 characters')
        else MembershipArn,
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
