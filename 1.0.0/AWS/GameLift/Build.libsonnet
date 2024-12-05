{
  new(): {
    local base = self,
    Properties:: {},
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::GameLift::Build',
  },
  setBuildId(BuildId): {
    Properties+::: {
      BuildId:
        if !std.isString(BuildId) then (error 'BuildId must be a string')
        else if std.isEmpty(BuildId) then (error 'BuildId must be not empty')
        else BuildId,
    },
  },
  setName(Name): {
    Properties+::: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else Name,
    },
  },
  setOperatingSystem(OperatingSystem): {
    Properties+::: {
      OperatingSystem:
        if !std.isString(OperatingSystem) then (error 'OperatingSystem must be a string')
        else if std.isEmpty(OperatingSystem) then (error 'OperatingSystem must be not empty')
        else if OperatingSystem != 'AMAZON_LINUX' && OperatingSystem != 'AMAZON_LINUX_2' && OperatingSystem != 'AMAZON_LINUX_2023' && OperatingSystem != 'WINDOWS_2012' && OperatingSystem != 'WINDOWS_2016' then (error "OperatingSystem should be 'AMAZON_LINUX' or 'AMAZON_LINUX_2' or 'AMAZON_LINUX_2023' or 'WINDOWS_2012' or 'WINDOWS_2016'")
        else OperatingSystem,
    },
  },
  setStorageLocation(StorageLocation): {
    Properties+::: {
      StorageLocation:
        if !std.isObject(StorageLocation) then (error 'StorageLocation must be an object')
        else if !std.objectHas(StorageLocation, 'Bucket') then (error ' have attribute Bucket')
        else if !std.objectHas(StorageLocation, 'Key') then (error ' have attribute Key')
        else if !std.objectHas(StorageLocation, 'RoleArn') then (error ' have attribute RoleArn')
        else StorageLocation,
    },
  },
  setVersion(Version): {
    Properties+::: {
      Version:
        if !std.isString(Version) then (error 'Version must be a string')
        else if std.isEmpty(Version) then (error 'Version must be not empty')
        else Version,
    },
  },
  setServerSdkVersion(ServerSdkVersion): {
    Properties+::: {
      ServerSdkVersion:
        if !std.isString(ServerSdkVersion) then (error 'ServerSdkVersion must be a string')
        else if std.isEmpty(ServerSdkVersion) then (error 'ServerSdkVersion must be not empty')
        else ServerSdkVersion,
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
