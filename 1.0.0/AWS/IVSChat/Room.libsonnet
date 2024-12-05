{
  new(): {
    local base = self,
    Properties:: {},
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::IVSChat::Room',
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else if std.length(Arn) < 1 then error ('Arn should have at least 1 characters')
        else if std.length(Arn) > 128 then error ('Arn should have not more than 128 characters')
        else Arn,
    },
  },
  setId(Id): {
    Properties+::: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else if std.length(Id) < 12 then error ('Id should have at least 12 characters')
        else if std.length(Id) > 12 then error ('Id should have not more than 12 characters')
        else Id,
    },
  },
  setName(Name): {
    Properties+::: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else if std.length(Name) > 128 then error ('Name should have not more than 128 characters')
        else Name,
    },
  },
  setLoggingConfigurationIdentifiers(LoggingConfigurationIdentifiers): {
    Properties+::: {
      LoggingConfigurationIdentifiers:
        if !std.isArray(LoggingConfigurationIdentifiers) then (error 'LoggingConfigurationIdentifiers must be an array')
        else if std.length(LoggingConfigurationIdentifiers) > 50 then error ('LoggingConfigurationIdentifiers cannot have more than 50 items')
        else LoggingConfigurationIdentifiers,
    },
  },
  setLoggingConfigurationIdentifiersMixin(LoggingConfigurationIdentifiers): {
    Properties+::: {
      LoggingConfigurationIdentifiers+: LoggingConfigurationIdentifiers,
    },
  },
  setMaximumMessageLength(MaximumMessageLength): {
    Properties+::: {
      MaximumMessageLength:
        if !std.isNumber(MaximumMessageLength) then (error 'MaximumMessageLength must be an number')
        else if MaximumMessageLength < 1 then error ('MaximumMessageLength should be at least 1')
        else if MaximumMessageLength > 500 then error ('MaximumMessageLength should be not more than 500')
        else MaximumMessageLength,
    },
  },
  setMaximumMessageRatePerSecond(MaximumMessageRatePerSecond): {
    Properties+::: {
      MaximumMessageRatePerSecond:
        if !std.isNumber(MaximumMessageRatePerSecond) then (error 'MaximumMessageRatePerSecond must be an number')
        else if MaximumMessageRatePerSecond < 1 then error ('MaximumMessageRatePerSecond should be at least 1')
        else if MaximumMessageRatePerSecond > 10 then error ('MaximumMessageRatePerSecond should be not more than 10')
        else MaximumMessageRatePerSecond,
    },
  },
  setMessageReviewHandler(MessageReviewHandler): {
    Properties+::: {
      MessageReviewHandler:
        if !std.isObject(MessageReviewHandler) then (error 'MessageReviewHandler must be an object')
        else MessageReviewHandler,
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
