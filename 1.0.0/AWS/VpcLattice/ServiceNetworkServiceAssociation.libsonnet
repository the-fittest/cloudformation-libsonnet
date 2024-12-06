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
    Type: 'AWS::VpcLattice::ServiceNetworkServiceAssociation',
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
  setCreatedAt(CreatedAt): {
    Properties+::: {
      CreatedAt:
        if !std.isString(CreatedAt) then (error 'CreatedAt must be a string')
        else if std.isEmpty(CreatedAt) then (error 'CreatedAt must be not empty')
        else CreatedAt,
    },
  },
  setDnsEntry(DnsEntry): {
    Properties+::: {
      DnsEntry:
        if !std.isObject(DnsEntry) then (error 'DnsEntry must be an object')
        else DnsEntry,
    },
  },
  setId(Id): {
    Properties+::: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else if std.length(Id) < 17 then error ('Id should have at least 17 characters')
        else if std.length(Id) > 2048 then error ('Id should have not more than 2048 characters')
        else Id,
    },
  },
  setServiceNetworkArn(ServiceNetworkArn): {
    Properties+::: {
      ServiceNetworkArn:
        if !std.isString(ServiceNetworkArn) then (error 'ServiceNetworkArn must be a string')
        else if std.isEmpty(ServiceNetworkArn) then (error 'ServiceNetworkArn must be not empty')
        else if std.length(ServiceNetworkArn) < 20 then error ('ServiceNetworkArn should have at least 20 characters')
        else if std.length(ServiceNetworkArn) > 2048 then error ('ServiceNetworkArn should have not more than 2048 characters')
        else ServiceNetworkArn,
    },
  },
  setServiceNetworkId(ServiceNetworkId): {
    Properties+::: {
      ServiceNetworkId:
        if !std.isString(ServiceNetworkId) then (error 'ServiceNetworkId must be a string')
        else if std.isEmpty(ServiceNetworkId) then (error 'ServiceNetworkId must be not empty')
        else if std.length(ServiceNetworkId) < 20 then error ('ServiceNetworkId should have at least 20 characters')
        else if std.length(ServiceNetworkId) > 20 then error ('ServiceNetworkId should have not more than 20 characters')
        else ServiceNetworkId,
    },
  },
  setServiceNetworkIdentifier(ServiceNetworkIdentifier): {
    Properties+::: {
      ServiceNetworkIdentifier:
        if !std.isString(ServiceNetworkIdentifier) then (error 'ServiceNetworkIdentifier must be a string')
        else if std.isEmpty(ServiceNetworkIdentifier) then (error 'ServiceNetworkIdentifier must be not empty')
        else if std.length(ServiceNetworkIdentifier) < 20 then error ('ServiceNetworkIdentifier should have at least 20 characters')
        else if std.length(ServiceNetworkIdentifier) > 2048 then error ('ServiceNetworkIdentifier should have not more than 2048 characters')
        else ServiceNetworkIdentifier,
    },
  },
  setServiceNetworkName(ServiceNetworkName): {
    Properties+::: {
      ServiceNetworkName:
        if !std.isString(ServiceNetworkName) then (error 'ServiceNetworkName must be a string')
        else if std.isEmpty(ServiceNetworkName) then (error 'ServiceNetworkName must be not empty')
        else if std.length(ServiceNetworkName) < 3 then error ('ServiceNetworkName should have at least 3 characters')
        else if std.length(ServiceNetworkName) > 63 then error ('ServiceNetworkName should have not more than 63 characters')
        else ServiceNetworkName,
    },
  },
  setServiceArn(ServiceArn): {
    Properties+::: {
      ServiceArn:
        if !std.isString(ServiceArn) then (error 'ServiceArn must be a string')
        else if std.isEmpty(ServiceArn) then (error 'ServiceArn must be not empty')
        else if std.length(ServiceArn) < 20 then error ('ServiceArn should have at least 20 characters')
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
        else if std.length(ServiceIdentifier) < 20 then error ('ServiceIdentifier should have at least 20 characters')
        else if std.length(ServiceIdentifier) > 2048 then error ('ServiceIdentifier should have not more than 2048 characters')
        else ServiceIdentifier,
    },
  },
  setServiceName(ServiceName): {
    Properties+::: {
      ServiceName:
        if !std.isString(ServiceName) then (error 'ServiceName must be a string')
        else if std.isEmpty(ServiceName) then (error 'ServiceName must be not empty')
        else if std.length(ServiceName) < 3 then error ('ServiceName should have at least 3 characters')
        else if std.length(ServiceName) > 40 then error ('ServiceName should have not more than 40 characters')
        else ServiceName,
    },
  },
  setStatus(Status): {
    Properties+::: {
      Status:
        if !std.isString(Status) then (error 'Status must be a string')
        else if std.isEmpty(Status) then (error 'Status must be not empty')
        else if Status != 'CREATE_IN_PROGRESS' && Status != 'ACTIVE' && Status != 'DELETE_IN_PROGRESS' && Status != 'CREATE_FAILED' && Status != 'DELETE_FAILED' then (error "Status should be 'CREATE_IN_PROGRESS' or 'ACTIVE' or 'DELETE_IN_PROGRESS' or 'CREATE_FAILED' or 'DELETE_FAILED'")
        else Status,
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
