{
  new(
    Name,
    IconS3Location,
    LaunchPath,
    Platforms,
    InstanceFamilies,
    AppBlockArn,
  ): {
    local base = self,
    Properties: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else Name,
      IconS3Location:
        if !std.isObject(IconS3Location) then (error 'IconS3Location must be an object')
        else if !std.objectHas(IconS3Location, 'S3Bucket') then (error ' have attribute S3Bucket')
        else if !std.objectHas(IconS3Location, 'S3Key') then (error ' have attribute S3Key')
        else IconS3Location,
      LaunchPath:
        if !std.isString(LaunchPath) then (error 'LaunchPath must be a string')
        else if std.isEmpty(LaunchPath) then (error 'LaunchPath must be not empty')
        else LaunchPath,
      Platforms:
        if !std.isArray(Platforms) then (error 'Platforms must be an array')
        else Platforms,
      InstanceFamilies:
        if !std.isArray(InstanceFamilies) then (error 'InstanceFamilies must be an array')
        else InstanceFamilies,
      AppBlockArn:
        if !std.isString(AppBlockArn) then (error 'AppBlockArn must be a string')
        else if std.isEmpty(AppBlockArn) then (error 'AppBlockArn must be not empty')
        else AppBlockArn,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::AppStream::Application',
  },
  setDisplayName(DisplayName): {
    Properties+::: {
      DisplayName:
        if !std.isString(DisplayName) then (error 'DisplayName must be a string')
        else if std.isEmpty(DisplayName) then (error 'DisplayName must be not empty')
        else DisplayName,
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
  setLaunchParameters(LaunchParameters): {
    Properties+::: {
      LaunchParameters:
        if !std.isString(LaunchParameters) then (error 'LaunchParameters must be a string')
        else if std.isEmpty(LaunchParameters) then (error 'LaunchParameters must be not empty')
        else LaunchParameters,
    },
  },
  setWorkingDirectory(WorkingDirectory): {
    Properties+::: {
      WorkingDirectory:
        if !std.isString(WorkingDirectory) then (error 'WorkingDirectory must be a string')
        else if std.isEmpty(WorkingDirectory) then (error 'WorkingDirectory must be not empty')
        else WorkingDirectory,
    },
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else Arn,
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
  setAttributesToDelete(AttributesToDelete): {
    Properties+::: {
      AttributesToDelete:
        if !std.isArray(AttributesToDelete) then (error 'AttributesToDelete must be an array')
        else AttributesToDelete,
    },
  },
  setAttributesToDeleteMixin(AttributesToDelete): {
    Properties+::: {
      AttributesToDelete+: AttributesToDelete,
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
