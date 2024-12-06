{
  new(
    DefaultAction,
    Protocol,
  ): {
    local base = self,
    Properties: {
      DefaultAction:
        if !std.isObject(DefaultAction) then (error 'DefaultAction must be an object')
        else DefaultAction,
      Protocol:
        if !std.isString(Protocol) then (error 'Protocol must be a string')
        else if std.isEmpty(Protocol) then (error 'Protocol must be not empty')
        else if Protocol != 'HTTP' && Protocol != 'HTTPS' && Protocol != 'TLS_PASSTHROUGH' then (error "Protocol should be 'HTTP' or 'HTTPS' or 'TLS_PASSTHROUGH'")
        else Protocol,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::VpcLattice::Listener',
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
        else if std.length(Id) < 26 then error ('Id should have at least 26 characters')
        else if std.length(Id) > 26 then error ('Id should have not more than 26 characters')
        else Id,
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
  setPort(Port): {
    Properties+::: {
      Port:
        if !std.isNumber(Port) then (error 'Port must be an number')
        else if Port < 1 then error ('Port should be at least 1')
        else if Port > 65535 then error ('Port should be not more than 65535')
        else Port,
    },
  },
  setServiceArn(ServiceArn): {
    Properties+::: {
      ServiceArn:
        if !std.isString(ServiceArn) then (error 'ServiceArn must be a string')
        else if std.isEmpty(ServiceArn) then (error 'ServiceArn must be not empty')
        else if std.length(ServiceArn) < 21 then error ('ServiceArn should have at least 21 characters')
        else if std.length(ServiceArn) > 2048 then error ('ServiceArn should have not more than 2048 characters')
        else ServiceArn,
    },
  },
  setServiceId(ServiceId): {
    Properties+::: {
      ServiceId:
        if !std.isString(ServiceId) then (error 'ServiceId must be a string')
        else if std.isEmpty(ServiceId) then (error 'ServiceId must be not empty')
        else if std.length(ServiceId) < 21 then error ('ServiceId should have at least 21 characters')
        else if std.length(ServiceId) > 21 then error ('ServiceId should have not more than 21 characters')
        else ServiceId,
    },
  },
  setServiceIdentifier(ServiceIdentifier): {
    Properties+::: {
      ServiceIdentifier:
        if !std.isString(ServiceIdentifier) then (error 'ServiceIdentifier must be a string')
        else if std.isEmpty(ServiceIdentifier) then (error 'ServiceIdentifier must be not empty')
        else if std.length(ServiceIdentifier) < 21 then error ('ServiceIdentifier should have at least 21 characters')
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
