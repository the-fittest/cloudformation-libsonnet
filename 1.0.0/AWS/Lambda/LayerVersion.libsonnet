{
  new(
    Content,
  ): {
    local base = self,
    Properties: {
      Content:
        if !std.isObject(Content) then (error 'Content must be an object')
        else if !std.objectHas(Content, 'S3Bucket') then (error ' have attribute S3Bucket')
        else if !std.objectHas(Content, 'S3Key') then (error ' have attribute S3Key')
        else Content,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Lambda::LayerVersion',
  },
  setCompatibleRuntimes(CompatibleRuntimes): {
    Properties+::: {
      CompatibleRuntimes:
        if !std.isArray(CompatibleRuntimes) then (error 'CompatibleRuntimes must be an array')
        else CompatibleRuntimes,
    },
  },
  pushCompatibleRuntimes(CompatibleRuntimes): {
    Properties+::: {
      CompatibleRuntimes+: CompatibleRuntimes,
    },
  },
  setLicenseInfo(LicenseInfo): {
    Properties+::: {
      LicenseInfo:
        if !std.isString(LicenseInfo) then (error 'LicenseInfo must be a string')
        else if std.isEmpty(LicenseInfo) then (error 'LicenseInfo must be not empty')
        else LicenseInfo,
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
  setLayerName(LayerName): {
    Properties+::: {
      LayerName:
        if !std.isString(LayerName) then (error 'LayerName must be a string')
        else if std.isEmpty(LayerName) then (error 'LayerName must be not empty')
        else LayerName,
    },
  },
  setLayerVersionArn(LayerVersionArn): {
    Properties+::: {
      LayerVersionArn:
        if !std.isString(LayerVersionArn) then (error 'LayerVersionArn must be a string')
        else if std.isEmpty(LayerVersionArn) then (error 'LayerVersionArn must be not empty')
        else LayerVersionArn,
    },
  },
  setCompatibleArchitectures(CompatibleArchitectures): {
    Properties+::: {
      CompatibleArchitectures:
        if !std.isArray(CompatibleArchitectures) then (error 'CompatibleArchitectures must be an array')
        else CompatibleArchitectures,
    },
  },
  pushCompatibleArchitectures(CompatibleArchitectures): {
    Properties+::: {
      CompatibleArchitectures+: CompatibleArchitectures,
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
