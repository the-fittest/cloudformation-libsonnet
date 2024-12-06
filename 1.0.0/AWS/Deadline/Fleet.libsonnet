{
  new(
    Configuration,
    DisplayName,
    FarmId,
    MaxWorkerCount,
    RoleArn,
  ): {
    local base = self,
    Properties: {
      Configuration: Configuration,
      DisplayName:
        if !std.isString(DisplayName) then (error 'DisplayName must be a string')
        else if std.isEmpty(DisplayName) then (error 'DisplayName must be not empty')
        else if std.length(DisplayName) < 1 then error ('DisplayName should have at least 1 characters')
        else if std.length(DisplayName) > 100 then error ('DisplayName should have not more than 100 characters')
        else DisplayName,
      FarmId:
        if !std.isString(FarmId) then (error 'FarmId must be a string')
        else if std.isEmpty(FarmId) then (error 'FarmId must be not empty')
        else FarmId,
      MaxWorkerCount:
        if !std.isNumber(MaxWorkerCount) then (error 'MaxWorkerCount must be an number')
        else if MaxWorkerCount > 2147483647 then error ('MaxWorkerCount should be not more than 2147483647')
        else MaxWorkerCount,
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
    Type: 'AWS::Deadline::Fleet',
  },
  setCapabilities(Capabilities): {
    Properties+::: {
      Capabilities:
        if !std.isObject(Capabilities) then (error 'Capabilities must be an object')
        else Capabilities,
    },
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else if std.length(Description) > 100 then error ('Description should have not more than 100 characters')
        else Description,
    },
  },
  setFleetId(FleetId): {
    Properties+::: {
      FleetId:
        if !std.isString(FleetId) then (error 'FleetId must be a string')
        else if std.isEmpty(FleetId) then (error 'FleetId must be not empty')
        else FleetId,
    },
  },
  setMinWorkerCount(MinWorkerCount): {
    Properties+::: {
      MinWorkerCount:
        if !std.isNumber(MinWorkerCount) then (error 'MinWorkerCount must be an number')
        else if MinWorkerCount > 2147483647 then error ('MinWorkerCount should be not more than 2147483647')
        else MinWorkerCount,
    },
  },
  setStatus(Status): {
    Properties+::: {
      Status:
        if !std.isString(Status) then (error 'Status must be a string')
        else if std.isEmpty(Status) then (error 'Status must be not empty')
        else if Status != 'ACTIVE' && Status != 'CREATE_IN_PROGRESS' && Status != 'UPDATE_IN_PROGRESS' && Status != 'CREATE_FAILED' && Status != 'UPDATE_FAILED' then (error "Status should be 'ACTIVE' or 'CREATE_IN_PROGRESS' or 'UPDATE_IN_PROGRESS' or 'CREATE_FAILED' or 'UPDATE_FAILED'")
        else Status,
    },
  },
  setWorkerCount(WorkerCount): {
    Properties+::: {
      WorkerCount:
        if !std.isNumber(WorkerCount) then (error 'WorkerCount must be an number')
        else WorkerCount,
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
