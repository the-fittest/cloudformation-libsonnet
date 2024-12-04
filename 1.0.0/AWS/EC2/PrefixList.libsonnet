{
  // AWS EC2 PrefixList
  PrefixList: {
    new(
      PrefixListName,
      AddressFamily,
    ): {
      local base = self,
      Properties: {
        assert std.isString(PrefixListName) : 'PrefixListName must be a string',
        PrefixListName: PrefixListName,
        assert std.isString(AddressFamily) : 'AddressFamily must be a string',
        AddressFamily: AddressFamily,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::EC2::PrefixList',
    },
    withPrefixListId(PrefixListId): {
      assert std.isString(PrefixListId) : 'PrefixListId must be a string',
      Properties+::: {
        PrefixListId: PrefixListId,
      },
    },
    withOwnerId(OwnerId): {
      assert std.isString(OwnerId) : 'OwnerId must be a string',
      Properties+::: {
        OwnerId: OwnerId,
      },
    },
    withMaxEntries(MaxEntries): {
      assert std.isNumber(MaxEntries) : 'MaxEntries must be a number',
      Properties+::: {
        MaxEntries: MaxEntries,
      },
    },
    withVersion(Version): {
      assert std.isNumber(Version) : 'Version must be a number',
      Properties+::: {
        Version: Version,
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
    withEntries(Entries): {
      Properties+::: {
        Entries: (if std.isArray(Entries) then Entries else [Entries]),
      },
    },
    withEntriesMixin(Entries): {
      Properties+::: {
        Entries+: (if std.isArray(Entries) then Entries else [Entries]),
      },
    },
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: {
        Arn: Arn,
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
