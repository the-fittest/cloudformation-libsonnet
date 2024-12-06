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
    Type: 'AWS::Logs::DeliveryDestination',
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
  setDestinationResourceArn(DestinationResourceArn): {
    Properties+::: {
      DestinationResourceArn:
        if !std.isString(DestinationResourceArn) then (error 'DestinationResourceArn must be a string')
        else if std.isEmpty(DestinationResourceArn) then (error 'DestinationResourceArn must be not empty')
        else if std.length(DestinationResourceArn) < 16 then error ('DestinationResourceArn should have at least 16 characters')
        else if std.length(DestinationResourceArn) > 2048 then error ('DestinationResourceArn should have not more than 2048 characters')
        else DestinationResourceArn,
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
  setDeliveryDestinationType(DeliveryDestinationType): {
    Properties+::: {
      DeliveryDestinationType:
        if !std.isString(DeliveryDestinationType) then (error 'DeliveryDestinationType must be a string')
        else if std.isEmpty(DeliveryDestinationType) then (error 'DeliveryDestinationType must be not empty')
        else if std.length(DeliveryDestinationType) < 1 then error ('DeliveryDestinationType should have at least 1 characters')
        else if std.length(DeliveryDestinationType) > 12 then error ('DeliveryDestinationType should have not more than 12 characters')
        else DeliveryDestinationType,
    },
  },
  setDeliveryDestinationPolicy(DeliveryDestinationPolicy): {
    Properties+::: {
      DeliveryDestinationPolicy:
        if !std.isObject(DeliveryDestinationPolicy) then (error 'DeliveryDestinationPolicy must be an object')
        else DeliveryDestinationPolicy,
    },
  },
  setOutputFormat(OutputFormat): {
    Properties+::: {
      OutputFormat:
        if !std.isString(OutputFormat) then (error 'OutputFormat must be a string')
        else if std.isEmpty(OutputFormat) then (error 'OutputFormat must be not empty')
        else if std.length(OutputFormat) < 1 then error ('OutputFormat should have at least 1 characters')
        else if std.length(OutputFormat) > 12 then error ('OutputFormat should have not more than 12 characters')
        else OutputFormat,
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
