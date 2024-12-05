{
  new(
    AgentArns,
  ): {
    local base = self,
    Properties: {
      AgentArns:
        if !std.isArray(AgentArns) then (error 'AgentArns must be an array')
        else if std.length(AgentArns) < 1 then error ('AgentArns cannot have less than 1 items')
        else if std.length(AgentArns) > 4 then error ('AgentArns cannot have more than 4 items')
        else AgentArns,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::DataSync::LocationObjectStorage',
  },
  setAccessKey(AccessKey): {
    Properties+::: {
      AccessKey:
        if !std.isString(AccessKey) then (error 'AccessKey must be a string')
        else if std.isEmpty(AccessKey) then (error 'AccessKey must be not empty')
        else if std.length(AccessKey) < 1 then error ('AccessKey should have at least 1 characters')
        else if std.length(AccessKey) > 200 then error ('AccessKey should have not more than 200 characters')
        else AccessKey,
    },
  },
  setBucketName(BucketName): {
    Properties+::: {
      BucketName:
        if !std.isString(BucketName) then (error 'BucketName must be a string')
        else if std.isEmpty(BucketName) then (error 'BucketName must be not empty')
        else if std.length(BucketName) < 3 then error ('BucketName should have at least 3 characters')
        else if std.length(BucketName) > 63 then error ('BucketName should have not more than 63 characters')
        else BucketName,
    },
  },
  setSecretKey(SecretKey): {
    Properties+::: {
      SecretKey:
        if !std.isString(SecretKey) then (error 'SecretKey must be a string')
        else if std.isEmpty(SecretKey) then (error 'SecretKey must be not empty')
        else if std.length(SecretKey) < 8 then error ('SecretKey should have at least 8 characters')
        else if std.length(SecretKey) > 200 then error ('SecretKey should have not more than 200 characters')
        else SecretKey,
    },
  },
  setServerCertificate(ServerCertificate): {
    Properties+::: {
      ServerCertificate:
        if !std.isString(ServerCertificate) then (error 'ServerCertificate must be a string')
        else if std.isEmpty(ServerCertificate) then (error 'ServerCertificate must be not empty')
        else if std.length(ServerCertificate) > 32768 then error ('ServerCertificate should have not more than 32768 characters')
        else ServerCertificate,
    },
  },
  setServerHostname(ServerHostname): {
    Properties+::: {
      ServerHostname:
        if !std.isString(ServerHostname) then (error 'ServerHostname must be a string')
        else if std.isEmpty(ServerHostname) then (error 'ServerHostname must be not empty')
        else if std.length(ServerHostname) > 255 then error ('ServerHostname should have not more than 255 characters')
        else ServerHostname,
    },
  },
  setServerPort(ServerPort): {
    Properties+::: {
      ServerPort:
        if !std.isNumber(ServerPort) then (error 'ServerPort must be an number')
        else if ServerPort < 1 then error ('ServerPort should be at least 1')
        else if ServerPort > 65536 then error ('ServerPort should be not more than 65536')
        else ServerPort,
    },
  },
  setServerProtocol(ServerProtocol): {
    Properties+::: {
      ServerProtocol:
        if !std.isString(ServerProtocol) then (error 'ServerProtocol must be a string')
        else if std.isEmpty(ServerProtocol) then (error 'ServerProtocol must be not empty')
        else if ServerProtocol != 'HTTPS' && ServerProtocol != 'HTTP' then (error "ServerProtocol should be 'HTTPS' or 'HTTP'")
        else ServerProtocol,
    },
  },
  setSubdirectory(Subdirectory): {
    Properties+::: {
      Subdirectory:
        if !std.isString(Subdirectory) then (error 'Subdirectory must be a string')
        else if std.isEmpty(Subdirectory) then (error 'Subdirectory must be not empty')
        else if std.length(Subdirectory) > 4096 then error ('Subdirectory should have not more than 4096 characters')
        else Subdirectory,
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
  setLocationArn(LocationArn): {
    Properties+::: {
      LocationArn:
        if !std.isString(LocationArn) then (error 'LocationArn must be a string')
        else if std.isEmpty(LocationArn) then (error 'LocationArn must be not empty')
        else if std.length(LocationArn) > 128 then error ('LocationArn should have not more than 128 characters')
        else LocationArn,
    },
  },
  setLocationUri(LocationUri): {
    Properties+::: {
      LocationUri:
        if !std.isString(LocationUri) then (error 'LocationUri must be a string')
        else if std.isEmpty(LocationUri) then (error 'LocationUri must be not empty')
        else if std.length(LocationUri) > 4356 then error ('LocationUri should have not more than 4356 characters')
        else LocationUri,
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
