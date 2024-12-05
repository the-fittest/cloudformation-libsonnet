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
    Type: 'AWS::AppStream::ImageBuilder',
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else Description,
    },
  },
  setVpcConfig(VpcConfig): {
    Properties+::: {
      VpcConfig:
        if !std.isObject(VpcConfig) then (error 'VpcConfig must be an object')
        else VpcConfig,
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
  setAppstreamAgentVersion(AppstreamAgentVersion): {
    Properties+::: {
      AppstreamAgentVersion:
        if !std.isString(AppstreamAgentVersion) then (error 'AppstreamAgentVersion must be a string')
        else if std.isEmpty(AppstreamAgentVersion) then (error 'AppstreamAgentVersion must be not empty')
        else AppstreamAgentVersion,
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
  setDisplayName(DisplayName): {
    Properties+::: {
      DisplayName:
        if !std.isString(DisplayName) then (error 'DisplayName must be a string')
        else if std.isEmpty(DisplayName) then (error 'DisplayName must be not empty')
        else DisplayName,
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
  setStreamingUrl(StreamingUrl): {
    Properties+::: {
      StreamingUrl:
        if !std.isString(StreamingUrl) then (error 'StreamingUrl must be a string')
        else if std.isEmpty(StreamingUrl) then (error 'StreamingUrl must be not empty')
        else StreamingUrl,
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
  setAccessEndpoints(AccessEndpoints): {
    Properties+::: {
      AccessEndpoints:
        if !std.isArray(AccessEndpoints) then (error 'AccessEndpoints must be an array')
        else AccessEndpoints,
    },
  },
  setAccessEndpointsMixin(AccessEndpoints): {
    Properties+::: {
      AccessEndpoints+: AccessEndpoints,
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
