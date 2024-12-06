{
  new(
    DestinationLocationArn,
    SourceLocationArn,
  ): {
    local base = self,
    Properties: {
      DestinationLocationArn:
        if !std.isString(DestinationLocationArn) then (error 'DestinationLocationArn must be a string')
        else if std.isEmpty(DestinationLocationArn) then (error 'DestinationLocationArn must be not empty')
        else if std.length(DestinationLocationArn) > 128 then error ('DestinationLocationArn should have not more than 128 characters')
        else DestinationLocationArn,
      SourceLocationArn:
        if !std.isString(SourceLocationArn) then (error 'SourceLocationArn must be a string')
        else if std.isEmpty(SourceLocationArn) then (error 'SourceLocationArn must be not empty')
        else if std.length(SourceLocationArn) > 128 then error ('SourceLocationArn should have not more than 128 characters')
        else SourceLocationArn,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::DataSync::Task',
  },
  setExcludes(Excludes): {
    Properties+::: {
      Excludes:
        if !std.isArray(Excludes) then (error 'Excludes must be an array')
        else if std.length(Excludes) > 1 then error ('Excludes cannot have more than 1 items')
        else Excludes,
    },
  },
  pushExcludes(Excludes): {
    Properties+::: {
      Excludes+: Excludes,
    },
  },
  setIncludes(Includes): {
    Properties+::: {
      Includes:
        if !std.isArray(Includes) then (error 'Includes must be an array')
        else if std.length(Includes) > 1 then error ('Includes cannot have more than 1 items')
        else Includes,
    },
  },
  pushIncludes(Includes): {
    Properties+::: {
      Includes+: Includes,
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
  setCloudWatchLogGroupArn(CloudWatchLogGroupArn): {
    Properties+::: {
      CloudWatchLogGroupArn:
        if !std.isString(CloudWatchLogGroupArn) then (error 'CloudWatchLogGroupArn must be a string')
        else if std.isEmpty(CloudWatchLogGroupArn) then (error 'CloudWatchLogGroupArn must be not empty')
        else if std.length(CloudWatchLogGroupArn) > 562 then error ('CloudWatchLogGroupArn should have not more than 562 characters')
        else CloudWatchLogGroupArn,
    },
  },
  setName(Name): {
    Properties+::: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else if std.length(Name) < 1 then error ('Name should have at least 1 characters')
        else if std.length(Name) > 256 then error ('Name should have not more than 256 characters')
        else Name,
    },
  },
  setOptions(Options): {
    Properties+::: {
      Options:
        if !std.isObject(Options) then (error 'Options must be an object')
        else Options,
    },
  },
  setTaskReportConfig(TaskReportConfig): {
    Properties+::: {
      TaskReportConfig:
        if !std.isObject(TaskReportConfig) then (error 'TaskReportConfig must be an object')
        else if !std.objectHas(TaskReportConfig, 'Destination') then (error ' have attribute Destination')
        else if !std.objectHas(TaskReportConfig, 'OutputType') then (error ' have attribute OutputType')
        else TaskReportConfig,
    },
  },
  setManifestConfig(ManifestConfig): {
    Properties+::: {
      ManifestConfig:
        if !std.isObject(ManifestConfig) then (error 'ManifestConfig must be an object')
        else if !std.objectHas(ManifestConfig, 'Source') then (error ' have attribute Source')
        else ManifestConfig,
    },
  },
  setSchedule(Schedule): {
    Properties+::: {
      Schedule:
        if !std.isObject(Schedule) then (error 'Schedule must be an object')
        else Schedule,
    },
  },
  setTaskArn(TaskArn): {
    Properties+::: {
      TaskArn:
        if !std.isString(TaskArn) then (error 'TaskArn must be a string')
        else if std.isEmpty(TaskArn) then (error 'TaskArn must be not empty')
        else if std.length(TaskArn) > 128 then error ('TaskArn should have not more than 128 characters')
        else TaskArn,
    },
  },
  setTaskMode(TaskMode): {
    Properties+::: {
      TaskMode:
        if !std.isString(TaskMode) then (error 'TaskMode must be a string')
        else if std.isEmpty(TaskMode) then (error 'TaskMode must be not empty')
        else if TaskMode != 'BASIC' && TaskMode != 'ENHANCED' then (error "TaskMode should be 'BASIC' or 'ENHANCED'")
        else TaskMode,
    },
  },
  setStatus(Status): {
    Properties+::: {
      Status:
        if !std.isString(Status) then (error 'Status must be a string')
        else if std.isEmpty(Status) then (error 'Status must be not empty')
        else if Status != 'AVAILABLE' && Status != 'CREATING' && Status != 'QUEUED' && Status != 'RUNNING' && Status != 'UNAVAILABLE' then (error "Status should be 'AVAILABLE' or 'CREATING' or 'QUEUED' or 'RUNNING' or 'UNAVAILABLE'")
        else Status,
    },
  },
  setSourceNetworkInterfaceArns(SourceNetworkInterfaceArns): {
    Properties+::: {
      SourceNetworkInterfaceArns:
        if !std.isArray(SourceNetworkInterfaceArns) then (error 'SourceNetworkInterfaceArns must be an array')
        else if std.length(SourceNetworkInterfaceArns) > 128 then error ('SourceNetworkInterfaceArns cannot have more than 128 items')
        else SourceNetworkInterfaceArns,
    },
  },
  pushSourceNetworkInterfaceArns(SourceNetworkInterfaceArns): {
    Properties+::: {
      SourceNetworkInterfaceArns+: SourceNetworkInterfaceArns,
    },
  },
  setDestinationNetworkInterfaceArns(DestinationNetworkInterfaceArns): {
    Properties+::: {
      DestinationNetworkInterfaceArns:
        if !std.isArray(DestinationNetworkInterfaceArns) then (error 'DestinationNetworkInterfaceArns must be an array')
        else if std.length(DestinationNetworkInterfaceArns) > 128 then error ('DestinationNetworkInterfaceArns cannot have more than 128 items')
        else DestinationNetworkInterfaceArns,
    },
  },
  pushDestinationNetworkInterfaceArns(DestinationNetworkInterfaceArns): {
    Properties+::: {
      DestinationNetworkInterfaceArns+: DestinationNetworkInterfaceArns,
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
