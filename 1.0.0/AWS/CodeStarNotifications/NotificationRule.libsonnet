{
  new(
    EventTypeIds,
    Resource,
    DetailType,
    Targets,
    Name,
  ): {
    local base = self,
    Properties: {
      EventTypeIds:
        if !std.isArray(EventTypeIds) then (error 'EventTypeIds must be an array')
        else EventTypeIds,
      Resource:
        if !std.isString(Resource) then (error 'Resource must be a string')
        else if std.isEmpty(Resource) then (error 'Resource must be not empty')
        else Resource,
      DetailType:
        if !std.isString(DetailType) then (error 'DetailType must be a string')
        else if std.isEmpty(DetailType) then (error 'DetailType must be not empty')
        else if DetailType != 'BASIC' && DetailType != 'FULL' then (error "DetailType should be 'BASIC' or 'FULL'")
        else DetailType,
      Targets:
        if !std.isArray(Targets) then (error 'Targets must be an array')
        else if std.length(Targets) > 10 then error ('Targets cannot have more than 10 items')
        else Targets,
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else if std.length(Name) < 1 then error ('Name should have at least 1 characters')
        else if std.length(Name) > 64 then error ('Name should have not more than 64 characters')
        else Name,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::CodeStarNotifications::NotificationRule',
  },
  setEventTypeId(EventTypeId): {
    Properties+::: {
      EventTypeId:
        if !std.isString(EventTypeId) then (error 'EventTypeId must be a string')
        else if std.isEmpty(EventTypeId) then (error 'EventTypeId must be not empty')
        else if std.length(EventTypeId) < 1 then error ('EventTypeId should have at least 1 characters')
        else if std.length(EventTypeId) > 2048 then error ('EventTypeId should have not more than 2048 characters')
        else EventTypeId,
    },
  },
  setCreatedBy(CreatedBy): {
    Properties+::: {
      CreatedBy:
        if !std.isString(CreatedBy) then (error 'CreatedBy must be a string')
        else if std.isEmpty(CreatedBy) then (error 'CreatedBy must be not empty')
        else if std.length(CreatedBy) < 1 then error ('CreatedBy should have at least 1 characters')
        else if std.length(CreatedBy) > 2048 then error ('CreatedBy should have not more than 2048 characters')
        else CreatedBy,
    },
  },
  setTargetAddress(TargetAddress): {
    Properties+::: {
      TargetAddress:
        if !std.isString(TargetAddress) then (error 'TargetAddress must be a string')
        else if std.isEmpty(TargetAddress) then (error 'TargetAddress must be not empty')
        else if std.length(TargetAddress) < 1 then error ('TargetAddress should have at least 1 characters')
        else if std.length(TargetAddress) > 2048 then error ('TargetAddress should have not more than 2048 characters')
        else TargetAddress,
    },
  },
  setStatus(Status): {
    Properties+::: {
      Status:
        if !std.isString(Status) then (error 'Status must be a string')
        else if std.isEmpty(Status) then (error 'Status must be not empty')
        else if Status != 'ENABLED' && Status != 'DISABLED' then (error "Status should be 'ENABLED' or 'DISABLED'")
        else Status,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isObject(Tags) then (error 'Tags must be an object')
        else Tags,
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
