{
  new(
    DomainId,
    UserProfileName,
  ): {
    local base = self,
    Properties: {
      DomainId:
        if !std.isString(DomainId) then (error 'DomainId must be a string')
        else if std.isEmpty(DomainId) then (error 'DomainId must be not empty')
        else if std.length(DomainId) < 1 then error ('DomainId should have at least 1 characters')
        else if std.length(DomainId) > 63 then error ('DomainId should have not more than 63 characters')
        else DomainId,
      UserProfileName:
        if !std.isString(UserProfileName) then (error 'UserProfileName must be a string')
        else if std.isEmpty(UserProfileName) then (error 'UserProfileName must be not empty')
        else if std.length(UserProfileName) < 1 then error ('UserProfileName should have at least 1 characters')
        else if std.length(UserProfileName) > 63 then error ('UserProfileName should have not more than 63 characters')
        else UserProfileName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::SageMaker::UserProfile',
  },
  setUserProfileArn(UserProfileArn): {
    Properties+::: {
      UserProfileArn:
        if !std.isString(UserProfileArn) then (error 'UserProfileArn must be a string')
        else if std.isEmpty(UserProfileArn) then (error 'UserProfileArn must be not empty')
        else if std.length(UserProfileArn) > 256 then error ('UserProfileArn should have not more than 256 characters')
        else UserProfileArn,
    },
  },
  setSingleSignOnUserIdentifier(SingleSignOnUserIdentifier): {
    Properties+::: {
      SingleSignOnUserIdentifier:
        if !std.isString(SingleSignOnUserIdentifier) then (error 'SingleSignOnUserIdentifier must be a string')
        else if std.isEmpty(SingleSignOnUserIdentifier) then (error 'SingleSignOnUserIdentifier must be not empty')
        else SingleSignOnUserIdentifier,
    },
  },
  setSingleSignOnUserValue(SingleSignOnUserValue): {
    Properties+::: {
      SingleSignOnUserValue:
        if !std.isString(SingleSignOnUserValue) then (error 'SingleSignOnUserValue must be a string')
        else if std.isEmpty(SingleSignOnUserValue) then (error 'SingleSignOnUserValue must be not empty')
        else if std.length(SingleSignOnUserValue) < 1 then error ('SingleSignOnUserValue should have at least 1 characters')
        else if std.length(SingleSignOnUserValue) > 256 then error ('SingleSignOnUserValue should have not more than 256 characters')
        else SingleSignOnUserValue,
    },
  },
  setUserSettings(UserSettings): {
    Properties+::: {
      UserSettings:
        if !std.isObject(UserSettings) then (error 'UserSettings must be an object')
        else UserSettings,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else if std.length(Tags) > 50 then error ('Tags cannot have more than 50 items')
        else Tags,
    },
  },
  pushTags(Tags): {
    Properties+::: {
      Tags+: Tags,
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
