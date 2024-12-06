{
  new(
    InstanceArn,
  ): {
    local base = self,
    Properties: {
      InstanceArn:
        if !std.isString(InstanceArn) then (error 'InstanceArn must be a string')
        else if std.isEmpty(InstanceArn) then (error 'InstanceArn must be not empty')
        else if std.length(InstanceArn) < 10 then error ('InstanceArn should have at least 10 characters')
        else if std.length(InstanceArn) > 1224 then error ('InstanceArn should have not more than 1224 characters')
        else InstanceArn,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::SSO::InstanceAccessControlAttributeConfiguration',
  },
  setInstanceAccessControlAttributeConfiguration(InstanceAccessControlAttributeConfiguration): {
    Properties+::: {
      InstanceAccessControlAttributeConfiguration:
        if !std.isObject(InstanceAccessControlAttributeConfiguration) then (error 'InstanceAccessControlAttributeConfiguration must be an object')
        else if !std.objectHas(InstanceAccessControlAttributeConfiguration, 'AccessControlAttributes') then (error ' have attribute AccessControlAttributes')
        else InstanceAccessControlAttributeConfiguration,
    },
  },
  setAccessControlAttributes(AccessControlAttributes): {
    Properties+::: {
      AccessControlAttributes:
        if !std.isArray(AccessControlAttributes) then (error 'AccessControlAttributes must be an array')
        else if std.length(AccessControlAttributes) > 50 then error ('AccessControlAttributes cannot have more than 50 items')
        else AccessControlAttributes,
    },
  },
  pushAccessControlAttributes(AccessControlAttributes): {
    Properties+::: {
      AccessControlAttributes+: AccessControlAttributes,
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
