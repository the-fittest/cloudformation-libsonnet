{
  new(
    IamUserArn,
  ): {
    local base = self,
    Properties: {
      IamUserArn:
        if !std.isString(IamUserArn) then (error 'IamUserArn must be a string')
        else if std.isEmpty(IamUserArn) then (error 'IamUserArn must be not empty')
        else IamUserArn,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::OpsWorks::UserProfile',
  },
  setId(Id): {
    Properties+::: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else Id,
    },
  },
  setSshUsername(SshUsername): {
    Properties+::: {
      SshUsername:
        if !std.isString(SshUsername) then (error 'SshUsername must be a string')
        else if std.isEmpty(SshUsername) then (error 'SshUsername must be not empty')
        else SshUsername,
    },
  },
  setAllowSelfManagement(AllowSelfManagement): {
    Properties+::: {
      AllowSelfManagement:
        if !std.isBoolean(AllowSelfManagement) then (error 'AllowSelfManagement must be a boolean') else AllowSelfManagement,
    },
  },
  setSshPublicKey(SshPublicKey): {
    Properties+::: {
      SshPublicKey:
        if !std.isString(SshPublicKey) then (error 'SshPublicKey must be a string')
        else if std.isEmpty(SshPublicKey) then (error 'SshPublicKey must be not empty')
        else SshPublicKey,
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
