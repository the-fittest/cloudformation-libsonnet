{
  new(
    InstanceArn,
    TargetId,
    TargetType,
    PermissionSetArn,
    PrincipalType,
    PrincipalId,
  ): {
    local base = self,
    Properties: {
      InstanceArn:
        if !std.isString(InstanceArn) then (error 'InstanceArn must be a string')
        else if std.isEmpty(InstanceArn) then (error 'InstanceArn must be not empty')
        else if std.length(InstanceArn) < 10 then error ('InstanceArn should have at least 10 characters')
        else if std.length(InstanceArn) > 1224 then error ('InstanceArn should have not more than 1224 characters')
        else InstanceArn,
      TargetId:
        if !std.isString(TargetId) then (error 'TargetId must be a string')
        else if std.isEmpty(TargetId) then (error 'TargetId must be not empty')
        else TargetId,
      TargetType:
        if !std.isString(TargetType) then (error 'TargetType must be a string')
        else if std.isEmpty(TargetType) then (error 'TargetType must be not empty')
        else if TargetType != 'AWS_ACCOUNT' then (error "TargetType should be 'AWS_ACCOUNT'")
        else TargetType,
      PermissionSetArn:
        if !std.isString(PermissionSetArn) then (error 'PermissionSetArn must be a string')
        else if std.isEmpty(PermissionSetArn) then (error 'PermissionSetArn must be not empty')
        else if std.length(PermissionSetArn) < 10 then error ('PermissionSetArn should have at least 10 characters')
        else if std.length(PermissionSetArn) > 1224 then error ('PermissionSetArn should have not more than 1224 characters')
        else PermissionSetArn,
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
    Type: 'AWS::SSO::Assignment',
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
