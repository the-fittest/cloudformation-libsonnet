{
  new(
    Name,
    Version,
    Components,
    ParentImage,
  ): {
    local base = self,
    Properties: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else Name,
      Version:
        if !std.isString(Version) then (error 'Version must be a string')
        else if std.isEmpty(Version) then (error 'Version must be not empty')
        else Version,
      Components:
        if !std.isArray(Components) then (error 'Components must be an array')
        else Components,
      ParentImage:
        if !std.isString(ParentImage) then (error 'ParentImage must be a string')
        else if std.isEmpty(ParentImage) then (error 'ParentImage must be not empty')
        else ParentImage,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::ImageBuilder::ImageRecipe',
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
  setBlockDeviceMappings(BlockDeviceMappings): {
    Properties+::: {
      BlockDeviceMappings:
        if !std.isArray(BlockDeviceMappings) then (error 'BlockDeviceMappings must be an array')
        else BlockDeviceMappings,
    },
  },
  pushBlockDeviceMappings(BlockDeviceMappings): {
    Properties+::: {
      BlockDeviceMappings+: BlockDeviceMappings,
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
  setAdditionalInstanceConfiguration(AdditionalInstanceConfiguration): {
    Properties+::: {
      AdditionalInstanceConfiguration:
        if !std.isObject(AdditionalInstanceConfiguration) then (error 'AdditionalInstanceConfiguration must be an object')
        else AdditionalInstanceConfiguration,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isObject(Tags) then (error 'Tags must be an object')
        else Tags,
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
