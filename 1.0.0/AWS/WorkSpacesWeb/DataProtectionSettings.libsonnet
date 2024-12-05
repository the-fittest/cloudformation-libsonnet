{
  new(): {
    local base = self,
    Properties:: {},
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::WorkSpacesWeb::DataProtectionSettings',
  },
  setAdditionalEncryptionContext(AdditionalEncryptionContext): {
    Properties+::: {
      AdditionalEncryptionContext:
        if !std.isObject(AdditionalEncryptionContext) then (error 'AdditionalEncryptionContext must be an object')
        else AdditionalEncryptionContext,
    },
  },
  setAssociatedPortalArns(AssociatedPortalArns): {
    Properties+::: {
      AssociatedPortalArns:
        if !std.isArray(AssociatedPortalArns) then (error 'AssociatedPortalArns must be an array')
        else AssociatedPortalArns,
    },
  },
  setAssociatedPortalArnsMixin(AssociatedPortalArns): {
    Properties+::: {
      AssociatedPortalArns+: AssociatedPortalArns,
    },
  },
  setCreationDate(CreationDate): {
    Properties+::: {
      CreationDate:
        if !std.isString(CreationDate) then (error 'CreationDate must be a string')
        else if std.isEmpty(CreationDate) then (error 'CreationDate must be not empty')
        else CreationDate,
    },
  },
  setCustomerManagedKey(CustomerManagedKey): {
    Properties+::: {
      CustomerManagedKey:
        if !std.isString(CustomerManagedKey) then (error 'CustomerManagedKey must be a string')
        else if std.isEmpty(CustomerManagedKey) then (error 'CustomerManagedKey must be not empty')
        else if std.length(CustomerManagedKey) < 20 then error ('CustomerManagedKey should have at least 20 characters')
        else if std.length(CustomerManagedKey) > 2048 then error ('CustomerManagedKey should have not more than 2048 characters')
        else CustomerManagedKey,
    },
  },
  setDataProtectionSettingsArn(DataProtectionSettingsArn): {
    Properties+::: {
      DataProtectionSettingsArn:
        if !std.isString(DataProtectionSettingsArn) then (error 'DataProtectionSettingsArn must be a string')
        else if std.isEmpty(DataProtectionSettingsArn) then (error 'DataProtectionSettingsArn must be not empty')
        else if std.length(DataProtectionSettingsArn) < 20 then error ('DataProtectionSettingsArn should have at least 20 characters')
        else if std.length(DataProtectionSettingsArn) > 2048 then error ('DataProtectionSettingsArn should have not more than 2048 characters')
        else DataProtectionSettingsArn,
    },
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else if std.length(Description) < 1 then error ('Description should have at least 1 characters')
        else if std.length(Description) > 256 then error ('Description should have not more than 256 characters')
        else Description,
    },
  },
  setDisplayName(DisplayName): {
    Properties+::: {
      DisplayName:
        if !std.isString(DisplayName) then (error 'DisplayName must be a string')
        else if std.isEmpty(DisplayName) then (error 'DisplayName must be not empty')
        else if std.length(DisplayName) < 1 then error ('DisplayName should have at least 1 characters')
        else if std.length(DisplayName) > 64 then error ('DisplayName should have not more than 64 characters')
        else DisplayName,
    },
  },
  setInlineRedactionConfiguration(InlineRedactionConfiguration): {
    Properties+::: {
      InlineRedactionConfiguration:
        if !std.isObject(InlineRedactionConfiguration) then (error 'InlineRedactionConfiguration must be an object')
        else if !std.objectHas(InlineRedactionConfiguration, 'InlineRedactionPatterns') then (error ' have attribute InlineRedactionPatterns')
        else InlineRedactionConfiguration,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else if std.length(Tags) > 200 then error ('Tags cannot have more than 200 items')
        else Tags,
    },
  },
  setTagsMixin(Tags): {
    Properties+::: {
      Tags+: Tags,
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
