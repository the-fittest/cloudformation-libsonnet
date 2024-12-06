{
  new(
    Parameters,
  ): {
    local base = self,
    Properties: {
      Parameters:
        if !std.isObject(Parameters) then (error 'Parameters must be an object')
        else Parameters,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::SecurityHub::SecurityControl',
  },
  setSecurityControlId(SecurityControlId): {
    Properties+::: {
      SecurityControlId:
        if !std.isString(SecurityControlId) then (error 'SecurityControlId must be a string')
        else if std.isEmpty(SecurityControlId) then (error 'SecurityControlId must be not empty')
        else SecurityControlId,
    },
  },
  setSecurityControlArn(SecurityControlArn): {
    Properties+::: {
      SecurityControlArn:
        if !std.isString(SecurityControlArn) then (error 'SecurityControlArn must be a string')
        else if std.isEmpty(SecurityControlArn) then (error 'SecurityControlArn must be not empty')
        else SecurityControlArn,
    },
  },
  setLastUpdateReason(LastUpdateReason): {
    Properties+::: {
      LastUpdateReason:
        if !std.isString(LastUpdateReason) then (error 'LastUpdateReason must be a string')
        else if std.isEmpty(LastUpdateReason) then (error 'LastUpdateReason must be not empty')
        else LastUpdateReason,
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
