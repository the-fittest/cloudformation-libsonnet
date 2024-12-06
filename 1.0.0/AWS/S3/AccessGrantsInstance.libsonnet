{
  new(): {
    local base = self,
    Properties:: {},
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::S3::AccessGrantsInstance',
  },
  setAccessGrantsInstanceArn(AccessGrantsInstanceArn): {
    Properties+::: {
      AccessGrantsInstanceArn:
        if !std.isString(AccessGrantsInstanceArn) then (error 'AccessGrantsInstanceArn must be a string')
        else if std.isEmpty(AccessGrantsInstanceArn) then (error 'AccessGrantsInstanceArn must be not empty')
        else AccessGrantsInstanceArn,
    },
  },
  setIdentityCenterArn(IdentityCenterArn): {
    Properties+::: {
      IdentityCenterArn:
        if !std.isString(IdentityCenterArn) then (error 'IdentityCenterArn must be a string')
        else if std.isEmpty(IdentityCenterArn) then (error 'IdentityCenterArn must be not empty')
        else IdentityCenterArn,
    },
  },
  setAccessGrantsInstanceId(AccessGrantsInstanceId): {
    Properties+::: {
      AccessGrantsInstanceId:
        if !std.isString(AccessGrantsInstanceId) then (error 'AccessGrantsInstanceId must be a string')
        else if std.isEmpty(AccessGrantsInstanceId) then (error 'AccessGrantsInstanceId must be not empty')
        else AccessGrantsInstanceId,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
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
