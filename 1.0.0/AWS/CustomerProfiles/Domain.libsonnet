{
  new(
    DomainName,
    DefaultExpirationDays,
  ): {
    local base = self,
    Properties: {
      DomainName:
        if !std.isString(DomainName) then (error 'DomainName must be a string')
        else if std.isEmpty(DomainName) then (error 'DomainName must be not empty')
        else if std.length(DomainName) < 1 then error ('DomainName should have at least 1 characters')
        else if std.length(DomainName) > 64 then error ('DomainName should have not more than 64 characters')
        else DomainName,
      DefaultExpirationDays:
        if !std.isNumber(DefaultExpirationDays) then (error 'DefaultExpirationDays must be an number')
        else if DefaultExpirationDays < 1 then error ('DefaultExpirationDays should be at least 1')
        else if DefaultExpirationDays > 1098 then error ('DefaultExpirationDays should be not more than 1098')
        else DefaultExpirationDays,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::CustomerProfiles::Domain',
  },
  setDeadLetterQueueUrl(DeadLetterQueueUrl): {
    Properties+::: {
      DeadLetterQueueUrl:
        if !std.isString(DeadLetterQueueUrl) then (error 'DeadLetterQueueUrl must be a string')
        else if std.isEmpty(DeadLetterQueueUrl) then (error 'DeadLetterQueueUrl must be not empty')
        else if std.length(DeadLetterQueueUrl) > 255 then error ('DeadLetterQueueUrl should have not more than 255 characters')
        else DeadLetterQueueUrl,
    },
  },
  setDefaultEncryptionKey(DefaultEncryptionKey): {
    Properties+::: {
      DefaultEncryptionKey:
        if !std.isString(DefaultEncryptionKey) then (error 'DefaultEncryptionKey must be a string')
        else if std.isEmpty(DefaultEncryptionKey) then (error 'DefaultEncryptionKey must be not empty')
        else if std.length(DefaultEncryptionKey) > 255 then error ('DefaultEncryptionKey should have not more than 255 characters')
        else DefaultEncryptionKey,
    },
  },
  setMatching(Matching): {
    Properties+::: {
      Matching:
        if !std.isObject(Matching) then (error 'Matching must be an object')
        else if !std.objectHas(Matching, 'Enabled') then (error ' have attribute Enabled')
        else Matching,
    },
  },
  setRuleBasedMatching(RuleBasedMatching): {
    Properties+::: {
      RuleBasedMatching:
        if !std.isObject(RuleBasedMatching) then (error 'RuleBasedMatching must be an object')
        else if !std.objectHas(RuleBasedMatching, 'Enabled') then (error ' have attribute Enabled')
        else RuleBasedMatching,
    },
  },
  setStats(Stats): {
    Properties+::: {
      Stats:
        if !std.isObject(Stats) then (error 'Stats must be an object')
        else Stats,
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
  setCreatedAt(CreatedAt): {
    Properties+::: {
      CreatedAt:
        if !std.isString(CreatedAt) then (error 'CreatedAt must be a string')
        else if std.isEmpty(CreatedAt) then (error 'CreatedAt must be not empty')
        else CreatedAt,
    },
  },
  setLastUpdatedAt(LastUpdatedAt): {
    Properties+::: {
      LastUpdatedAt:
        if !std.isString(LastUpdatedAt) then (error 'LastUpdatedAt must be a string')
        else if std.isEmpty(LastUpdatedAt) then (error 'LastUpdatedAt must be not empty')
        else LastUpdatedAt,
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
