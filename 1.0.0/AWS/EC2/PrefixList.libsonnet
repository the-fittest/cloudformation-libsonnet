{
  new(
    PrefixListName,
    AddressFamily,
  ): {
    local base = self,
    Properties: {
      PrefixListName:
        if !std.isString(PrefixListName) then (error 'PrefixListName must be a string')
        else if std.isEmpty(PrefixListName) then (error 'PrefixListName must be not empty')
        else if std.length(PrefixListName) < 1 then error ('PrefixListName should have at least 1 characters')
        else if std.length(PrefixListName) > 255 then error ('PrefixListName should have not more than 255 characters')
        else PrefixListName,
      AddressFamily:
        if !std.isString(AddressFamily) then (error 'AddressFamily must be a string')
        else if std.isEmpty(AddressFamily) then (error 'AddressFamily must be not empty')
        else if AddressFamily != 'IPv4' && AddressFamily != 'IPv6' then (error "AddressFamily should be 'IPv4' or 'IPv6'")
        else AddressFamily,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::EC2::PrefixList',
  },
  setPrefixListId(PrefixListId): {
    Properties+::: {
      PrefixListId:
        if !std.isString(PrefixListId) then (error 'PrefixListId must be a string')
        else if std.isEmpty(PrefixListId) then (error 'PrefixListId must be not empty')
        else PrefixListId,
    },
  },
  setOwnerId(OwnerId): {
    Properties+::: {
      OwnerId:
        if !std.isString(OwnerId) then (error 'OwnerId must be a string')
        else if std.isEmpty(OwnerId) then (error 'OwnerId must be not empty')
        else OwnerId,
    },
  },
  setMaxEntries(MaxEntries): {
    Properties+::: {
      MaxEntries:
        if !std.isNumber(MaxEntries) then (error 'MaxEntries must be an number')
        else if MaxEntries < 1 then error ('MaxEntries should be at least 1')
        else MaxEntries,
    },
  },
  setVersion(Version): {
    Properties+::: {
      Version:
        if !std.isNumber(Version) then (error 'Version must be an number')
        else Version,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else Tags,
    },
  },
  setTagsMixin(Tags): {
    Properties+::: {
      Tags+: Tags,
    },
  },
  setEntries(Entries): {
    Properties+::: {
      Entries:
        if !std.isArray(Entries) then (error 'Entries must be an array')
        else Entries,
    },
  },
  setEntriesMixin(Entries): {
    Properties+::: {
      Entries+: Entries,
    },
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else Arn,
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
