{
  new(
    InstanceType,
    Name,
  ): {
    local base = self,
    Properties: {
      InstanceType:
        if !std.isString(InstanceType) then (error 'InstanceType must be a string')
        else if std.isEmpty(InstanceType) then (error 'InstanceType must be not empty')
        else InstanceType,
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else Name,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::AppStream::Fleet',
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else Description,
    },
  },
  setComputeCapacity(ComputeCapacity): {
    Properties+::: {
      ComputeCapacity:
        if !std.isObject(ComputeCapacity) then (error 'ComputeCapacity must be an object')
        else ComputeCapacity,
    },
  },
  setPlatform(Platform): {
    Properties+::: {
      Platform:
        if !std.isString(Platform) then (error 'Platform must be a string')
        else if std.isEmpty(Platform) then (error 'Platform must be not empty')
        else Platform,
    },
  },
  setVpcConfig(VpcConfig): {
    Properties+::: {
      VpcConfig:
        if !std.isObject(VpcConfig) then (error 'VpcConfig must be an object')
        else VpcConfig,
    },
  },
  setFleetType(FleetType): {
    Properties+::: {
      FleetType:
        if !std.isString(FleetType) then (error 'FleetType must be a string')
        else if std.isEmpty(FleetType) then (error 'FleetType must be not empty')
        else FleetType,
    },
  },
  setEnableDefaultInternetAccess(EnableDefaultInternetAccess): {
    Properties+::: {
      EnableDefaultInternetAccess:
        if !std.isBoolean(EnableDefaultInternetAccess) then (error 'EnableDefaultInternetAccess must be a boolean') else EnableDefaultInternetAccess,
    },
  },
  setDomainJoinInfo(DomainJoinInfo): {
    Properties+::: {
      DomainJoinInfo:
        if !std.isObject(DomainJoinInfo) then (error 'DomainJoinInfo must be an object')
        else DomainJoinInfo,
    },
  },
  setSessionScriptS3Location(SessionScriptS3Location): {
    Properties+::: {
      SessionScriptS3Location:
        if !std.isObject(SessionScriptS3Location) then (error 'SessionScriptS3Location must be an object')
        else if !std.objectHas(SessionScriptS3Location, 'S3Bucket') then (error ' have attribute S3Bucket')
        else if !std.objectHas(SessionScriptS3Location, 'S3Key') then (error ' have attribute S3Key')
        else SessionScriptS3Location,
    },
  },
  setImageName(ImageName): {
    Properties+::: {
      ImageName:
        if !std.isString(ImageName) then (error 'ImageName must be a string')
        else if std.isEmpty(ImageName) then (error 'ImageName must be not empty')
        else ImageName,
    },
  },
  setMaxUserDurationInSeconds(MaxUserDurationInSeconds): {
    Properties+::: {
      MaxUserDurationInSeconds:
        if !std.isNumber(MaxUserDurationInSeconds) then (error 'MaxUserDurationInSeconds must be an number')
        else MaxUserDurationInSeconds,
    },
  },
  setIdleDisconnectTimeoutInSeconds(IdleDisconnectTimeoutInSeconds): {
    Properties+::: {
      IdleDisconnectTimeoutInSeconds:
        if !std.isNumber(IdleDisconnectTimeoutInSeconds) then (error 'IdleDisconnectTimeoutInSeconds must be an number')
        else IdleDisconnectTimeoutInSeconds,
    },
  },
  setUsbDeviceFilterStrings(UsbDeviceFilterStrings): {
    Properties+::: {
      UsbDeviceFilterStrings:
        if !std.isArray(UsbDeviceFilterStrings) then (error 'UsbDeviceFilterStrings must be an array')
        else UsbDeviceFilterStrings,
    },
  },
  pushUsbDeviceFilterStrings(UsbDeviceFilterStrings): {
    Properties+::: {
      UsbDeviceFilterStrings+: UsbDeviceFilterStrings,
    },
  },
  setDisconnectTimeoutInSeconds(DisconnectTimeoutInSeconds): {
    Properties+::: {
      DisconnectTimeoutInSeconds:
        if !std.isNumber(DisconnectTimeoutInSeconds) then (error 'DisconnectTimeoutInSeconds must be an number')
        else DisconnectTimeoutInSeconds,
    },
  },
  setDisplayName(DisplayName): {
    Properties+::: {
      DisplayName:
        if !std.isString(DisplayName) then (error 'DisplayName must be a string')
        else if std.isEmpty(DisplayName) then (error 'DisplayName must be not empty')
        else DisplayName,
    },
  },
  setStreamView(StreamView): {
    Properties+::: {
      StreamView:
        if !std.isString(StreamView) then (error 'StreamView must be a string')
        else if std.isEmpty(StreamView) then (error 'StreamView must be not empty')
        else StreamView,
    },
  },
  setIamRoleArn(IamRoleArn): {
    Properties+::: {
      IamRoleArn:
        if !std.isString(IamRoleArn) then (error 'IamRoleArn must be a string')
        else if std.isEmpty(IamRoleArn) then (error 'IamRoleArn must be not empty')
        else IamRoleArn,
    },
  },
  setMaxSessionsPerInstance(MaxSessionsPerInstance): {
    Properties+::: {
      MaxSessionsPerInstance:
        if !std.isNumber(MaxSessionsPerInstance) then (error 'MaxSessionsPerInstance must be an number')
        else MaxSessionsPerInstance,
    },
  },
  setId(Id): {
    Properties+::: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else Id,
    },
  },
  setMaxConcurrentSessions(MaxConcurrentSessions): {
    Properties+::: {
      MaxConcurrentSessions:
        if !std.isNumber(MaxConcurrentSessions) then (error 'MaxConcurrentSessions must be an number')
        else MaxConcurrentSessions,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else Tags,
    },
  },
  pushTags(Tags): {
    Properties+::: {
      Tags+: Tags,
    },
  },
  setImageArn(ImageArn): {
    Properties+::: {
      ImageArn:
        if !std.isString(ImageArn) then (error 'ImageArn must be a string')
        else if std.isEmpty(ImageArn) then (error 'ImageArn must be not empty')
        else ImageArn,
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
