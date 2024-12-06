{
  new(
    ImageName,
    ImageRoleArn,
  ): {
    local base = self,
    Properties: {
      ImageName:
        if !std.isString(ImageName) then (error 'ImageName must be a string')
        else if std.isEmpty(ImageName) then (error 'ImageName must be not empty')
        else if std.length(ImageName) < 1 then error ('ImageName should have at least 1 characters')
        else if std.length(ImageName) > 63 then error ('ImageName should have not more than 63 characters')
        else ImageName,
      ImageRoleArn:
        if !std.isString(ImageRoleArn) then (error 'ImageRoleArn must be a string')
        else if std.isEmpty(ImageRoleArn) then (error 'ImageRoleArn must be not empty')
        else if std.length(ImageRoleArn) < 1 then error ('ImageRoleArn should have at least 1 characters')
        else if std.length(ImageRoleArn) > 256 then error ('ImageRoleArn should have not more than 256 characters')
        else ImageRoleArn,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::SageMaker::Image',
  },
  setImageArn(ImageArn): {
    Properties+::: {
      ImageArn:
        if !std.isString(ImageArn) then (error 'ImageArn must be a string')
        else if std.isEmpty(ImageArn) then (error 'ImageArn must be not empty')
        else if std.length(ImageArn) < 1 then error ('ImageArn should have at least 1 characters')
        else if std.length(ImageArn) > 256 then error ('ImageArn should have not more than 256 characters')
        else ImageArn,
    },
  },
  setImageDisplayName(ImageDisplayName): {
    Properties+::: {
      ImageDisplayName:
        if !std.isString(ImageDisplayName) then (error 'ImageDisplayName must be a string')
        else if std.isEmpty(ImageDisplayName) then (error 'ImageDisplayName must be not empty')
        else if std.length(ImageDisplayName) < 1 then error ('ImageDisplayName should have at least 1 characters')
        else if std.length(ImageDisplayName) > 128 then error ('ImageDisplayName should have not more than 128 characters')
        else ImageDisplayName,
    },
  },
  setImageDescription(ImageDescription): {
    Properties+::: {
      ImageDescription:
        if !std.isString(ImageDescription) then (error 'ImageDescription must be a string')
        else if std.isEmpty(ImageDescription) then (error 'ImageDescription must be not empty')
        else if std.length(ImageDescription) < 1 then error ('ImageDescription should have at least 1 characters')
        else if std.length(ImageDescription) > 512 then error ('ImageDescription should have not more than 512 characters')
        else ImageDescription,
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
