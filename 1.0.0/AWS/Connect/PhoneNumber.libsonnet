{
  new(
    TargetArn,
  ): {
    local base = self,
    Properties: {
      TargetArn:
        if !std.isString(TargetArn) then (error 'TargetArn must be a string')
        else if std.isEmpty(TargetArn) then (error 'TargetArn must be not empty')
        else TargetArn,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Connect::PhoneNumber',
  },
  setPhoneNumberArn(PhoneNumberArn): {
    Properties+::: {
      PhoneNumberArn:
        if !std.isString(PhoneNumberArn) then (error 'PhoneNumberArn must be a string')
        else if std.isEmpty(PhoneNumberArn) then (error 'PhoneNumberArn must be not empty')
        else PhoneNumberArn,
    },
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else if std.length(Description) < 1 then error ('Description should have at least 1 characters')
        else if std.length(Description) > 500 then error ('Description should have not more than 500 characters')
        else Description,
    },
  },
  setType(Type): {
    Properties+::: {
      Type:
        if !std.isString(Type) then (error 'Type must be a string')
        else if std.isEmpty(Type) then (error 'Type must be not empty')
        else Type,
    },
  },
  setCountryCode(CountryCode): {
    Properties+::: {
      CountryCode:
        if !std.isString(CountryCode) then (error 'CountryCode must be a string')
        else if std.isEmpty(CountryCode) then (error 'CountryCode must be not empty')
        else CountryCode,
    },
  },
  setPrefix(Prefix): {
    Properties+::: {
      Prefix:
        if !std.isString(Prefix) then (error 'Prefix must be a string')
        else if std.isEmpty(Prefix) then (error 'Prefix must be not empty')
        else Prefix,
    },
  },
  setAddress(Address): {
    Properties+::: {
      Address:
        if !std.isString(Address) then (error 'Address must be a string')
        else if std.isEmpty(Address) then (error 'Address must be not empty')
        else Address,
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
  setSourcePhoneNumberArn(SourcePhoneNumberArn): {
    Properties+::: {
      SourcePhoneNumberArn:
        if !std.isString(SourcePhoneNumberArn) then (error 'SourcePhoneNumberArn must be a string')
        else if std.isEmpty(SourcePhoneNumberArn) then (error 'SourcePhoneNumberArn must be not empty')
        else SourcePhoneNumberArn,
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
