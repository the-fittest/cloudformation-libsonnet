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
    Type: 'AWS::MediaLive::Channel',
  },
  setInputAttachments(InputAttachments): {
    Properties+::: {
      InputAttachments:
        if !std.isArray(InputAttachments) then (error 'InputAttachments must be an array')
        else InputAttachments,
    },
  },
  pushInputAttachments(InputAttachments): {
    Properties+::: {
      InputAttachments+: InputAttachments,
    },
  },
  setInputSpecification(InputSpecification): {
    Properties+::: {
      InputSpecification:
        if !std.isObject(InputSpecification) then (error 'InputSpecification must be an object')
        else InputSpecification,
    },
  },
  setDestinations(Destinations): {
    Properties+::: {
      Destinations:
        if !std.isArray(Destinations) then (error 'Destinations must be an array')
        else Destinations,
    },
  },
  pushDestinations(Destinations): {
    Properties+::: {
      Destinations+: Destinations,
    },
  },
  setVpc(Vpc): {
    Properties+::: {
      Vpc:
        if !std.isObject(Vpc) then (error 'Vpc must be an object')
        else Vpc,
    },
  },
  setMaintenance(Maintenance): {
    Properties+::: {
      Maintenance:
        if !std.isObject(Maintenance) then (error 'Maintenance must be an object')
        else Maintenance,
    },
  },
  setLogLevel(LogLevel): {
    Properties+::: {
      LogLevel:
        if !std.isString(LogLevel) then (error 'LogLevel must be a string')
        else if std.isEmpty(LogLevel) then (error 'LogLevel must be not empty')
        else LogLevel,
    },
  },
  setRoleArn(RoleArn): {
    Properties+::: {
      RoleArn:
        if !std.isString(RoleArn) then (error 'RoleArn must be a string')
        else if std.isEmpty(RoleArn) then (error 'RoleArn must be not empty')
        else RoleArn,
    },
  },
  setName(Name): {
    Properties+::: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else Name,
    },
  },
  setChannelClass(ChannelClass): {
    Properties+::: {
      ChannelClass:
        if !std.isString(ChannelClass) then (error 'ChannelClass must be a string')
        else if std.isEmpty(ChannelClass) then (error 'ChannelClass must be not empty')
        else ChannelClass,
    },
  },
  setEncoderSettings(EncoderSettings): {
    Properties+::: {
      EncoderSettings:
        if !std.isObject(EncoderSettings) then (error 'EncoderSettings must be an object')
        else EncoderSettings,
    },
  },
  setAnywhereSettings(AnywhereSettings): {
    Properties+::: {
      AnywhereSettings:
        if !std.isObject(AnywhereSettings) then (error 'AnywhereSettings must be an object')
        else AnywhereSettings,
    },
  },
  setCdiInputSpecification(CdiInputSpecification): {
    Properties+::: {
      CdiInputSpecification:
        if !std.isObject(CdiInputSpecification) then (error 'CdiInputSpecification must be an object')
        else CdiInputSpecification,
    },
  },
  setId(Id): {
    Properties+::: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else Id,
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
  setInputs(Inputs): {
    Properties+::: {
      Inputs:
        if !std.isArray(Inputs) then (error 'Inputs must be an array')
        else Inputs,
    },
  },
  pushInputs(Inputs): {
    Properties+::: {
      Inputs+: Inputs,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isObject(Tags) then (error 'Tags must be an object')
        else Tags,
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
