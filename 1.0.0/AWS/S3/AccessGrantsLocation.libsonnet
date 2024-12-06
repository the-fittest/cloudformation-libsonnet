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
    Type: 'AWS::S3::AccessGrantsLocation',
  },
  setAccessGrantsLocationArn(AccessGrantsLocationArn): {
    Properties+::: {
      AccessGrantsLocationArn:
        if !std.isString(AccessGrantsLocationArn) then (error 'AccessGrantsLocationArn must be a string')
        else if std.isEmpty(AccessGrantsLocationArn) then (error 'AccessGrantsLocationArn must be not empty')
        else AccessGrantsLocationArn,
    },
  },
  setAccessGrantsLocationId(AccessGrantsLocationId): {
    Properties+::: {
      AccessGrantsLocationId:
        if !std.isString(AccessGrantsLocationId) then (error 'AccessGrantsLocationId must be a string')
        else if std.isEmpty(AccessGrantsLocationId) then (error 'AccessGrantsLocationId must be not empty')
        else AccessGrantsLocationId,
    },
  },
  setIamRoleArn(IamRoleArn): {
    Properties+::: {
      IamRoleArn:
        if !std.isString(IamRoleArn) then (error 'IamRoleArn must be a string')
        else if std.isEmpty(IamRoleArn) then (error 'IamRoleArn must be not empty')
        else IamRoleArn,
    },
  },
  setLocationScope(LocationScope): {
    Properties+::: {
      LocationScope:
        if !std.isString(LocationScope) then (error 'LocationScope must be a string')
        else if std.isEmpty(LocationScope) then (error 'LocationScope must be not empty')
        else LocationScope,
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
