{
  new(
    PackagingGroupId,
    Id,
  ): {
    local base = self,
    Properties: {
      PackagingGroupId:
        if !std.isString(PackagingGroupId) then (error 'PackagingGroupId must be a string')
        else if std.isEmpty(PackagingGroupId) then (error 'PackagingGroupId must be not empty')
        else PackagingGroupId,
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else Id,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::MediaPackage::PackagingConfiguration',
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else Arn,
    },
  },
  setCmafPackage(CmafPackage): {
    Properties+::: {
      CmafPackage:
        if !std.isObject(CmafPackage) then (error 'CmafPackage must be an object')
        else if !std.objectHas(CmafPackage, 'HlsManifests') then (error ' have attribute HlsManifests')
        else CmafPackage,
    },
  },
  setDashPackage(DashPackage): {
    Properties+::: {
      DashPackage:
        if !std.isObject(DashPackage) then (error 'DashPackage must be an object')
        else if !std.objectHas(DashPackage, 'DashManifests') then (error ' have attribute DashManifests')
        else DashPackage,
    },
  },
  setHlsPackage(HlsPackage): {
    Properties+::: {
      HlsPackage:
        if !std.isObject(HlsPackage) then (error 'HlsPackage must be an object')
        else if !std.objectHas(HlsPackage, 'HlsManifests') then (error ' have attribute HlsManifests')
        else HlsPackage,
    },
  },
  setMssPackage(MssPackage): {
    Properties+::: {
      MssPackage:
        if !std.isObject(MssPackage) then (error 'MssPackage must be an object')
        else if !std.objectHas(MssPackage, 'MssManifests') then (error ' have attribute MssManifests')
        else MssPackage,
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
