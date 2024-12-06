{
  new(
    ApplicationArn,
    PrincipalType,
    PrincipalId,
  ): {
    local base = self,
    Properties: {
      ApplicationArn:
        if !std.isString(ApplicationArn) then (error 'ApplicationArn must be a string')
        else if std.isEmpty(ApplicationArn) then (error 'ApplicationArn must be not empty')
        else if std.length(ApplicationArn) < 10 then error ('ApplicationArn should have at least 10 characters')
        else if std.length(ApplicationArn) > 1224 then error ('ApplicationArn should have not more than 1224 characters')
        else ApplicationArn,
      PrincipalType:
        if !std.isString(PrincipalType) then (error 'PrincipalType must be a string')
        else if std.isEmpty(PrincipalType) then (error 'PrincipalType must be not empty')
        else if PrincipalType != 'USER' && PrincipalType != 'GROUP' then (error "PrincipalType should be 'USER' or 'GROUP'")
        else PrincipalType,
      PrincipalId:
        if !std.isString(PrincipalId) then (error 'PrincipalId must be a string')
        else if std.isEmpty(PrincipalId) then (error 'PrincipalId must be not empty')
        else if std.length(PrincipalId) < 1 then error ('PrincipalId should have at least 1 characters')
        else if std.length(PrincipalId) > 47 then error ('PrincipalId should have not more than 47 characters')
        else PrincipalId,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::SSO::ApplicationAssignment',
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
