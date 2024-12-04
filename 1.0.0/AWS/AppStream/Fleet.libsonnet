{
  // AWS AppStream Fleet
  Fleet: {
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
      Type: 'AWS::AppStream::Fleet',
    },
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: {
        Description: Description,
      },
    },
    withComputeCapacity(ComputeCapacity): {
      assert std.isObject(ComputeCapacity) : 'ComputeCapacity must be a object',
      Properties+::: {
        ComputeCapacity: ComputeCapacity,
      },
    },
    withPlatform(Platform): {
      assert std.isString(Platform) : 'Platform must be a string',
      Properties+::: {
        Platform: Platform,
      },
    },
    withVpcConfig(VpcConfig): {
      assert std.isObject(VpcConfig) : 'VpcConfig must be a object',
      Properties+::: {
        VpcConfig: VpcConfig,
      },
    },
    withFleetType(FleetType): {
      assert std.isString(FleetType) : 'FleetType must be a string',
      Properties+::: {
        FleetType: FleetType,
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
    withSessionScriptS3Location(SessionScriptS3Location): {
      assert std.isObject(SessionScriptS3Location) : 'SessionScriptS3Location must be a object',
      Properties+::: {
        SessionScriptS3Location: SessionScriptS3Location,
      },
    },
    withImageName(ImageName): {
      assert std.isString(ImageName) : 'ImageName must be a string',
      Properties+::: {
        ImageName: ImageName,
      },
    },
    withMaxUserDurationInSeconds(MaxUserDurationInSeconds): {
      assert std.isNumber(MaxUserDurationInSeconds) : 'MaxUserDurationInSeconds must be a number',
      Properties+::: {
        MaxUserDurationInSeconds: MaxUserDurationInSeconds,
      },
    },
    withIdleDisconnectTimeoutInSeconds(IdleDisconnectTimeoutInSeconds): {
      assert std.isNumber(IdleDisconnectTimeoutInSeconds) : 'IdleDisconnectTimeoutInSeconds must be a number',
      Properties+::: {
        IdleDisconnectTimeoutInSeconds: IdleDisconnectTimeoutInSeconds,
      },
    },
    withUsbDeviceFilterStrings(UsbDeviceFilterStrings): {
      Properties+::: {
        UsbDeviceFilterStrings: (if std.isArray(UsbDeviceFilterStrings) then UsbDeviceFilterStrings else [UsbDeviceFilterStrings]),
      },
    },
    withUsbDeviceFilterStringsMixin(UsbDeviceFilterStrings): {
      Properties+::: {
        UsbDeviceFilterStrings+: (if std.isArray(UsbDeviceFilterStrings) then UsbDeviceFilterStrings else [UsbDeviceFilterStrings]),
      },
    },
    withDisconnectTimeoutInSeconds(DisconnectTimeoutInSeconds): {
      assert std.isNumber(DisconnectTimeoutInSeconds) : 'DisconnectTimeoutInSeconds must be a number',
      Properties+::: {
        DisconnectTimeoutInSeconds: DisconnectTimeoutInSeconds,
      },
    },
    withDisplayName(DisplayName): {
      assert std.isString(DisplayName) : 'DisplayName must be a string',
      Properties+::: {
        DisplayName: DisplayName,
      },
    },
    withStreamView(StreamView): {
      assert std.isString(StreamView) : 'StreamView must be a string',
      Properties+::: {
        StreamView: StreamView,
      },
    },
    withIamRoleArn(IamRoleArn): {
      assert std.isString(IamRoleArn) : 'IamRoleArn must be a string',
      Properties+::: {
        IamRoleArn: IamRoleArn,
      },
    },
    withMaxSessionsPerInstance(MaxSessionsPerInstance): {
      assert std.isNumber(MaxSessionsPerInstance) : 'MaxSessionsPerInstance must be a number',
      Properties+::: {
        MaxSessionsPerInstance: MaxSessionsPerInstance,
      },
    },
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: {
        Id: Id,
      },
    },
    withMaxConcurrentSessions(MaxConcurrentSessions): {
      assert std.isNumber(MaxConcurrentSessions) : 'MaxConcurrentSessions must be a number',
      Properties+::: {
        MaxConcurrentSessions: MaxConcurrentSessions,
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
    withImageArn(ImageArn): {
      assert std.isString(ImageArn) : 'ImageArn must be a string',
      Properties+::: {
        ImageArn: ImageArn,
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
