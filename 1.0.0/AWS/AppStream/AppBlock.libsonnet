{
  new(
    Name,
    SourceS3Location,
  ): {
    local base = self,
    Properties: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else Name,
      SourceS3Location:
        if !std.isObject(SourceS3Location) then (error 'SourceS3Location must be an object')
        else if !std.objectHas(SourceS3Location, 'S3Bucket') then (error ' have attribute S3Bucket')
        else SourceS3Location,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::AppStream::AppBlock',
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else Arn,
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
  setDisplayName(DisplayName): {
    Properties+::: {
      DisplayName:
        if !std.isString(DisplayName) then (error 'DisplayName must be a string')
        else if std.isEmpty(DisplayName) then (error 'DisplayName must be not empty')
        else DisplayName,
    },
  },
  setSetupScriptDetails(SetupScriptDetails): {
    Properties+::: {
      SetupScriptDetails:
        if !std.isObject(SetupScriptDetails) then (error 'SetupScriptDetails must be an object')
        else if !std.objectHas(SetupScriptDetails, 'ScriptS3Location') then (error ' have attribute ScriptS3Location')
        else if !std.objectHas(SetupScriptDetails, 'ExecutablePath') then (error ' have attribute ExecutablePath')
        else if !std.objectHas(SetupScriptDetails, 'TimeoutInSeconds') then (error ' have attribute TimeoutInSeconds')
        else SetupScriptDetails,
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
  setCreatedTime(CreatedTime): {
    Properties+::: {
      CreatedTime:
        if !std.isString(CreatedTime) then (error 'CreatedTime must be a string')
        else if std.isEmpty(CreatedTime) then (error 'CreatedTime must be not empty')
        else CreatedTime,
    },
  },
  setPackagingType(PackagingType): {
    Properties+::: {
      PackagingType:
        if !std.isString(PackagingType) then (error 'PackagingType must be a string')
        else if std.isEmpty(PackagingType) then (error 'PackagingType must be not empty')
        else PackagingType,
    },
  },
  setPostSetupScriptDetails(PostSetupScriptDetails): {
    Properties+::: {
      PostSetupScriptDetails:
        if !std.isObject(PostSetupScriptDetails) then (error 'PostSetupScriptDetails must be an object')
        else if !std.objectHas(PostSetupScriptDetails, 'ScriptS3Location') then (error ' have attribute ScriptS3Location')
        else if !std.objectHas(PostSetupScriptDetails, 'ExecutablePath') then (error ' have attribute ExecutablePath')
        else if !std.objectHas(PostSetupScriptDetails, 'TimeoutInSeconds') then (error ' have attribute TimeoutInSeconds')
        else PostSetupScriptDetails,
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
