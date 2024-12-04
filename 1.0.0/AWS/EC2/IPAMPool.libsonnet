{
  new(
    IpamScopeId,
    AddressFamily,
  ): {
    local base = self,
    Properties: {
      assert std.isString(IpamScopeId) : 'IpamScopeId must be a string',
      IpamScopeId: IpamScopeId,
      assert std.isString(AddressFamily) : 'AddressFamily must be a string',
      AddressFamily: AddressFamily,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::EC2::IPAMPool',
  },
  withIpamPoolId(IpamPoolId): {
    assert std.isString(IpamPoolId) : 'IpamPoolId must be a string',
    Properties+::: {
      IpamPoolId: IpamPoolId,
    },
  },
  withAllocationMinNetmaskLength(AllocationMinNetmaskLength): {
    assert std.isNumber(AllocationMinNetmaskLength) : 'AllocationMinNetmaskLength must be a number',
    Properties+::: {
      AllocationMinNetmaskLength: AllocationMinNetmaskLength,
    },
  },
  withAllocationDefaultNetmaskLength(AllocationDefaultNetmaskLength): {
    assert std.isNumber(AllocationDefaultNetmaskLength) : 'AllocationDefaultNetmaskLength must be a number',
    Properties+::: {
      AllocationDefaultNetmaskLength: AllocationDefaultNetmaskLength,
    },
  },
  withAllocationMaxNetmaskLength(AllocationMaxNetmaskLength): {
    assert std.isNumber(AllocationMaxNetmaskLength) : 'AllocationMaxNetmaskLength must be a number',
    Properties+::: {
      AllocationMaxNetmaskLength: AllocationMaxNetmaskLength,
    },
  },
  withAllocationResourceTags(AllocationResourceTags): {
    Properties+::: {
      AllocationResourceTags: (if std.isArray(AllocationResourceTags) then AllocationResourceTags else [AllocationResourceTags]),
    },
  },
  withAllocationResourceTagsMixin(AllocationResourceTags): {
    Properties+::: {
      AllocationResourceTags+: (if std.isArray(AllocationResourceTags) then AllocationResourceTags else [AllocationResourceTags]),
    },
  },
  withArn(Arn): {
    assert std.isString(Arn) : 'Arn must be a string',
    Properties+::: {
      Arn: Arn,
    },
  },
  withAutoImport(AutoImport): {
    assert std.isBoolean(AutoImport) : 'AutoImport must be a boolean',
    Properties+::: {
      AutoImport: AutoImport,
    },
  },
  withAwsService(AwsService): {
    assert std.isString(AwsService) : 'AwsService must be a string',
    assert AwsService == 'ec2' : "AwsService should be 'ec2'",
    Properties+::: {
      AwsService: AwsService,
    },
  },
  withDescription(Description): {
    assert std.isString(Description) : 'Description must be a string',
    Properties+::: {
      Description: Description,
    },
  },
  withIpamScopeArn(IpamScopeArn): {
    assert std.isString(IpamScopeArn) : 'IpamScopeArn must be a string',
    Properties+::: {
      IpamScopeArn: IpamScopeArn,
    },
  },
  withIpamScopeType(IpamScopeType): {
    assert std.isString(IpamScopeType) : 'IpamScopeType must be a string',
    assert IpamScopeType == 'public' || IpamScopeType == 'private' : "IpamScopeType should be 'public' or 'private'",
    Properties+::: {
      IpamScopeType: IpamScopeType,
    },
  },
  withIpamArn(IpamArn): {
    assert std.isString(IpamArn) : 'IpamArn must be a string',
    Properties+::: {
      IpamArn: IpamArn,
    },
  },
  withLocale(Locale): {
    assert std.isString(Locale) : 'Locale must be a string',
    Properties+::: {
      Locale: Locale,
    },
  },
  withPoolDepth(PoolDepth): {
    assert std.isNumber(PoolDepth) : 'PoolDepth must be a number',
    Properties+::: {
      PoolDepth: PoolDepth,
    },
  },
  withProvisionedCidrs(ProvisionedCidrs): {
    Properties+::: {
      ProvisionedCidrs: (if std.isArray(ProvisionedCidrs) then ProvisionedCidrs else [ProvisionedCidrs]),
    },
  },
  withProvisionedCidrsMixin(ProvisionedCidrs): {
    Properties+::: {
      ProvisionedCidrs+: (if std.isArray(ProvisionedCidrs) then ProvisionedCidrs else [ProvisionedCidrs]),
    },
  },
  withPublicIpSource(PublicIpSource): {
    assert std.isString(PublicIpSource) : 'PublicIpSource must be a string',
    assert PublicIpSource == 'byoip' || PublicIpSource == 'amazon' : "PublicIpSource should be 'byoip' or 'amazon'",
    Properties+::: {
      PublicIpSource: PublicIpSource,
    },
  },
  withPubliclyAdvertisable(PubliclyAdvertisable): {
    assert std.isBoolean(PubliclyAdvertisable) : 'PubliclyAdvertisable must be a boolean',
    Properties+::: {
      PubliclyAdvertisable: PubliclyAdvertisable,
    },
  },
  withSourceIpamPoolId(SourceIpamPoolId): {
    assert std.isString(SourceIpamPoolId) : 'SourceIpamPoolId must be a string',
    Properties+::: {
      SourceIpamPoolId: SourceIpamPoolId,
    },
  },
  withSourceResource(SourceResource): {
    assert std.isObject(SourceResource) : 'SourceResource must be a object',
    Properties+::: {
      SourceResource: SourceResource,
    },
  },
  withState(State): {
    assert std.isString(State) : 'State must be a string',
    assert State == 'create-in-progress' || State == 'create-complete' || State == 'modify-in-progress' || State == 'modify-complete' || State == 'delete-in-progress' || State == 'delete-complete' : "State should be 'create-in-progress' or 'create-complete' or 'modify-in-progress' or 'modify-complete' or 'delete-in-progress' or 'delete-complete'",
    Properties+::: {
      State: State,
    },
  },
  withStateMessage(StateMessage): {
    assert std.isString(StateMessage) : 'StateMessage must be a string',
    Properties+::: {
      StateMessage: StateMessage,
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
}
