{
  new(
    DomainId,
    SpaceName,
  ): {
    local base = self,
    Properties: {
      DomainId:
        if !std.isString(DomainId) then (error 'DomainId must be a string')
        else if std.isEmpty(DomainId) then (error 'DomainId must be not empty')
        else if std.length(DomainId) < 1 then error ('DomainId should have at least 1 characters')
        else if std.length(DomainId) > 63 then error ('DomainId should have not more than 63 characters')
        else DomainId,
      SpaceName:
        if !std.isString(SpaceName) then (error 'SpaceName must be a string')
        else if std.isEmpty(SpaceName) then (error 'SpaceName must be not empty')
        else if std.length(SpaceName) < 1 then error ('SpaceName should have at least 1 characters')
        else if std.length(SpaceName) > 63 then error ('SpaceName should have not more than 63 characters')
        else SpaceName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::SageMaker::Space',
  },
  setSpaceArn(SpaceArn): {
    Properties+::: {
      SpaceArn:
        if !std.isString(SpaceArn) then (error 'SpaceArn must be a string')
        else if std.isEmpty(SpaceArn) then (error 'SpaceArn must be not empty')
        else if std.length(SpaceArn) > 256 then error ('SpaceArn should have not more than 256 characters')
        else SpaceArn,
    },
  },
  setSpaceSettings(SpaceSettings): {
    Properties+::: {
      SpaceSettings:
        if !std.isObject(SpaceSettings) then (error 'SpaceSettings must be an object')
        else SpaceSettings,
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
  setOwnershipSettings(OwnershipSettings): {
    Properties+::: {
      OwnershipSettings:
        if !std.isObject(OwnershipSettings) then (error 'OwnershipSettings must be an object')
        else if !std.objectHas(OwnershipSettings, 'OwnerUserProfileName') then (error ' have attribute OwnerUserProfileName')
        else OwnershipSettings,
    },
  },
  setSpaceSharingSettings(SpaceSharingSettings): {
    Properties+::: {
      SpaceSharingSettings:
        if !std.isObject(SpaceSharingSettings) then (error 'SpaceSharingSettings must be an object')
        else if !std.objectHas(SpaceSharingSettings, 'SharingType') then (error ' have attribute SharingType')
        else SpaceSharingSettings,
    },
  },
  setSpaceDisplayName(SpaceDisplayName): {
    Properties+::: {
      SpaceDisplayName:
        if !std.isString(SpaceDisplayName) then (error 'SpaceDisplayName must be a string')
        else if std.isEmpty(SpaceDisplayName) then (error 'SpaceDisplayName must be not empty')
        else if std.length(SpaceDisplayName) > 64 then error ('SpaceDisplayName should have not more than 64 characters')
        else SpaceDisplayName,
    },
  },
  setUrl(Url): {
    Properties+::: {
      Url:
        if !std.isString(Url) then (error 'Url must be a string')
        else if std.isEmpty(Url) then (error 'Url must be not empty')
        else if std.length(Url) > 1024 then error ('Url should have not more than 1024 characters')
        else Url,
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
