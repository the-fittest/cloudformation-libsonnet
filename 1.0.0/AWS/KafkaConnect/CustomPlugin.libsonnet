{
  new(
    Name,
    ContentType,
    Location,
  ): {
    local base = self,
    Properties: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else if std.length(Name) < 1 then error ('Name should have at least 1 characters')
        else if std.length(Name) > 128 then error ('Name should have not more than 128 characters')
        else Name,
      ContentType:
        if !std.isString(ContentType) then (error 'ContentType must be a string')
        else if std.isEmpty(ContentType) then (error 'ContentType must be not empty')
        else if ContentType != 'JAR' && ContentType != 'ZIP' then (error "ContentType should be 'JAR' or 'ZIP'")
        else ContentType,
      Location:
        if !std.isObject(Location) then (error 'Location must be an object')
        else if !std.objectHas(Location, 'S3Location') then (error ' have attribute S3Location')
        else Location,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::KafkaConnect::CustomPlugin',
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
  setCustomPluginArn(CustomPluginArn): {
    Properties+::: {
      CustomPluginArn:
        if !std.isString(CustomPluginArn) then (error 'CustomPluginArn must be a string')
        else if std.isEmpty(CustomPluginArn) then (error 'CustomPluginArn must be not empty')
        else CustomPluginArn,
    },
  },
  setFileDescription(FileDescription): {
    Properties+::: {
      FileDescription:
        if !std.isObject(FileDescription) then (error 'FileDescription must be an object')
        else FileDescription,
    },
  },
  setRevision(Revision): {
    Properties+::: {
      Revision:
        if !std.isNumber(Revision) then (error 'Revision must be an number')
        else Revision,
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
