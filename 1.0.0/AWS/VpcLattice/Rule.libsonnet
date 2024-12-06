{
  new(
    Action,
    Match,
    Priority,
  ): {
    local base = self,
    Properties: {
      Action:
        if !std.isObject(Action) then (error 'Action must be an object')
        else Action,
      Match:
        if !std.isObject(Match) then (error 'Match must be an object')
        else if !std.objectHas(Match, 'HttpMatch') then (error ' have attribute HttpMatch')
        else Match,
      Priority:
        if !std.isNumber(Priority) then (error 'Priority must be an number')
        else if Priority < 1 then error ('Priority should be at least 1')
        else if Priority > 100 then error ('Priority should be not more than 100')
        else Priority,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::VpcLattice::Rule',
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else if std.length(Arn) < 20 then error ('Arn should have at least 20 characters')
        else if std.length(Arn) > 2048 then error ('Arn should have not more than 2048 characters')
        else Arn,
    },
  },
  setId(Id): {
    Properties+::: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else if std.length(Id) < 7 then error ('Id should have at least 7 characters')
        else if std.length(Id) > 22 then error ('Id should have not more than 22 characters')
        else Id,
    },
  },
  setListenerIdentifier(ListenerIdentifier): {
    Properties+::: {
      ListenerIdentifier:
        if !std.isString(ListenerIdentifier) then (error 'ListenerIdentifier must be a string')
        else if std.isEmpty(ListenerIdentifier) then (error 'ListenerIdentifier must be not empty')
        else if std.length(ListenerIdentifier) < 20 then error ('ListenerIdentifier should have at least 20 characters')
        else if std.length(ListenerIdentifier) > 2048 then error ('ListenerIdentifier should have not more than 2048 characters')
        else ListenerIdentifier,
    },
  },
  setName(Name): {
    Properties+::: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else if std.length(Name) < 3 then error ('Name should have at least 3 characters')
        else if std.length(Name) > 63 then error ('Name should have not more than 63 characters')
        else Name,
    },
  },
  setServiceIdentifier(ServiceIdentifier): {
    Properties+::: {
      ServiceIdentifier:
        if !std.isString(ServiceIdentifier) then (error 'ServiceIdentifier must be a string')
        else if std.isEmpty(ServiceIdentifier) then (error 'ServiceIdentifier must be not empty')
        else if std.length(ServiceIdentifier) < 20 then error ('ServiceIdentifier should have at least 20 characters')
        else if std.length(ServiceIdentifier) > 2048 then error ('ServiceIdentifier should have not more than 2048 characters')
        else ServiceIdentifier,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else if std.length(Tags) > 50 then error ('Tags cannot have more than 50 items')
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
