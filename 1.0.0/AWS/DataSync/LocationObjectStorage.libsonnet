{
  new(
    AgentArns,
  ): {
    local base = self,
    Properties: {
      AgentArns: (if std.isArray(AgentArns) then AgentArns else [AgentArns]),
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::DataSync::LocationObjectStorage',
  },
  withAccessKey(AccessKey): {
    assert std.isString(AccessKey) : 'AccessKey must be a string',
    Properties+::: {
      AccessKey: AccessKey,
    },
  },
  withBucketName(BucketName): {
    assert std.isString(BucketName) : 'BucketName must be a string',
    Properties+::: {
      BucketName: BucketName,
    },
  },
  withSecretKey(SecretKey): {
    assert std.isString(SecretKey) : 'SecretKey must be a string',
    Properties+::: {
      SecretKey: SecretKey,
    },
  },
  withServerCertificate(ServerCertificate): {
    assert std.isString(ServerCertificate) : 'ServerCertificate must be a string',
    Properties+::: {
      ServerCertificate: ServerCertificate,
    },
  },
  withServerHostname(ServerHostname): {
    assert std.isString(ServerHostname) : 'ServerHostname must be a string',
    Properties+::: {
      ServerHostname: ServerHostname,
    },
  },
  withServerPort(ServerPort): {
    assert std.isNumber(ServerPort) : 'ServerPort must be a number',
    Properties+::: {
      ServerPort: ServerPort,
    },
  },
  withServerProtocol(ServerProtocol): {
    assert std.isString(ServerProtocol) : 'ServerProtocol must be a string',
    Properties+::: {
      ServerProtocol: ServerProtocol,
    },
  },
  withSubdirectory(Subdirectory): {
    assert std.isString(Subdirectory) : 'Subdirectory must be a string',
    Properties+::: {
      Subdirectory: Subdirectory,
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
  withLocationArn(LocationArn): {
    assert std.isString(LocationArn) : 'LocationArn must be a string',
    Properties+::: {
      LocationArn: LocationArn,
    },
  },
  withLocationUri(LocationUri): {
    assert std.isString(LocationUri) : 'LocationUri must be a string',
    Properties+::: {
      LocationUri: LocationUri,
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
