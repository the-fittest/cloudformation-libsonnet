{
  new(
    InvoiceReceiver,
    Name,
    Rule,
  ): {
    local base = self,
    Properties: {
      InvoiceReceiver:
        if !std.isString(InvoiceReceiver) then (error 'InvoiceReceiver must be a string')
        else if std.isEmpty(InvoiceReceiver) then (error 'InvoiceReceiver must be not empty')
        else if std.length(InvoiceReceiver) < 12 then error ('InvoiceReceiver should have at least 12 characters')
        else if std.length(InvoiceReceiver) > 12 then error ('InvoiceReceiver should have not more than 12 characters')
        else InvoiceReceiver,
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else if std.length(Name) < 1 then error ('Name should have at least 1 characters')
        else if std.length(Name) > 50 then error ('Name should have not more than 50 characters')
        else Name,
      Rule:
        if !std.isObject(Rule) then (error 'Rule must be an object')
        else if !std.objectHas(Rule, 'LinkedAccounts') then (error ' have attribute LinkedAccounts')
        else Rule,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Invoicing::InvoiceUnit',
  },
  setInvoiceUnitArn(InvoiceUnitArn): {
    Properties+::: {
      InvoiceUnitArn:
        if !std.isString(InvoiceUnitArn) then (error 'InvoiceUnitArn must be a string')
        else if std.isEmpty(InvoiceUnitArn) then (error 'InvoiceUnitArn must be not empty')
        else if std.length(InvoiceUnitArn) < 1 then error ('InvoiceUnitArn should have at least 1 characters')
        else if std.length(InvoiceUnitArn) > 256 then error ('InvoiceUnitArn should have not more than 256 characters')
        else InvoiceUnitArn,
    },
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else if std.length(Description) > 500 then error ('Description should have not more than 500 characters')
        else Description,
    },
  },
  setTaxInheritanceDisabled(TaxInheritanceDisabled): {
    Properties+::: {
      TaxInheritanceDisabled:
        if !std.isBoolean(TaxInheritanceDisabled) then (error 'TaxInheritanceDisabled must be a boolean') else TaxInheritanceDisabled,
    },
  },
  setLastModified(LastModified): {
    Properties+::: {
      LastModified:
        if !std.isNumber(LastModified) then (error 'LastModified must be an number')
        else LastModified,
    },
  },
  setResourceTags(ResourceTags): {
    Properties+::: {
      ResourceTags:
        if !std.isArray(ResourceTags) then (error 'ResourceTags must be an array')
        else ResourceTags,
    },
  },
  pushResourceTags(ResourceTags): {
    Properties+::: {
      ResourceTags+: ResourceTags,
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
