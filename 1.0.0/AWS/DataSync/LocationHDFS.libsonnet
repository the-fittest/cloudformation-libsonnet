{
  new(
    NameNodes,
    AuthenticationType,
    AgentArns,
  ): {
    local base = self,
    Properties: {
      NameNodes:
        if !std.isArray(NameNodes) then (error 'NameNodes must be an array')
        else if std.length(NameNodes) < 1 then error ('NameNodes cannot have less than 1 items')
        else NameNodes,
      AuthenticationType:
        if !std.isString(AuthenticationType) then (error 'AuthenticationType must be a string')
        else if std.isEmpty(AuthenticationType) then (error 'AuthenticationType must be not empty')
        else if AuthenticationType != 'SIMPLE' && AuthenticationType != 'KERBEROS' then (error "AuthenticationType should be 'SIMPLE' or 'KERBEROS'")
        else AuthenticationType,
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
    Type: 'AWS::DataSync::LocationHDFS',
  },
  setBlockSize(BlockSize): {
    Properties+::: {
      BlockSize:
        if !std.isNumber(BlockSize) then (error 'BlockSize must be an number')
        else if BlockSize < 1048576 then error ('BlockSize should be at least 1048576')
        else if BlockSize > 1073741824 then error ('BlockSize should be not more than 1073741824')
        else BlockSize,
    },
  },
  setReplicationFactor(ReplicationFactor): {
    Properties+::: {
      ReplicationFactor:
        if !std.isNumber(ReplicationFactor) then (error 'ReplicationFactor must be an number')
        else if ReplicationFactor < 1 then error ('ReplicationFactor should be at least 1')
        else if ReplicationFactor > 512 then error ('ReplicationFactor should be not more than 512')
        else ReplicationFactor,
    },
  },
  setKmsKeyProviderUri(KmsKeyProviderUri): {
    Properties+::: {
      KmsKeyProviderUri:
        if !std.isString(KmsKeyProviderUri) then (error 'KmsKeyProviderUri must be a string')
        else if std.isEmpty(KmsKeyProviderUri) then (error 'KmsKeyProviderUri must be not empty')
        else if std.length(KmsKeyProviderUri) < 1 then error ('KmsKeyProviderUri should have at least 1 characters')
        else if std.length(KmsKeyProviderUri) > 255 then error ('KmsKeyProviderUri should have not more than 255 characters')
        else KmsKeyProviderUri,
    },
  },
  setQopConfiguration(QopConfiguration): {
    Properties+::: {
      QopConfiguration:
        if !std.isObject(QopConfiguration) then (error 'QopConfiguration must be an object')
        else QopConfiguration,
    },
  },
  setSimpleUser(SimpleUser): {
    Properties+::: {
      SimpleUser:
        if !std.isString(SimpleUser) then (error 'SimpleUser must be a string')
        else if std.isEmpty(SimpleUser) then (error 'SimpleUser must be not empty')
        else if std.length(SimpleUser) < 1 then error ('SimpleUser should have at least 1 characters')
        else if std.length(SimpleUser) > 256 then error ('SimpleUser should have not more than 256 characters')
        else SimpleUser,
    },
  },
  setKerberosPrincipal(KerberosPrincipal): {
    Properties+::: {
      KerberosPrincipal:
        if !std.isString(KerberosPrincipal) then (error 'KerberosPrincipal must be a string')
        else if std.isEmpty(KerberosPrincipal) then (error 'KerberosPrincipal must be not empty')
        else if std.length(KerberosPrincipal) < 1 then error ('KerberosPrincipal should have at least 1 characters')
        else if std.length(KerberosPrincipal) > 256 then error ('KerberosPrincipal should have not more than 256 characters')
        else KerberosPrincipal,
    },
  },
  setKerberosKeytab(KerberosKeytab): {
    Properties+::: {
      KerberosKeytab:
        if !std.isString(KerberosKeytab) then (error 'KerberosKeytab must be a string')
        else if std.isEmpty(KerberosKeytab) then (error 'KerberosKeytab must be not empty')
        else if std.length(KerberosKeytab) > 87384 then error ('KerberosKeytab should have not more than 87384 characters')
        else KerberosKeytab,
    },
  },
  setKerberosKrb5Conf(KerberosKrb5Conf): {
    Properties+::: {
      KerberosKrb5Conf:
        if !std.isString(KerberosKrb5Conf) then (error 'KerberosKrb5Conf must be a string')
        else if std.isEmpty(KerberosKrb5Conf) then (error 'KerberosKrb5Conf must be not empty')
        else if std.length(KerberosKrb5Conf) > 174764 then error ('KerberosKrb5Conf should have not more than 174764 characters')
        else KerberosKrb5Conf,
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
  setSubdirectory(Subdirectory): {
    Properties+::: {
      Subdirectory:
        if !std.isString(Subdirectory) then (error 'Subdirectory must be a string')
        else if std.isEmpty(Subdirectory) then (error 'Subdirectory must be not empty')
        else if std.length(Subdirectory) > 4096 then error ('Subdirectory should have not more than 4096 characters')
        else Subdirectory,
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
