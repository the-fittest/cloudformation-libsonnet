{
  // AWS DataSync LocationHDFS
  LocationHDFS: {
    new(
      NameNodes,
      AuthenticationType,
      AgentArns,
    ): {
      local base = self,
      Properties: {
        NameNodes: (if std.isArray(NameNodes) then NameNodes else [NameNodes]),
        assert std.isString(AuthenticationType) : 'AuthenticationType must be a string',
        AuthenticationType: AuthenticationType,
        AgentArns: (if std.isArray(AgentArns) then AgentArns else [AgentArns]),
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::DataSync::LocationHDFS',
    },
    withBlockSize(BlockSize): {
      assert std.isNumber(BlockSize) : 'BlockSize must be a number',
      Properties+::: {
        BlockSize: BlockSize,
      },
    },
    withReplicationFactor(ReplicationFactor): {
      assert std.isNumber(ReplicationFactor) : 'ReplicationFactor must be a number',
      Properties+::: {
        ReplicationFactor: ReplicationFactor,
      },
    },
    withKmsKeyProviderUri(KmsKeyProviderUri): {
      assert std.isString(KmsKeyProviderUri) : 'KmsKeyProviderUri must be a string',
      Properties+::: {
        KmsKeyProviderUri: KmsKeyProviderUri,
      },
    },
    withQopConfiguration(QopConfiguration): {
      assert std.isObject(QopConfiguration) : 'QopConfiguration must be a object',
      Properties+::: {
        QopConfiguration: QopConfiguration,
      },
    },
    withSimpleUser(SimpleUser): {
      assert std.isString(SimpleUser) : 'SimpleUser must be a string',
      Properties+::: {
        SimpleUser: SimpleUser,
      },
    },
    withKerberosPrincipal(KerberosPrincipal): {
      assert std.isString(KerberosPrincipal) : 'KerberosPrincipal must be a string',
      Properties+::: {
        KerberosPrincipal: KerberosPrincipal,
      },
    },
    withKerberosKeytab(KerberosKeytab): {
      assert std.isString(KerberosKeytab) : 'KerberosKeytab must be a string',
      Properties+::: {
        KerberosKeytab: KerberosKeytab,
      },
    },
    withKerberosKrb5Conf(KerberosKrb5Conf): {
      assert std.isString(KerberosKrb5Conf) : 'KerberosKrb5Conf must be a string',
      Properties+::: {
        KerberosKrb5Conf: KerberosKrb5Conf,
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
    withSubdirectory(Subdirectory): {
      assert std.isString(Subdirectory) : 'Subdirectory must be a string',
      Properties+::: {
        Subdirectory: Subdirectory,
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
  },
}
