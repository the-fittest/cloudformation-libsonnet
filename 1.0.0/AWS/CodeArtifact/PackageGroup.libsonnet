{
  new(
    Pattern,
    DomainName,
  ): {
    local base = self,
    Properties: {
      Pattern:
        if !std.isString(Pattern) then (error 'Pattern must be a string')
        else if std.isEmpty(Pattern) then (error 'Pattern must be not empty')
        else if std.length(Pattern) < 2 then error ('Pattern should have at least 2 characters')
        else if std.length(Pattern) > 520 then error ('Pattern should have not more than 520 characters')
        else Pattern,
      DomainName:
        if !std.isString(DomainName) then (error 'DomainName must be a string')
        else if std.isEmpty(DomainName) then (error 'DomainName must be not empty')
        else if std.length(DomainName) < 2 then error ('DomainName should have at least 2 characters')
        else if std.length(DomainName) > 50 then error ('DomainName should have not more than 50 characters')
        else DomainName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::CodeArtifact::PackageGroup',
  },
  setDomainOwner(DomainOwner): {
    Properties+::: {
      DomainOwner:
        if !std.isString(DomainOwner) then (error 'DomainOwner must be a string')
        else if std.isEmpty(DomainOwner) then (error 'DomainOwner must be not empty')
        else DomainOwner,
    },
  },
  setContactInfo(ContactInfo): {
    Properties+::: {
      ContactInfo:
        if !std.isString(ContactInfo) then (error 'ContactInfo must be a string')
        else if std.isEmpty(ContactInfo) then (error 'ContactInfo must be not empty')
        else if std.length(ContactInfo) > 1000 then error ('ContactInfo should have not more than 1000 characters')
        else ContactInfo,
    },
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else if std.length(Description) > 1000 then error ('Description should have not more than 1000 characters')
        else Description,
    },
  },
  setOriginConfiguration(OriginConfiguration): {
    Properties+::: {
      OriginConfiguration:
        if !std.isObject(OriginConfiguration) then (error 'OriginConfiguration must be an object')
        else if !std.objectHas(OriginConfiguration, 'Restrictions') then (error ' have attribute Restrictions')
        else OriginConfiguration,
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
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else if std.length(Arn) < 1 then error ('Arn should have at least 1 characters')
        else if std.length(Arn) > 2048 then error ('Arn should have not more than 2048 characters')
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
