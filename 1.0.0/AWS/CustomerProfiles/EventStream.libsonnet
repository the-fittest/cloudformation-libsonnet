{
  new(
    DomainName,
    EventStreamName,
    Uri,
  ): {
    local base = self,
    Properties: {
      DomainName:
        if !std.isString(DomainName) then (error 'DomainName must be a string')
        else if std.isEmpty(DomainName) then (error 'DomainName must be not empty')
        else if std.length(DomainName) < 1 then error ('DomainName should have at least 1 characters')
        else if std.length(DomainName) > 64 then error ('DomainName should have not more than 64 characters')
        else DomainName,
      EventStreamName:
        if !std.isString(EventStreamName) then (error 'EventStreamName must be a string')
        else if std.isEmpty(EventStreamName) then (error 'EventStreamName must be not empty')
        else if std.length(EventStreamName) < 1 then error ('EventStreamName should have at least 1 characters')
        else if std.length(EventStreamName) > 255 then error ('EventStreamName should have not more than 255 characters')
        else EventStreamName,
      Uri:
        if !std.isString(Uri) then (error 'Uri must be a string')
        else if std.isEmpty(Uri) then (error 'Uri must be not empty')
        else if std.length(Uri) < 1 then error ('Uri should have at least 1 characters')
        else if std.length(Uri) > 255 then error ('Uri should have not more than 255 characters')
        else Uri,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::CustomerProfiles::EventStream',
  },
  setEventStreamArn(EventStreamArn): {
    Properties+::: {
      EventStreamArn:
        if !std.isString(EventStreamArn) then (error 'EventStreamArn must be a string')
        else if std.isEmpty(EventStreamArn) then (error 'EventStreamArn must be not empty')
        else if std.length(EventStreamArn) < 1 then error ('EventStreamArn should have at least 1 characters')
        else if std.length(EventStreamArn) > 255 then error ('EventStreamArn should have not more than 255 characters')
        else EventStreamArn,
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
  setCreatedAt(CreatedAt): {
    Properties+::: {
      CreatedAt:
        if !std.isString(CreatedAt) then (error 'CreatedAt must be a string')
        else if std.isEmpty(CreatedAt) then (error 'CreatedAt must be not empty')
        else CreatedAt,
    },
  },
  setState(State): {
    Properties+::: {
      State:
        if !std.isString(State) then (error 'State must be a string')
        else if std.isEmpty(State) then (error 'State must be not empty')
        else if State != 'RUNNING' && State != 'STOPPED' then (error "State should be 'RUNNING' or 'STOPPED'")
        else State,
    },
  },
  setDestinationDetails(DestinationDetails): {
    Properties+::: {
      DestinationDetails:
        if !std.isObject(DestinationDetails) then (error 'DestinationDetails must be an object')
        else if !std.objectHas(DestinationDetails, 'Uri') then (error ' have attribute Uri')
        else if !std.objectHas(DestinationDetails, 'Status') then (error ' have attribute Status')
        else DestinationDetails,
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
