{
  new(
    Name,
    RoleArn,
  ): {
    local base = self,
    Properties: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else if std.length(Name) < 1 then error ('Name should have at least 1 characters')
        else if std.length(Name) > 2048 then error ('Name should have not more than 2048 characters')
        else Name,
      RoleArn:
        if !std.isString(RoleArn) then (error 'RoleArn must be a string')
        else if std.isEmpty(RoleArn) then (error 'RoleArn must be not empty')
        else RoleArn,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::SimSpaceWeaver::Simulation',
  },
  setSchemaS3Location(SchemaS3Location): {
    Properties+::: {
      SchemaS3Location:
        if !std.isObject(SchemaS3Location) then (error 'SchemaS3Location must be an object')
        else if !std.objectHas(SchemaS3Location, 'BucketName') then (error ' have attribute BucketName')
        else if !std.objectHas(SchemaS3Location, 'ObjectKey') then (error ' have attribute ObjectKey')
        else SchemaS3Location,
    },
  },
  setDescribePayload(DescribePayload): {
    Properties+::: {
      DescribePayload:
        if !std.isString(DescribePayload) then (error 'DescribePayload must be a string')
        else if std.isEmpty(DescribePayload) then (error 'DescribePayload must be not empty')
        else DescribePayload,
    },
  },
  setMaximumDuration(MaximumDuration): {
    Properties+::: {
      MaximumDuration:
        if !std.isString(MaximumDuration) then (error 'MaximumDuration must be a string')
        else if std.isEmpty(MaximumDuration) then (error 'MaximumDuration must be not empty')
        else if std.length(MaximumDuration) < 2 then error ('MaximumDuration should have at least 2 characters')
        else if std.length(MaximumDuration) > 6 then error ('MaximumDuration should have not more than 6 characters')
        else MaximumDuration,
    },
  },
  setSnapshotS3Location(SnapshotS3Location): {
    Properties+::: {
      SnapshotS3Location:
        if !std.isObject(SnapshotS3Location) then (error 'SnapshotS3Location must be an object')
        else if !std.objectHas(SnapshotS3Location, 'BucketName') then (error ' have attribute BucketName')
        else if !std.objectHas(SnapshotS3Location, 'ObjectKey') then (error ' have attribute ObjectKey')
        else SnapshotS3Location,
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
