{
  new(
    Name,
  ): {
    local base = self,
    Properties: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else Name,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::RAM::ResourceShare',
  },
  setPermissionArns(PermissionArns): {
    Properties+::: {
      PermissionArns:
        if !std.isArray(PermissionArns) then (error 'PermissionArns must be an array')
        else PermissionArns,
    },
  },
  pushPermissionArns(PermissionArns): {
    Properties+::: {
      PermissionArns+: PermissionArns,
    },
  },
  setPrincipals(Principals): {
    Properties+::: {
      Principals:
        if !std.isArray(Principals) then (error 'Principals must be an array')
        else Principals,
    },
  },
  pushPrincipals(Principals): {
    Properties+::: {
      Principals+: Principals,
    },
  },
  setAllowExternalPrincipals(AllowExternalPrincipals): {
    Properties+::: {
      AllowExternalPrincipals:
        if !std.isBoolean(AllowExternalPrincipals) then (error 'AllowExternalPrincipals must be a boolean') else AllowExternalPrincipals,
    },
  },
  setId(Id): {
    Properties+::: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else Id,
    },
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else Arn,
    },
  },
  setResourceArns(ResourceArns): {
    Properties+::: {
      ResourceArns:
        if !std.isArray(ResourceArns) then (error 'ResourceArns must be an array')
        else ResourceArns,
    },
  },
  pushResourceArns(ResourceArns): {
    Properties+::: {
      ResourceArns+: ResourceArns,
    },
  },
  setSources(Sources): {
    Properties+::: {
      Sources:
        if !std.isArray(Sources) then (error 'Sources must be an array')
        else Sources,
    },
  },
  pushSources(Sources): {
    Properties+::: {
      Sources+: Sources,
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
