{
  new(
    StudioId,
    IdentityName,
    IdentityType,
    SessionPolicyArn,
  ): {
    local base = self,
    Properties: {
      StudioId:
        if !std.isString(StudioId) then (error 'StudioId must be a string')
        else if std.isEmpty(StudioId) then (error 'StudioId must be not empty')
        else if std.length(StudioId) < 4 then error ('StudioId should have at least 4 characters')
        else if std.length(StudioId) > 256 then error ('StudioId should have not more than 256 characters')
        else StudioId,
      IdentityName:
        if !std.isString(IdentityName) then (error 'IdentityName must be a string')
        else if std.isEmpty(IdentityName) then (error 'IdentityName must be not empty')
        else IdentityName,
      IdentityType:
        if !std.isString(IdentityType) then (error 'IdentityType must be a string')
        else if std.isEmpty(IdentityType) then (error 'IdentityType must be not empty')
        else if IdentityType != 'USER' && IdentityType != 'GROUP' then (error "IdentityType should be 'USER' or 'GROUP'")
        else IdentityType,
      SessionPolicyArn:
        if !std.isString(SessionPolicyArn) then (error 'SessionPolicyArn must be a string')
        else if std.isEmpty(SessionPolicyArn) then (error 'SessionPolicyArn must be not empty')
        else SessionPolicyArn,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::EMR::StudioSessionMapping',
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
