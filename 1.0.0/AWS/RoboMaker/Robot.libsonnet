{
  new(
    GreengrassGroupId,
    Architecture,
  ): {
    local base = self,
    Properties: {
      GreengrassGroupId:
        if !std.isString(GreengrassGroupId) then (error 'GreengrassGroupId must be a string')
        else if std.isEmpty(GreengrassGroupId) then (error 'GreengrassGroupId must be not empty')
        else if std.length(GreengrassGroupId) < 1 then error ('GreengrassGroupId should have at least 1 characters')
        else if std.length(GreengrassGroupId) > 1224 then error ('GreengrassGroupId should have not more than 1224 characters')
        else GreengrassGroupId,
      Architecture:
        if !std.isString(Architecture) then (error 'Architecture must be a string')
        else if std.isEmpty(Architecture) then (error 'Architecture must be not empty')
        else if Architecture != 'X86_64' && Architecture != 'ARM64' && Architecture != 'ARMHF' then (error "Architecture should be 'X86_64' or 'ARM64' or 'ARMHF'")
        else Architecture,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::RoboMaker::Robot',
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else Arn,
    },
  },
  setFleet(Fleet): {
    Properties+::: {
      Fleet:
        if !std.isString(Fleet) then (error 'Fleet must be a string')
        else if std.isEmpty(Fleet) then (error 'Fleet must be not empty')
        else if std.length(Fleet) < 1 then error ('Fleet should have at least 1 characters')
        else if std.length(Fleet) > 1224 then error ('Fleet should have not more than 1224 characters')
        else Fleet,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isObject(Tags) then (error 'Tags must be an object')
        else Tags,
    },
  },
  setName(Name): {
    Properties+::: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else if std.length(Name) < 1 then error ('Name should have at least 1 characters')
        else if std.length(Name) > 255 then error ('Name should have not more than 255 characters')
        else Name,
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
