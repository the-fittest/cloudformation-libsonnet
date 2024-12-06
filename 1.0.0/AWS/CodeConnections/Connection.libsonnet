{
  new(
    ConnectionName,
  ): {
    local base = self,
    Properties: {
      ConnectionName:
        if !std.isString(ConnectionName) then (error 'ConnectionName must be a string')
        else if std.isEmpty(ConnectionName) then (error 'ConnectionName must be not empty')
        else if std.length(ConnectionName) < 1 then error ('ConnectionName should have at least 1 characters')
        else if std.length(ConnectionName) > 32 then error ('ConnectionName should have not more than 32 characters')
        else ConnectionName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::CodeConnections::Connection',
  },
  setConnectionArn(ConnectionArn): {
    Properties+::: {
      ConnectionArn:
        if !std.isString(ConnectionArn) then (error 'ConnectionArn must be a string')
        else if std.isEmpty(ConnectionArn) then (error 'ConnectionArn must be not empty')
        else if std.length(ConnectionArn) > 256 then error ('ConnectionArn should have not more than 256 characters')
        else ConnectionArn,
    },
  },
  setConnectionStatus(ConnectionStatus): {
    Properties+::: {
      ConnectionStatus:
        if !std.isString(ConnectionStatus) then (error 'ConnectionStatus must be a string')
        else if std.isEmpty(ConnectionStatus) then (error 'ConnectionStatus must be not empty')
        else ConnectionStatus,
    },
  },
  setOwnerAccountId(OwnerAccountId): {
    Properties+::: {
      OwnerAccountId:
        if !std.isString(OwnerAccountId) then (error 'OwnerAccountId must be a string')
        else if std.isEmpty(OwnerAccountId) then (error 'OwnerAccountId must be not empty')
        else if std.length(OwnerAccountId) < 12 then error ('OwnerAccountId should have at least 12 characters')
        else if std.length(OwnerAccountId) > 12 then error ('OwnerAccountId should have not more than 12 characters')
        else OwnerAccountId,
    },
  },
  setProviderType(ProviderType): {
    Properties+::: {
      ProviderType:
        if !std.isString(ProviderType) then (error 'ProviderType must be a string')
        else if std.isEmpty(ProviderType) then (error 'ProviderType must be not empty')
        else ProviderType,
    },
  },
  setHostArn(HostArn): {
    Properties+::: {
      HostArn:
        if !std.isString(HostArn) then (error 'HostArn must be a string')
        else if std.isEmpty(HostArn) then (error 'HostArn must be not empty')
        else if std.length(HostArn) > 256 then error ('HostArn should have not more than 256 characters')
        else HostArn,
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
