{
  new(
    PolicyName,
    PolicyDocument,
  ): {
    local base = self,
    Properties: {
      PolicyName:
        if !std.isString(PolicyName) then (error 'PolicyName must be a string')
        else if std.isEmpty(PolicyName) then (error 'PolicyName must be not empty')
        else if std.length(PolicyName) < 1 then error ('PolicyName should have at least 1 characters')
        else if std.length(PolicyName) > 128 then error ('PolicyName should have not more than 128 characters')
        else PolicyName,
      PolicyDocument:
        if !std.isString(PolicyDocument) then (error 'PolicyDocument must be a string')
        else if std.isEmpty(PolicyDocument) then (error 'PolicyDocument must be not empty')
        else if std.length(PolicyDocument) < 1 then error ('PolicyDocument should have at least 1 characters')
        else if std.length(PolicyDocument) > 5120 then error ('PolicyDocument should have not more than 5120 characters')
        else PolicyDocument,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::XRay::ResourcePolicy',
  },
  setBypassPolicyLockoutCheck(BypassPolicyLockoutCheck): {
    Properties+::: {
      BypassPolicyLockoutCheck:
        if !std.isBoolean(BypassPolicyLockoutCheck) then (error 'BypassPolicyLockoutCheck must be a boolean') else BypassPolicyLockoutCheck,
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
