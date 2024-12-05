{
  new(
    IpamScopeId,
    AddressFamily,
  ): {
    local base = self,
    Properties: {
      IpamScopeId:
        if !std.isString(IpamScopeId) then (error 'IpamScopeId must be a string')
        else if std.isEmpty(IpamScopeId) then (error 'IpamScopeId must be not empty')
        else IpamScopeId,
      AddressFamily:
        if !std.isString(AddressFamily) then (error 'AddressFamily must be a string')
        else if std.isEmpty(AddressFamily) then (error 'AddressFamily must be not empty')
        else AddressFamily,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::EC2::IPAMPool',
  },
  setIpamPoolId(IpamPoolId): {
    Properties+::: {
      IpamPoolId:
        if !std.isString(IpamPoolId) then (error 'IpamPoolId must be a string')
        else if std.isEmpty(IpamPoolId) then (error 'IpamPoolId must be not empty')
        else IpamPoolId,
    },
  },
  setAllocationMinNetmaskLength(AllocationMinNetmaskLength): {
    Properties+::: {
      AllocationMinNetmaskLength:
        if !std.isNumber(AllocationMinNetmaskLength) then (error 'AllocationMinNetmaskLength must be an number')
        else AllocationMinNetmaskLength,
    },
  },
  setAllocationDefaultNetmaskLength(AllocationDefaultNetmaskLength): {
    Properties+::: {
      AllocationDefaultNetmaskLength:
        if !std.isNumber(AllocationDefaultNetmaskLength) then (error 'AllocationDefaultNetmaskLength must be an number')
        else AllocationDefaultNetmaskLength,
    },
  },
  setAllocationMaxNetmaskLength(AllocationMaxNetmaskLength): {
    Properties+::: {
      AllocationMaxNetmaskLength:
        if !std.isNumber(AllocationMaxNetmaskLength) then (error 'AllocationMaxNetmaskLength must be an number')
        else AllocationMaxNetmaskLength,
    },
  },
  setAllocationResourceTags(AllocationResourceTags): {
    Properties+::: {
      AllocationResourceTags:
        if !std.isArray(AllocationResourceTags) then (error 'AllocationResourceTags must be an array')
        else AllocationResourceTags,
    },
  },
  setAllocationResourceTagsMixin(AllocationResourceTags): {
    Properties+::: {
      AllocationResourceTags+: AllocationResourceTags,
    },
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else Arn,
    },
  },
  setAutoImport(AutoImport): {
    Properties+::: {
      AutoImport:
        if !std.isBoolean(AutoImport) then (error 'AutoImport must be a boolean') else AutoImport,
    },
  },
  setAwsService(AwsService): {
    Properties+::: {
      AwsService:
        if !std.isString(AwsService) then (error 'AwsService must be a string')
        else if std.isEmpty(AwsService) then (error 'AwsService must be not empty')
        else if AwsService != 'ec2' then (error "AwsService should be 'ec2'")
        else AwsService,
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
  setIpamScopeArn(IpamScopeArn): {
    Properties+::: {
      IpamScopeArn:
        if !std.isString(IpamScopeArn) then (error 'IpamScopeArn must be a string')
        else if std.isEmpty(IpamScopeArn) then (error 'IpamScopeArn must be not empty')
        else IpamScopeArn,
    },
  },
  setIpamScopeType(IpamScopeType): {
    Properties+::: {
      IpamScopeType:
        if !std.isString(IpamScopeType) then (error 'IpamScopeType must be a string')
        else if std.isEmpty(IpamScopeType) then (error 'IpamScopeType must be not empty')
        else if IpamScopeType != 'public' && IpamScopeType != 'private' then (error "IpamScopeType should be 'public' or 'private'")
        else IpamScopeType,
    },
  },
  setIpamArn(IpamArn): {
    Properties+::: {
      IpamArn:
        if !std.isString(IpamArn) then (error 'IpamArn must be a string')
        else if std.isEmpty(IpamArn) then (error 'IpamArn must be not empty')
        else IpamArn,
    },
  },
  setLocale(Locale): {
    Properties+::: {
      Locale:
        if !std.isString(Locale) then (error 'Locale must be a string')
        else if std.isEmpty(Locale) then (error 'Locale must be not empty')
        else Locale,
    },
  },
  setPoolDepth(PoolDepth): {
    Properties+::: {
      PoolDepth:
        if !std.isNumber(PoolDepth) then (error 'PoolDepth must be an number')
        else PoolDepth,
    },
  },
  setProvisionedCidrs(ProvisionedCidrs): {
    Properties+::: {
      ProvisionedCidrs:
        if !std.isArray(ProvisionedCidrs) then (error 'ProvisionedCidrs must be an array')
        else ProvisionedCidrs,
    },
  },
  setProvisionedCidrsMixin(ProvisionedCidrs): {
    Properties+::: {
      ProvisionedCidrs+: ProvisionedCidrs,
    },
  },
  setPublicIpSource(PublicIpSource): {
    Properties+::: {
      PublicIpSource:
        if !std.isString(PublicIpSource) then (error 'PublicIpSource must be a string')
        else if std.isEmpty(PublicIpSource) then (error 'PublicIpSource must be not empty')
        else if PublicIpSource != 'byoip' && PublicIpSource != 'amazon' then (error "PublicIpSource should be 'byoip' or 'amazon'")
        else PublicIpSource,
    },
  },
  setPubliclyAdvertisable(PubliclyAdvertisable): {
    Properties+::: {
      PubliclyAdvertisable:
        if !std.isBoolean(PubliclyAdvertisable) then (error 'PubliclyAdvertisable must be a boolean') else PubliclyAdvertisable,
    },
  },
  setSourceIpamPoolId(SourceIpamPoolId): {
    Properties+::: {
      SourceIpamPoolId:
        if !std.isString(SourceIpamPoolId) then (error 'SourceIpamPoolId must be a string')
        else if std.isEmpty(SourceIpamPoolId) then (error 'SourceIpamPoolId must be not empty')
        else SourceIpamPoolId,
    },
  },
  setSourceResource(SourceResource): {
    Properties+::: {
      SourceResource:
        if !std.isObject(SourceResource) then (error 'SourceResource must be an object')
        else if !std.objectHas(SourceResource, 'ResourceId') then (error ' have attribute ResourceId')
        else if !std.objectHas(SourceResource, 'ResourceType') then (error ' have attribute ResourceType')
        else if !std.objectHas(SourceResource, 'ResourceRegion') then (error ' have attribute ResourceRegion')
        else if !std.objectHas(SourceResource, 'ResourceOwner') then (error ' have attribute ResourceOwner')
        else SourceResource,
    },
  },
  setState(State): {
    Properties+::: {
      State:
        if !std.isString(State) then (error 'State must be a string')
        else if std.isEmpty(State) then (error 'State must be not empty')
        else if State != 'create-in-progress' && State != 'create-complete' && State != 'modify-in-progress' && State != 'modify-complete' && State != 'delete-in-progress' && State != 'delete-complete' then (error "State should be 'create-in-progress' or 'create-complete' or 'modify-in-progress' or 'modify-complete' or 'delete-in-progress' or 'delete-complete'")
        else State,
    },
  },
  setStateMessage(StateMessage): {
    Properties+::: {
      StateMessage:
        if !std.isString(StateMessage) then (error 'StateMessage must be a string')
        else if std.isEmpty(StateMessage) then (error 'StateMessage must be not empty')
        else StateMessage,
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
