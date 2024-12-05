{
  new(
    ServerConfiguration,
    SystemType,
    AgentArns,
  ): {
    local base = self,
    Properties: {
      ServerConfiguration:
        if !std.isObject(ServerConfiguration) then (error 'ServerConfiguration must be an object')
        else if !std.objectHas(ServerConfiguration, 'ServerHostname') then (error ' have attribute ServerHostname')
        else ServerConfiguration,
      SystemType:
        if !std.isString(SystemType) then (error 'SystemType must be a string')
        else if std.isEmpty(SystemType) then (error 'SystemType must be not empty')
        else if SystemType != 'NetAppONTAP' then (error "SystemType should be 'NetAppONTAP'")
        else SystemType,
      AgentArns:
        if !std.isArray(AgentArns) then (error 'AgentArns must be an array')
        else if std.length(AgentArns) < 1 then error ('AgentArns cannot have less than 1 items')
        else if std.length(AgentArns) > 1 then error ('AgentArns cannot have more than 1 items')
        else AgentArns,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::DataSync::StorageSystem',
  },
  setServerCredentials(ServerCredentials): {
    Properties+::: {
      ServerCredentials:
        if !std.isObject(ServerCredentials) then (error 'ServerCredentials must be an object')
        else if !std.objectHas(ServerCredentials, 'Username') then (error ' have attribute Username')
        else if !std.objectHas(ServerCredentials, 'Password') then (error ' have attribute Password')
        else ServerCredentials,
    },
  },
  setSecretsManagerArn(SecretsManagerArn): {
    Properties+::: {
      SecretsManagerArn:
        if !std.isString(SecretsManagerArn) then (error 'SecretsManagerArn must be a string')
        else if std.isEmpty(SecretsManagerArn) then (error 'SecretsManagerArn must be not empty')
        else if std.length(SecretsManagerArn) > 2048 then error ('SecretsManagerArn should have not more than 2048 characters')
        else SecretsManagerArn,
    },
  },
  setCloudWatchLogGroupArn(CloudWatchLogGroupArn): {
    Properties+::: {
      CloudWatchLogGroupArn:
        if !std.isString(CloudWatchLogGroupArn) then (error 'CloudWatchLogGroupArn must be a string')
        else if std.isEmpty(CloudWatchLogGroupArn) then (error 'CloudWatchLogGroupArn must be not empty')
        else if std.length(CloudWatchLogGroupArn) > 562 then error ('CloudWatchLogGroupArn should have not more than 562 characters')
        else CloudWatchLogGroupArn,
    },
  },
  setName(Name): {
    Properties+::: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else if std.length(Name) < 1 then error ('Name should have at least 1 characters')
        else if std.length(Name) > 256 then error ('Name should have not more than 256 characters')
        else Name,
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
  setTagsMixin(Tags): {
    Properties+::: {
      Tags+: Tags,
    },
  },
  setStorageSystemArn(StorageSystemArn): {
    Properties+::: {
      StorageSystemArn:
        if !std.isString(StorageSystemArn) then (error 'StorageSystemArn must be a string')
        else if std.isEmpty(StorageSystemArn) then (error 'StorageSystemArn must be not empty')
        else if std.length(StorageSystemArn) > 128 then error ('StorageSystemArn should have not more than 128 characters')
        else StorageSystemArn,
    },
  },
  setConnectivityStatus(ConnectivityStatus): {
    Properties+::: {
      ConnectivityStatus:
        if !std.isString(ConnectivityStatus) then (error 'ConnectivityStatus must be a string')
        else if std.isEmpty(ConnectivityStatus) then (error 'ConnectivityStatus must be not empty')
        else if ConnectivityStatus != 'PASS' && ConnectivityStatus != 'FAIL' && ConnectivityStatus != 'UNKNOWN' then (error "ConnectivityStatus should be 'PASS' or 'FAIL' or 'UNKNOWN'")
        else ConnectivityStatus,
    },
  },
  setDependsOn(DependsOn): {
    Properties+::: {
      DependsOn: DependsOn,
    },
  },
  setDependsOnMixin(DependsOn): {
    Properties+::: {
      DependsOn+: DependsOn,
    },
  },
  setCreationPolicy(CreationPolicy): {
    Properties+::: {
      CreationPolicy: CreationPolicy,
    },
  },
  setCreationPolicyMixin(CreationPolicy): {
    Properties+::: {
      CreationPolicy+: CreationPolicy,
    },
  },
  setDeletionPolicy(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy: DeletionPolicy,
    },
  },
  setDeletionPolicyMixin(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy+: DeletionPolicy,
    },
  },
  setUpdatePolicy(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy: UpdatePolicy,
    },
  },
  setUpdatePolicyMixin(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy+: UpdatePolicy,
    },
  },
  setUpdateReplacePolicy(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy: UpdateReplacePolicy,
    },
  },
  setUpdateReplacePolicyMixin(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy+: UpdateReplacePolicy,
    },
  },
  setMetadata(Metadata): {
    Properties+::: {
      Metadata: Metadata,
    },
  },
  setMetadataMixin(Metadata): {
    Properties+::: {
      Metadata+: Metadata,
    },
  },
}
