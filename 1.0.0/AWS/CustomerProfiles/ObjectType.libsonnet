{
  // AWS CustomerProfiles ObjectType
  ObjectType: {
    new(
      DomainName,
      ObjectTypeName,
      Description,
    ): {
      local base = self,
      Properties: {
        assert std.isString(DomainName) : 'DomainName must be a string',
        DomainName: DomainName,
        assert std.isString(ObjectTypeName) : 'ObjectTypeName must be a string',
        ObjectTypeName: ObjectTypeName,
        assert std.isString(Description) : 'Description must be a string',
        Description: Description,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::CustomerProfiles::ObjectType',
    },
    withAllowProfileCreation(AllowProfileCreation): {
      assert std.isBoolean(AllowProfileCreation) : 'AllowProfileCreation must be a boolean',
      Properties+::: {
        AllowProfileCreation: AllowProfileCreation,
      },
    },
    withEncryptionKey(EncryptionKey): {
      assert std.isString(EncryptionKey) : 'EncryptionKey must be a string',
      Properties+::: {
        EncryptionKey: EncryptionKey,
      },
    },
    withExpirationDays(ExpirationDays): {
      assert std.isNumber(ExpirationDays) : 'ExpirationDays must be a number',
      Properties+::: {
        ExpirationDays: ExpirationDays,
      },
    },
    withFields(Fields): {
      Properties+::: {
        Fields: (if std.isArray(Fields) then Fields else [Fields]),
      },
    },
    withFieldsMixin(Fields): {
      Properties+::: {
        Fields+: (if std.isArray(Fields) then Fields else [Fields]),
      },
    },
    withKeys(Keys): {
      Properties+::: {
        Keys: (if std.isArray(Keys) then Keys else [Keys]),
      },
    },
    withKeysMixin(Keys): {
      Properties+::: {
        Keys+: (if std.isArray(Keys) then Keys else [Keys]),
      },
    },
    withCreatedAt(CreatedAt): {
      assert std.isString(CreatedAt) : 'CreatedAt must be a string',
      Properties+::: {
        CreatedAt: CreatedAt,
      },
    },
    withLastUpdatedAt(LastUpdatedAt): {
      assert std.isString(LastUpdatedAt) : 'LastUpdatedAt must be a string',
      Properties+::: {
        LastUpdatedAt: LastUpdatedAt,
      },
    },
    withSourceLastUpdatedTimestampFormat(SourceLastUpdatedTimestampFormat): {
      assert std.isString(SourceLastUpdatedTimestampFormat) : 'SourceLastUpdatedTimestampFormat must be a string',
      Properties+::: {
        SourceLastUpdatedTimestampFormat: SourceLastUpdatedTimestampFormat,
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
    withTemplateId(TemplateId): {
      assert std.isString(TemplateId) : 'TemplateId must be a string',
      Properties+::: {
        TemplateId: TemplateId,
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
