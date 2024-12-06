{
  new(
    Name,
  ): {
    local base = self,
    Properties: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else if std.length(Name) < 1 then error ('Name should have at least 1 characters')
        else if std.length(Name) > 64 then error ('Name should have not more than 64 characters')
        else Name,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::DataZone::EnvironmentActions',
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else if std.length(Description) > 2048 then error ('Description should have not more than 2048 characters')
        else Description,
    },
  },
  setDomainId(DomainId): {
    Properties+::: {
      DomainId:
        if !std.isString(DomainId) then (error 'DomainId must be a string')
        else if std.isEmpty(DomainId) then (error 'DomainId must be not empty')
        else DomainId,
    },
  },
  setDomainIdentifier(DomainIdentifier): {
    Properties+::: {
      DomainIdentifier:
        if !std.isString(DomainIdentifier) then (error 'DomainIdentifier must be a string')
        else if std.isEmpty(DomainIdentifier) then (error 'DomainIdentifier must be not empty')
        else DomainIdentifier,
    },
  },
  setEnvironmentId(EnvironmentId): {
    Properties+::: {
      EnvironmentId:
        if !std.isString(EnvironmentId) then (error 'EnvironmentId must be a string')
        else if std.isEmpty(EnvironmentId) then (error 'EnvironmentId must be not empty')
        else if std.length(EnvironmentId) < 1 then error ('EnvironmentId should have at least 1 characters')
        else if std.length(EnvironmentId) > 36 then error ('EnvironmentId should have not more than 36 characters')
        else EnvironmentId,
    },
  },
  setEnvironmentIdentifier(EnvironmentIdentifier): {
    Properties+::: {
      EnvironmentIdentifier:
        if !std.isString(EnvironmentIdentifier) then (error 'EnvironmentIdentifier must be a string')
        else if std.isEmpty(EnvironmentIdentifier) then (error 'EnvironmentIdentifier must be not empty')
        else if std.length(EnvironmentIdentifier) < 1 then error ('EnvironmentIdentifier should have at least 1 characters')
        else if std.length(EnvironmentIdentifier) > 36 then error ('EnvironmentIdentifier should have not more than 36 characters')
        else EnvironmentIdentifier,
    },
  },
  setId(Id): {
    Properties+::: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else if std.length(Id) < 1 then error ('Id should have at least 1 characters')
        else if std.length(Id) > 36 then error ('Id should have not more than 36 characters')
        else Id,
    },
  },
  setIdentifier(Identifier): {
    Properties+::: {
      Identifier:
        if !std.isString(Identifier) then (error 'Identifier must be a string')
        else if std.isEmpty(Identifier) then (error 'Identifier must be not empty')
        else if std.length(Identifier) < 1 then error ('Identifier should have at least 1 characters')
        else if std.length(Identifier) > 36 then error ('Identifier should have not more than 36 characters')
        else Identifier,
    },
  },
  setParameters(Parameters): {
    Properties+::: {
      Parameters:
        if !std.isObject(Parameters) then (error 'Parameters must be an object')
        else Parameters,
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
