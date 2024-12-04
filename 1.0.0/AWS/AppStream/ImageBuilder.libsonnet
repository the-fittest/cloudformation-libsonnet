{
  // AWS AppStream ImageBuilder
  ImageBuilder: {
    new(
      InstanceType,
      Name,
    ): {
      local base = self,
      Properties: {
        assert std.isString(InstanceType) : 'InstanceType must be a string',
        InstanceType: InstanceType,
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::AppStream::ImageBuilder',
    },
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: {
        Description: Description,
      },
    },
    withVpcConfig(VpcConfig): {
      assert std.isObject(VpcConfig) : 'VpcConfig must be a object',
      Properties+::: {
        VpcConfig: VpcConfig,
      },
    },
    withEnableDefaultInternetAccess(EnableDefaultInternetAccess): {
      assert std.isBoolean(EnableDefaultInternetAccess) : 'EnableDefaultInternetAccess must be a boolean',
      Properties+::: {
        EnableDefaultInternetAccess: EnableDefaultInternetAccess,
      },
    },
    withDomainJoinInfo(DomainJoinInfo): {
      assert std.isObject(DomainJoinInfo) : 'DomainJoinInfo must be a object',
      Properties+::: {
        DomainJoinInfo: DomainJoinInfo,
      },
    },
    withAppstreamAgentVersion(AppstreamAgentVersion): {
      assert std.isString(AppstreamAgentVersion) : 'AppstreamAgentVersion must be a string',
      Properties+::: {
        AppstreamAgentVersion: AppstreamAgentVersion,
      },
    },
    withImageName(ImageName): {
      assert std.isString(ImageName) : 'ImageName must be a string',
      Properties+::: {
        ImageName: ImageName,
      },
    },
    withDisplayName(DisplayName): {
      assert std.isString(DisplayName) : 'DisplayName must be a string',
      Properties+::: {
        DisplayName: DisplayName,
      },
    },
    withIamRoleArn(IamRoleArn): {
      assert std.isString(IamRoleArn) : 'IamRoleArn must be a string',
      Properties+::: {
        IamRoleArn: IamRoleArn,
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
    withStreamingUrl(StreamingUrl): {
      assert std.isString(StreamingUrl) : 'StreamingUrl must be a string',
      Properties+::: {
        StreamingUrl: StreamingUrl,
      },
    },
    withImageArn(ImageArn): {
      assert std.isString(ImageArn) : 'ImageArn must be a string',
      Properties+::: {
        ImageArn: ImageArn,
      },
    },
    withAccessEndpoints(AccessEndpoints): {
      Properties+::: {
        AccessEndpoints: (if std.isArray(AccessEndpoints) then AccessEndpoints else [AccessEndpoints]),
      },
    },
    withAccessEndpointsMixin(AccessEndpoints): {
      Properties+::: {
        AccessEndpoints+: (if std.isArray(AccessEndpoints) then AccessEndpoints else [AccessEndpoints]),
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
