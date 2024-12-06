{
  new(
    AppName,
    AppType,
    DomainId,
    UserProfileName,
  ): {
    local base = self,
    Properties: {
      AppName:
        if !std.isString(AppName) then (error 'AppName must be a string')
        else if std.isEmpty(AppName) then (error 'AppName must be not empty')
        else if std.length(AppName) < 1 then error ('AppName should have at least 1 characters')
        else if std.length(AppName) > 63 then error ('AppName should have not more than 63 characters')
        else AppName,
      AppType:
        if !std.isString(AppType) then (error 'AppType must be a string')
        else if std.isEmpty(AppType) then (error 'AppType must be not empty')
        else if AppType != 'JupyterServer' && AppType != 'KernelGateway' && AppType != 'RStudioServerPro' && AppType != 'RSessionGateway' && AppType != 'Canvas' then (error "AppType should be 'JupyterServer' or 'KernelGateway' or 'RStudioServerPro' or 'RSessionGateway' or 'Canvas'")
        else AppType,
      DomainId:
        if !std.isString(DomainId) then (error 'DomainId must be a string')
        else if std.isEmpty(DomainId) then (error 'DomainId must be not empty')
        else if std.length(DomainId) < 1 then error ('DomainId should have at least 1 characters')
        else if std.length(DomainId) > 63 then error ('DomainId should have not more than 63 characters')
        else DomainId,
      UserProfileName:
        if !std.isString(UserProfileName) then (error 'UserProfileName must be a string')
        else if std.isEmpty(UserProfileName) then (error 'UserProfileName must be not empty')
        else if std.length(UserProfileName) < 1 then error ('UserProfileName should have at least 1 characters')
        else if std.length(UserProfileName) > 63 then error ('UserProfileName should have not more than 63 characters')
        else UserProfileName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::SageMaker::App',
  },
  setAppArn(AppArn): {
    Properties+::: {
      AppArn:
        if !std.isString(AppArn) then (error 'AppArn must be a string')
        else if std.isEmpty(AppArn) then (error 'AppArn must be not empty')
        else if std.length(AppArn) < 1 then error ('AppArn should have at least 1 characters')
        else if std.length(AppArn) > 256 then error ('AppArn should have not more than 256 characters')
        else AppArn,
    },
  },
  setResourceSpec(ResourceSpec): {
    Properties+::: {
      ResourceSpec:
        if !std.isObject(ResourceSpec) then (error 'ResourceSpec must be an object')
        else ResourceSpec,
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
  pushTags(Tags): {
    Properties+::: {
      Tags+: Tags,
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
