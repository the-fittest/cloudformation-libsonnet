{
  new(
    InstanceArn,
    HoursOfOperationArn,
    Name,
  ): {
    local base = self,
    Properties: {
      InstanceArn:
        if !std.isString(InstanceArn) then (error 'InstanceArn must be a string')
        else if std.isEmpty(InstanceArn) then (error 'InstanceArn must be not empty')
        else InstanceArn,
      HoursOfOperationArn:
        if !std.isString(HoursOfOperationArn) then (error 'HoursOfOperationArn must be a string')
        else if std.isEmpty(HoursOfOperationArn) then (error 'HoursOfOperationArn must be not empty')
        else HoursOfOperationArn,
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else if std.length(Name) < 1 then error ('Name should have at least 1 characters')
        else if std.length(Name) > 127 then error ('Name should have not more than 127 characters')
        else Name,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Connect::Queue',
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
  setType(Type): {
    Properties+::: {
      Type:
        if !std.isString(Type) then (error 'Type must be a string')
        else if std.isEmpty(Type) then (error 'Type must be not empty')
        else if Type != 'STANDARD' && Type != 'AGENT' then (error "Type should be 'STANDARD' or 'AGENT'")
        else Type,
    },
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else if std.length(Description) < 1 then error ('Description should have at least 1 characters')
        else if std.length(Description) > 250 then error ('Description should have not more than 250 characters')
        else Description,
    },
  },
  setQuickConnectArns(QuickConnectArns): {
    Properties+::: {
      QuickConnectArns:
        if !std.isArray(QuickConnectArns) then (error 'QuickConnectArns must be an array')
        else if std.length(QuickConnectArns) < 1 then error ('QuickConnectArns cannot have less than 1 items')
        else if std.length(QuickConnectArns) > 50 then error ('QuickConnectArns cannot have more than 50 items')
        else QuickConnectArns,
    },
  },
  pushQuickConnectArns(QuickConnectArns): {
    Properties+::: {
      QuickConnectArns+: QuickConnectArns,
    },
  },
  setOutboundCallerConfig(OutboundCallerConfig): {
    Properties+::: {
      OutboundCallerConfig:
        if !std.isObject(OutboundCallerConfig) then (error 'OutboundCallerConfig must be an object')
        else OutboundCallerConfig,
    },
  },
  setQueueArn(QueueArn): {
    Properties+::: {
      QueueArn:
        if !std.isString(QueueArn) then (error 'QueueArn must be a string')
        else if std.isEmpty(QueueArn) then (error 'QueueArn must be not empty')
        else QueueArn,
    },
  },
  setMaxContacts(MaxContacts): {
    Properties+::: {
      MaxContacts:
        if !std.isNumber(MaxContacts) then (error 'MaxContacts must be an number')
        else MaxContacts,
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
