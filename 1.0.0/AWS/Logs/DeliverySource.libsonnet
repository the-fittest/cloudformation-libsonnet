{
  new(
    Name,
  ): {
    local base = self,
    Properties: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else if std.length(Name) < 1 then error ('Name should have at least 1 characters')
        else if std.length(Name) > 60 then error ('Name should have not more than 60 characters')
        else Name,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Logs::DeliverySource',
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else if std.length(Arn) < 16 then error ('Arn should have at least 16 characters')
        else if std.length(Arn) > 2048 then error ('Arn should have not more than 2048 characters')
        else Arn,
    },
  },
  setResourceArns(ResourceArns): {
    Properties+::: {
      ResourceArns:
        if !std.isArray(ResourceArns) then (error 'ResourceArns must be an array')
        else ResourceArns,
    },
  },
  pushResourceArns(ResourceArns): {
    Properties+::: {
      ResourceArns+: ResourceArns,
    },
  },
  setResourceArn(ResourceArn): {
    Properties+::: {
      ResourceArn:
        if !std.isString(ResourceArn) then (error 'ResourceArn must be a string')
        else if std.isEmpty(ResourceArn) then (error 'ResourceArn must be not empty')
        else if std.length(ResourceArn) < 16 then error ('ResourceArn should have at least 16 characters')
        else if std.length(ResourceArn) > 2048 then error ('ResourceArn should have not more than 2048 characters')
        else ResourceArn,
    },
  },
  setService(Service): {
    Properties+::: {
      Service:
        if !std.isString(Service) then (error 'Service must be a string')
        else if std.isEmpty(Service) then (error 'Service must be not empty')
        else if std.length(Service) < 1 then error ('Service should have at least 1 characters')
        else if std.length(Service) > 255 then error ('Service should have not more than 255 characters')
        else Service,
    },
  },
  setLogType(LogType): {
    Properties+::: {
      LogType:
        if !std.isString(LogType) then (error 'LogType must be a string')
        else if std.isEmpty(LogType) then (error 'LogType must be not empty')
        else if std.length(LogType) < 1 then error ('LogType should have at least 1 characters')
        else if std.length(LogType) > 255 then error ('LogType should have not more than 255 characters')
        else LogType,
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
