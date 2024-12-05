{
  new(
    Id,
    ChannelId,
  ): {
    local base = self,
    Properties: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else if std.length(Id) < 1 then error ('Id should have at least 1 characters')
        else if std.length(Id) > 256 then error ('Id should have not more than 256 characters')
        else Id,
      ChannelId:
        if !std.isString(ChannelId) then (error 'ChannelId must be a string')
        else if std.isEmpty(ChannelId) then (error 'ChannelId must be not empty')
        else ChannelId,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::MediaPackage::OriginEndpoint',
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else Arn,
    },
  },
  setUrl(Url): {
    Properties+::: {
      Url:
        if !std.isString(Url) then (error 'Url must be a string')
        else if std.isEmpty(Url) then (error 'Url must be not empty')
        else Url,
    },
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else Description,
    },
  },
  setWhitelist(Whitelist): {
    Properties+::: {
      Whitelist:
        if !std.isArray(Whitelist) then (error 'Whitelist must be an array')
        else Whitelist,
    },
  },
  setWhitelistMixin(Whitelist): {
    Properties+::: {
      Whitelist+: Whitelist,
    },
  },
  setStartoverWindowSeconds(StartoverWindowSeconds): {
    Properties+::: {
      StartoverWindowSeconds:
        if !std.isNumber(StartoverWindowSeconds) then (error 'StartoverWindowSeconds must be an number')
        else StartoverWindowSeconds,
    },
  },
  setTimeDelaySeconds(TimeDelaySeconds): {
    Properties+::: {
      TimeDelaySeconds:
        if !std.isNumber(TimeDelaySeconds) then (error 'TimeDelaySeconds must be an number')
        else TimeDelaySeconds,
    },
  },
  setManifestName(ManifestName): {
    Properties+::: {
      ManifestName:
        if !std.isString(ManifestName) then (error 'ManifestName must be a string')
        else if std.isEmpty(ManifestName) then (error 'ManifestName must be not empty')
        else ManifestName,
    },
  },
  setOrigination(Origination): {
    Properties+::: {
      Origination:
        if !std.isString(Origination) then (error 'Origination must be a string')
        else if std.isEmpty(Origination) then (error 'Origination must be not empty')
        else if Origination != 'ALLOW' && Origination != 'DENY' then (error "Origination should be 'ALLOW' or 'DENY'")
        else Origination,
    },
  },
  setAuthorization(Authorization): {
    Properties+::: {
      Authorization:
        if !std.isObject(Authorization) then (error 'Authorization must be an object')
        else if !std.objectHas(Authorization, 'SecretsRoleArn') then (error ' have attribute SecretsRoleArn')
        else if !std.objectHas(Authorization, 'CdnIdentifierSecret') then (error ' have attribute CdnIdentifierSecret')
        else Authorization,
    },
  },
  setHlsPackage(HlsPackage): {
    Properties+::: {
      HlsPackage:
        if !std.isObject(HlsPackage) then (error 'HlsPackage must be an object')
        else HlsPackage,
    },
  },
  setDashPackage(DashPackage): {
    Properties+::: {
      DashPackage:
        if !std.isObject(DashPackage) then (error 'DashPackage must be an object')
        else DashPackage,
    },
  },
  setMssPackage(MssPackage): {
    Properties+::: {
      MssPackage:
        if !std.isObject(MssPackage) then (error 'MssPackage must be an object')
        else MssPackage,
    },
  },
  setCmafPackage(CmafPackage): {
    Properties+::: {
      CmafPackage:
        if !std.isObject(CmafPackage) then (error 'CmafPackage must be an object')
        else CmafPackage,
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
