{
  new(
    LayerVersionArn,
    Action,
    Principal,
  ): {
    local base = self,
    Properties: {
      LayerVersionArn:
        if !std.isString(LayerVersionArn) then (error 'LayerVersionArn must be a string')
        else if std.isEmpty(LayerVersionArn) then (error 'LayerVersionArn must be not empty')
        else LayerVersionArn,
      Action:
        if !std.isString(Action) then (error 'Action must be a string')
        else if std.isEmpty(Action) then (error 'Action must be not empty')
        else Action,
      Principal:
        if !std.isString(Principal) then (error 'Principal must be a string')
        else if std.isEmpty(Principal) then (error 'Principal must be not empty')
        else Principal,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Lambda::LayerVersionPermission',
  },
  setId(Id): {
    Properties+::: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else Id,
    },
  },
  setOrganizationId(OrganizationId): {
    Properties+::: {
      OrganizationId:
        if !std.isString(OrganizationId) then (error 'OrganizationId must be a string')
        else if std.isEmpty(OrganizationId) then (error 'OrganizationId must be not empty')
        else OrganizationId,
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
