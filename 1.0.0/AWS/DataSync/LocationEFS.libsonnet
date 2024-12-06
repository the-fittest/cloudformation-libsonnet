{
  new(
    Ec2Config,
  ): {
    local base = self,
    Properties: {
      Ec2Config:
        if !std.isObject(Ec2Config) then (error 'Ec2Config must be an object')
        else if !std.objectHas(Ec2Config, 'SecurityGroupArns') then (error ' have attribute SecurityGroupArns')
        else if !std.objectHas(Ec2Config, 'SubnetArn') then (error ' have attribute SubnetArn')
        else Ec2Config,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::DataSync::LocationEFS',
  },
  setEfsFilesystemArn(EfsFilesystemArn): {
    Properties+::: {
      EfsFilesystemArn:
        if !std.isString(EfsFilesystemArn) then (error 'EfsFilesystemArn must be a string')
        else if std.isEmpty(EfsFilesystemArn) then (error 'EfsFilesystemArn must be not empty')
        else if std.length(EfsFilesystemArn) > 128 then error ('EfsFilesystemArn should have not more than 128 characters')
        else EfsFilesystemArn,
    },
  },
  setAccessPointArn(AccessPointArn): {
    Properties+::: {
      AccessPointArn:
        if !std.isString(AccessPointArn) then (error 'AccessPointArn must be a string')
        else if std.isEmpty(AccessPointArn) then (error 'AccessPointArn must be not empty')
        else if std.length(AccessPointArn) > 128 then error ('AccessPointArn should have not more than 128 characters')
        else AccessPointArn,
    },
  },
  setFileSystemAccessRoleArn(FileSystemAccessRoleArn): {
    Properties+::: {
      FileSystemAccessRoleArn:
        if !std.isString(FileSystemAccessRoleArn) then (error 'FileSystemAccessRoleArn must be a string')
        else if std.isEmpty(FileSystemAccessRoleArn) then (error 'FileSystemAccessRoleArn must be not empty')
        else if std.length(FileSystemAccessRoleArn) > 128 then error ('FileSystemAccessRoleArn should have not more than 128 characters')
        else FileSystemAccessRoleArn,
    },
  },
  setInTransitEncryption(InTransitEncryption): {
    Properties+::: {
      InTransitEncryption:
        if !std.isString(InTransitEncryption) then (error 'InTransitEncryption must be a string')
        else if std.isEmpty(InTransitEncryption) then (error 'InTransitEncryption must be not empty')
        else if InTransitEncryption != 'NONE' && InTransitEncryption != 'TLS1_2' then (error "InTransitEncryption should be 'NONE' or 'TLS1_2'")
        else InTransitEncryption,
    },
  },
  setSubdirectory(Subdirectory): {
    Properties+::: {
      Subdirectory:
        if !std.isString(Subdirectory) then (error 'Subdirectory must be a string')
        else if std.isEmpty(Subdirectory) then (error 'Subdirectory must be not empty')
        else if std.length(Subdirectory) > 4096 then error ('Subdirectory should have not more than 4096 characters')
        else Subdirectory,
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
  setLocationArn(LocationArn): {
    Properties+::: {
      LocationArn:
        if !std.isString(LocationArn) then (error 'LocationArn must be a string')
        else if std.isEmpty(LocationArn) then (error 'LocationArn must be not empty')
        else if std.length(LocationArn) > 128 then error ('LocationArn should have not more than 128 characters')
        else LocationArn,
    },
  },
  setLocationUri(LocationUri): {
    Properties+::: {
      LocationUri:
        if !std.isString(LocationUri) then (error 'LocationUri must be a string')
        else if std.isEmpty(LocationUri) then (error 'LocationUri must be not empty')
        else if std.length(LocationUri) > 4356 then error ('LocationUri should have not more than 4356 characters')
        else LocationUri,
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
