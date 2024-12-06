{
  new(
    DomainIdentifier,
    UserIdentifier,
  ): {
    local base = self,
    Properties: {
      DomainIdentifier:
        if !std.isString(DomainIdentifier) then (error 'DomainIdentifier must be a string')
        else if std.isEmpty(DomainIdentifier) then (error 'DomainIdentifier must be not empty')
        else DomainIdentifier,
      UserIdentifier:
        if !std.isString(UserIdentifier) then (error 'UserIdentifier must be a string')
        else if std.isEmpty(UserIdentifier) then (error 'UserIdentifier must be not empty')
        else UserIdentifier,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::DataZone::UserProfile',
  },
  setDetails(Details): {
    Properties+::: {
      Details: Details,
    },
  },
  setDomainId(DomainId): {
    Properties+::: {
      DomainId:
        if !std.isString(DomainId) then (error 'DomainId must be a string')
        else if std.isEmpty(DomainId) then (error 'DomainId must be not empty')
        else DomainId,
    },
  },
  setId(Id): {
    Properties+::: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else Id,
    },
  },
  setStatus(Status): {
    Properties+::: {
      Status:
        if !std.isString(Status) then (error 'Status must be a string')
        else if std.isEmpty(Status) then (error 'Status must be not empty')
        else if Status != 'ASSIGNED' && Status != 'NOT_ASSIGNED' && Status != 'ACTIVATED' && Status != 'DEACTIVATED' then (error "Status should be 'ASSIGNED' or 'NOT_ASSIGNED' or 'ACTIVATED' or 'DEACTIVATED'")
        else Status,
    },
  },
  setType(Type): {
    Properties+::: {
      Type:
        if !std.isString(Type) then (error 'Type must be a string')
        else if std.isEmpty(Type) then (error 'Type must be not empty')
        else if Type != 'IAM' && Type != 'SSO' then (error "Type should be 'IAM' or 'SSO'")
        else Type,
    },
  },
  setUserType(UserType): {
    Properties+::: {
      UserType:
        if !std.isString(UserType) then (error 'UserType must be a string')
        else if std.isEmpty(UserType) then (error 'UserType must be not empty')
        else if UserType != 'IAM_USER' && UserType != 'IAM_ROLE' && UserType != 'SSO_USER' then (error "UserType should be 'IAM_USER' or 'IAM_ROLE' or 'SSO_USER'")
        else UserType,
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
