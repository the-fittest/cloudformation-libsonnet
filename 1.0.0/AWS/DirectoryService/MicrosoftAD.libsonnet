{
  // AWS DirectoryService MicrosoftAD
  MicrosoftAD: {
    new(
      VpcSettings,
      Name,
      Password,
    ): {
      local base = self,
      Properties: {
        assert std.isObject(VpcSettings) : 'VpcSettings must be an object',
        VpcSettings: VpcSettings,
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
        assert std.isString(Password) : 'Password must be a string',
        Password: Password,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::DirectoryService::MicrosoftAD',
    },
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: {
        Id: Id,
      },
    },
    withAlias(Alias): {
      assert std.isString(Alias) : 'Alias must be a string',
      Properties+::: {
        Alias: Alias,
      },
    },
    withDnsIpAddresses(DnsIpAddresses): {
      Properties+::: {
        DnsIpAddresses: (if std.isArray(DnsIpAddresses) then DnsIpAddresses else [DnsIpAddresses]),
      },
    },
    withDnsIpAddressesMixin(DnsIpAddresses): {
      Properties+::: {
        DnsIpAddresses+: (if std.isArray(DnsIpAddresses) then DnsIpAddresses else [DnsIpAddresses]),
      },
    },
    withCreateAlias(CreateAlias): {
      assert std.isBoolean(CreateAlias) : 'CreateAlias must be a boolean',
      Properties+::: {
        CreateAlias: CreateAlias,
      },
    },
    withEdition(Edition): {
      assert std.isString(Edition) : 'Edition must be a string',
      Properties+::: {
        Edition: Edition,
      },
    },
    withEnableSso(EnableSso): {
      assert std.isBoolean(EnableSso) : 'EnableSso must be a boolean',
      Properties+::: {
        EnableSso: EnableSso,
      },
    },
    withShortName(ShortName): {
      assert std.isString(ShortName) : 'ShortName must be a string',
      Properties+::: {
        ShortName: ShortName,
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
