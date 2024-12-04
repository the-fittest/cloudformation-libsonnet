{
  new(
    ServerConfiguration,
    SystemType,
    AgentArns,
  ): {
    local base = self,
    Properties: {
      assert std.isObject(ServerConfiguration) : 'ServerConfiguration must be an object',
      ServerConfiguration: ServerConfiguration,
      assert std.isString(SystemType) : 'SystemType must be a string',
      SystemType: SystemType,
      AgentArns: (if std.isArray(AgentArns) then AgentArns else [AgentArns]),
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::DataSync::StorageSystem',
  },
  withServerCredentials(ServerCredentials): {
    assert std.isObject(ServerCredentials) : 'ServerCredentials must be a object',
    Properties+::: {
      ServerCredentials: ServerCredentials,
    },
  },
  withSecretsManagerArn(SecretsManagerArn): {
    assert std.isString(SecretsManagerArn) : 'SecretsManagerArn must be a string',
    Properties+::: {
      SecretsManagerArn: SecretsManagerArn,
    },
  },
  withCloudWatchLogGroupArn(CloudWatchLogGroupArn): {
    assert std.isString(CloudWatchLogGroupArn) : 'CloudWatchLogGroupArn must be a string',
    Properties+::: {
      CloudWatchLogGroupArn: CloudWatchLogGroupArn,
    },
  },
  withName(Name): {
    assert std.isString(Name) : 'Name must be a string',
    Properties+::: {
      Name: Name,
    },
  },
  withTags(Tags): {
    Properties+::: {
      Tags: (if std.isArray(Tags) then Tags else [Tags]),
    },
  },
  withTagsMixin(Tags): {
    Properties+::: {
      Tags+: (if std.isArray(Tags) then Tags else [Tags]),
    },
  },
  withStorageSystemArn(StorageSystemArn): {
    assert std.isString(StorageSystemArn) : 'StorageSystemArn must be a string',
    Properties+::: {
      StorageSystemArn: StorageSystemArn,
    },
  },
  withConnectivityStatus(ConnectivityStatus): {
    assert std.isString(ConnectivityStatus) : 'ConnectivityStatus must be a string',
    Properties+::: {
      ConnectivityStatus: ConnectivityStatus,
    },
  },
  withDependsOn(DependsOn): {
    Properties+::: {
      DependsOn: (if std.isArray(DependsOn) then DependsOn else [DependsOn]),
    },
  },
  withDependsOnMixin(DependsOn): {
    Properties+::: {
      DependsOn+: (if std.isArray(DependsOn) then DependsOn else [DependsOn]),
    },
  },
  withCreationPolicy(CreationPolicy): {
    Properties+::: {
      CreationPolicy: (if std.isArray(CreationPolicy) then CreationPolicy else [CreationPolicy]),
    },
  },
  withCreationPolicyMixin(CreationPolicy): {
    Properties+::: {
      CreationPolicy+: (if std.isArray(CreationPolicy) then CreationPolicy else [CreationPolicy]),
    },
  },
  withDeletionPolicy(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy: (if std.isArray(DeletionPolicy) then DeletionPolicy else [DeletionPolicy]),
    },
  },
  withDeletionPolicyMixin(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy+: (if std.isArray(DeletionPolicy) then DeletionPolicy else [DeletionPolicy]),
    },
  },
  withUpdatePolicy(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy: (if std.isArray(UpdatePolicy) then UpdatePolicy else [UpdatePolicy]),
    },
  },
  withUpdatePolicyMixin(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy+: (if std.isArray(UpdatePolicy) then UpdatePolicy else [UpdatePolicy]),
    },
  },
  withUpdateReplacePolicy(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy: (if std.isArray(UpdateReplacePolicy) then UpdateReplacePolicy else [UpdateReplacePolicy]),
    },
  },
  withUpdateReplacePolicyMixin(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy+: (if std.isArray(UpdateReplacePolicy) then UpdateReplacePolicy else [UpdateReplacePolicy]),
    },
  },
  withMetadata(Metadata): {
    Properties+::: {
      Metadata: (if std.isArray(Metadata) then Metadata else [Metadata]),
    },
  },
  withMetadataMixin(Metadata): {
    Properties+::: {
      Metadata+: (if std.isArray(Metadata) then Metadata else [Metadata]),
    },
  },
}
