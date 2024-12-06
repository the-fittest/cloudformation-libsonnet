{
  new(
    Name,
    Code,
    ArtifactS3Location,
    ExecutionRoleArn,
    Schedule,
    RuntimeVersion,
  ): {
    local base = self,
    Properties: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else Name,
      Code:
        if !std.isObject(Code) then (error 'Code must be an object')
        else if !std.objectHas(Code, 'Handler') then (error ' have attribute Handler')
        else Code,
      ArtifactS3Location:
        if !std.isString(ArtifactS3Location) then (error 'ArtifactS3Location must be a string')
        else if std.isEmpty(ArtifactS3Location) then (error 'ArtifactS3Location must be not empty')
        else ArtifactS3Location,
      ExecutionRoleArn:
        if !std.isString(ExecutionRoleArn) then (error 'ExecutionRoleArn must be a string')
        else if std.isEmpty(ExecutionRoleArn) then (error 'ExecutionRoleArn must be not empty')
        else ExecutionRoleArn,
      Schedule:
        if !std.isObject(Schedule) then (error 'Schedule must be an object')
        else if !std.objectHas(Schedule, 'Expression') then (error ' have attribute Expression')
        else Schedule,
      RuntimeVersion:
        if !std.isString(RuntimeVersion) then (error 'RuntimeVersion must be a string')
        else if std.isEmpty(RuntimeVersion) then (error 'RuntimeVersion must be not empty')
        else RuntimeVersion,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Synthetics::Canary',
  },
  setId(Id): {
    Properties+::: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else Id,
    },
  },
  setState(State): {
    Properties+::: {
      State:
        if !std.isString(State) then (error 'State must be a string')
        else if std.isEmpty(State) then (error 'State must be not empty')
        else State,
    },
  },
  setArtifactConfig(ArtifactConfig): {
    Properties+::: {
      ArtifactConfig:
        if !std.isObject(ArtifactConfig) then (error 'ArtifactConfig must be an object')
        else ArtifactConfig,
    },
  },
  setSuccessRetentionPeriod(SuccessRetentionPeriod): {
    Properties+::: {
      SuccessRetentionPeriod:
        if !std.isNumber(SuccessRetentionPeriod) then (error 'SuccessRetentionPeriod must be an number')
        else SuccessRetentionPeriod,
    },
  },
  setFailureRetentionPeriod(FailureRetentionPeriod): {
    Properties+::: {
      FailureRetentionPeriod:
        if !std.isNumber(FailureRetentionPeriod) then (error 'FailureRetentionPeriod must be an number')
        else FailureRetentionPeriod,
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
  setVPCConfig(VPCConfig): {
    Properties+::: {
      VPCConfig:
        if !std.isObject(VPCConfig) then (error 'VPCConfig must be an object')
        else if !std.objectHas(VPCConfig, 'SubnetIds') then (error ' have attribute SubnetIds')
        else if !std.objectHas(VPCConfig, 'SecurityGroupIds') then (error ' have attribute SecurityGroupIds')
        else VPCConfig,
    },
  },
  setRunConfig(RunConfig): {
    Properties+::: {
      RunConfig:
        if !std.isObject(RunConfig) then (error 'RunConfig must be an object')
        else RunConfig,
    },
  },
  setStartCanaryAfterCreation(StartCanaryAfterCreation): {
    Properties+::: {
      StartCanaryAfterCreation:
        if !std.isBoolean(StartCanaryAfterCreation) then (error 'StartCanaryAfterCreation must be a boolean') else StartCanaryAfterCreation,
    },
  },
  setVisualReference(VisualReference): {
    Properties+::: {
      VisualReference:
        if !std.isObject(VisualReference) then (error 'VisualReference must be an object')
        else if !std.objectHas(VisualReference, 'BaseCanaryRunId') then (error ' have attribute BaseCanaryRunId')
        else VisualReference,
    },
  },
  setDeleteLambdaResourcesOnCanaryDeletion(DeleteLambdaResourcesOnCanaryDeletion): {
    Properties+::: {
      DeleteLambdaResourcesOnCanaryDeletion:
        if !std.isBoolean(DeleteLambdaResourcesOnCanaryDeletion) then (error 'DeleteLambdaResourcesOnCanaryDeletion must be a boolean') else DeleteLambdaResourcesOnCanaryDeletion,
    },
  },
  setResourcesToReplicateTags(ResourcesToReplicateTags): {
    Properties+::: {
      ResourcesToReplicateTags:
        if !std.isArray(ResourcesToReplicateTags) then (error 'ResourcesToReplicateTags must be an array')
        else ResourcesToReplicateTags,
    },
  },
  pushResourcesToReplicateTags(ResourcesToReplicateTags): {
    Properties+::: {
      ResourcesToReplicateTags+: ResourcesToReplicateTags,
    },
  },
  setProvisionedResourceCleanup(ProvisionedResourceCleanup): {
    Properties+::: {
      ProvisionedResourceCleanup:
        if !std.isString(ProvisionedResourceCleanup) then (error 'ProvisionedResourceCleanup must be a string')
        else if std.isEmpty(ProvisionedResourceCleanup) then (error 'ProvisionedResourceCleanup must be not empty')
        else if ProvisionedResourceCleanup != 'AUTOMATIC' && ProvisionedResourceCleanup != 'OFF' then (error "ProvisionedResourceCleanup should be 'AUTOMATIC' or 'OFF'")
        else ProvisionedResourceCleanup,
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
