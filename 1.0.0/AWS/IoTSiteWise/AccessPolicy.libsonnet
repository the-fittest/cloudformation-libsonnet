{
  new(
    AccessPolicyIdentity,
    AccessPolicyPermission,
    AccessPolicyResource,
  ): {
    local base = self,
    Properties: {
      AccessPolicyIdentity:
        if !std.isObject(AccessPolicyIdentity) then (error 'AccessPolicyIdentity must be an object')
        else AccessPolicyIdentity,
      AccessPolicyPermission:
        if !std.isString(AccessPolicyPermission) then (error 'AccessPolicyPermission must be a string')
        else if std.isEmpty(AccessPolicyPermission) then (error 'AccessPolicyPermission must be not empty')
        else AccessPolicyPermission,
      AccessPolicyResource:
        if !std.isObject(AccessPolicyResource) then (error 'AccessPolicyResource must be an object')
        else AccessPolicyResource,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::IoTSiteWise::AccessPolicy',
  },
  setAccessPolicyId(AccessPolicyId): {
    Properties+::: {
      AccessPolicyId:
        if !std.isString(AccessPolicyId) then (error 'AccessPolicyId must be a string')
        else if std.isEmpty(AccessPolicyId) then (error 'AccessPolicyId must be not empty')
        else AccessPolicyId,
    },
  },
  setAccessPolicyArn(AccessPolicyArn): {
    Properties+::: {
      AccessPolicyArn:
        if !std.isString(AccessPolicyArn) then (error 'AccessPolicyArn must be a string')
        else if std.isEmpty(AccessPolicyArn) then (error 'AccessPolicyArn must be not empty')
        else AccessPolicyArn,
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
