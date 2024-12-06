{
  new(
    PackageName,
  ): {
    local base = self,
    Properties: {
      PackageName:
        if !std.isString(PackageName) then (error 'PackageName must be a string')
        else if std.isEmpty(PackageName) then (error 'PackageName must be not empty')
        else if std.length(PackageName) < 1 then error ('PackageName should have at least 1 characters')
        else if std.length(PackageName) > 128 then error ('PackageName should have not more than 128 characters')
        else PackageName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::IoT::SoftwarePackageVersion',
  },
  setAttributes(Attributes): {
    Properties+::: {
      Attributes:
        if !std.isObject(Attributes) then (error 'Attributes must be an object')
        else Attributes,
    },
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else if std.length(Description) > 1024 then error ('Description should have not more than 1024 characters')
        else Description,
    },
  },
  setErrorReason(ErrorReason): {
    Properties+::: {
      ErrorReason:
        if !std.isString(ErrorReason) then (error 'ErrorReason must be a string')
        else if std.isEmpty(ErrorReason) then (error 'ErrorReason must be not empty')
        else ErrorReason,
    },
  },
  setPackageVersionArn(PackageVersionArn): {
    Properties+::: {
      PackageVersionArn:
        if !std.isString(PackageVersionArn) then (error 'PackageVersionArn must be a string')
        else if std.isEmpty(PackageVersionArn) then (error 'PackageVersionArn must be not empty')
        else PackageVersionArn,
    },
  },
  setStatus(Status): {
    Properties+::: {
      Status:
        if !std.isString(Status) then (error 'Status must be a string')
        else if std.isEmpty(Status) then (error 'Status must be not empty')
        else if Status != 'DRAFT' && Status != 'PUBLISHED' && Status != 'DEPRECATED' then (error "Status should be 'DRAFT' or 'PUBLISHED' or 'DEPRECATED'")
        else Status,
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
  setVersionName(VersionName): {
    Properties+::: {
      VersionName:
        if !std.isString(VersionName) then (error 'VersionName must be a string')
        else if std.isEmpty(VersionName) then (error 'VersionName must be not empty')
        else if std.length(VersionName) < 1 then error ('VersionName should have at least 1 characters')
        else if std.length(VersionName) > 64 then error ('VersionName should have not more than 64 characters')
        else VersionName,
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
