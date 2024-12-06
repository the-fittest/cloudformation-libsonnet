{
  new(
    Type,
    Name,
    StackId,
  ): {
    local base = self,
    Properties: {
      Type:
        if !std.isString(Type) then (error 'Type must be a string')
        else if std.isEmpty(Type) then (error 'Type must be not empty')
        else Type,
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else Name,
      StackId:
        if !std.isString(StackId) then (error 'StackId must be a string')
        else if std.isEmpty(StackId) then (error 'StackId must be not empty')
        else StackId,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::OpsWorks::App',
  },
  setId(Id): {
    Properties+::: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else Id,
    },
  },
  setAppSource(AppSource): {
    Properties+::: {
      AppSource:
        if !std.isObject(AppSource) then (error 'AppSource must be an object')
        else AppSource,
    },
  },
  setAttributes(Attributes): {
    Properties+::: {
      Attributes:
        if !std.isObject(Attributes) then (error 'Attributes must be an object')
        else Attributes,
    },
  },
  setDataSources(DataSources): {
    Properties+::: {
      DataSources:
        if !std.isArray(DataSources) then (error 'DataSources must be an array')
        else DataSources,
    },
  },
  pushDataSources(DataSources): {
    Properties+::: {
      DataSources+: DataSources,
    },
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else Description,
    },
  },
  setDomains(Domains): {
    Properties+::: {
      Domains:
        if !std.isArray(Domains) then (error 'Domains must be an array')
        else Domains,
    },
  },
  pushDomains(Domains): {
    Properties+::: {
      Domains+: Domains,
    },
  },
  setEnableSsl(EnableSsl): {
    Properties+::: {
      EnableSsl:
        if !std.isBoolean(EnableSsl) then (error 'EnableSsl must be a boolean') else EnableSsl,
    },
  },
  setEnvironment(Environment): {
    Properties+::: {
      Environment:
        if !std.isArray(Environment) then (error 'Environment must be an array')
        else Environment,
    },
  },
  pushEnvironment(Environment): {
    Properties+::: {
      Environment+: Environment,
    },
  },
  setShortname(Shortname): {
    Properties+::: {
      Shortname:
        if !std.isString(Shortname) then (error 'Shortname must be a string')
        else if std.isEmpty(Shortname) then (error 'Shortname must be not empty')
        else Shortname,
    },
  },
  setSslConfiguration(SslConfiguration): {
    Properties+::: {
      SslConfiguration:
        if !std.isObject(SslConfiguration) then (error 'SslConfiguration must be an object')
        else SslConfiguration,
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
