{
  new(
    DomainName,
    ObjectTypeName,
    Description,
  ): {
    local base = self,
    Properties: {
      DomainName:
        if !std.isString(DomainName) then (error 'DomainName must be a string')
        else if std.isEmpty(DomainName) then (error 'DomainName must be not empty')
        else if std.length(DomainName) < 1 then error ('DomainName should have at least 1 characters')
        else if std.length(DomainName) > 64 then error ('DomainName should have not more than 64 characters')
        else DomainName,
      ObjectTypeName:
        if !std.isString(ObjectTypeName) then (error 'ObjectTypeName must be a string')
        else if std.isEmpty(ObjectTypeName) then (error 'ObjectTypeName must be not empty')
        else if std.length(ObjectTypeName) < 1 then error ('ObjectTypeName should have at least 1 characters')
        else if std.length(ObjectTypeName) > 255 then error ('ObjectTypeName should have not more than 255 characters')
        else ObjectTypeName,
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else if std.length(Description) < 1 then error ('Description should have at least 1 characters')
        else if std.length(Description) > 1000 then error ('Description should have not more than 1000 characters')
        else Description,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::CustomerProfiles::ObjectType',
  },
  setAllowProfileCreation(AllowProfileCreation): {
    Properties+::: {
      AllowProfileCreation:
        if !std.isBoolean(AllowProfileCreation) then (error 'AllowProfileCreation must be a boolean') else AllowProfileCreation,
    },
  },
  setEncryptionKey(EncryptionKey): {
    Properties+::: {
      EncryptionKey:
        if !std.isString(EncryptionKey) then (error 'EncryptionKey must be a string')
        else if std.isEmpty(EncryptionKey) then (error 'EncryptionKey must be not empty')
        else if std.length(EncryptionKey) > 255 then error ('EncryptionKey should have not more than 255 characters')
        else EncryptionKey,
    },
  },
  setExpirationDays(ExpirationDays): {
    Properties+::: {
      ExpirationDays:
        if !std.isNumber(ExpirationDays) then (error 'ExpirationDays must be an number')
        else if ExpirationDays < 1 then error ('ExpirationDays should be at least 1')
        else if ExpirationDays > 1098 then error ('ExpirationDays should be not more than 1098')
        else ExpirationDays,
    },
  },
  setFields(Fields): {
    Properties+::: {
      Fields:
        if !std.isArray(Fields) then (error 'Fields must be an array')
        else Fields,
    },
  },
  setFieldsMixin(Fields): {
    Properties+::: {
      Fields+: Fields,
    },
  },
  setKeys(Keys): {
    Properties+::: {
      Keys:
        if !std.isArray(Keys) then (error 'Keys must be an array')
        else Keys,
    },
  },
  setKeysMixin(Keys): {
    Properties+::: {
      Keys+: Keys,
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
  setSourceLastUpdatedTimestampFormat(SourceLastUpdatedTimestampFormat): {
    Properties+::: {
      SourceLastUpdatedTimestampFormat:
        if !std.isString(SourceLastUpdatedTimestampFormat) then (error 'SourceLastUpdatedTimestampFormat must be a string')
        else if std.isEmpty(SourceLastUpdatedTimestampFormat) then (error 'SourceLastUpdatedTimestampFormat must be not empty')
        else if std.length(SourceLastUpdatedTimestampFormat) < 1 then error ('SourceLastUpdatedTimestampFormat should have at least 1 characters')
        else if std.length(SourceLastUpdatedTimestampFormat) > 255 then error ('SourceLastUpdatedTimestampFormat should have not more than 255 characters')
        else SourceLastUpdatedTimestampFormat,
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
  setTemplateId(TemplateId): {
    Properties+::: {
      TemplateId:
        if !std.isString(TemplateId) then (error 'TemplateId must be a string')
        else if std.isEmpty(TemplateId) then (error 'TemplateId must be not empty')
        else if std.length(TemplateId) < 1 then error ('TemplateId should have at least 1 characters')
        else if std.length(TemplateId) > 64 then error ('TemplateId should have not more than 64 characters')
        else TemplateId,
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
