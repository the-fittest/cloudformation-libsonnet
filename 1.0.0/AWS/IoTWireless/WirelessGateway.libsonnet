{
  new(
    LoRaWAN,
  ): {
    local base = self,
    Properties: {
      LoRaWAN:
        if !std.isObject(LoRaWAN) then (error 'LoRaWAN must be an object')
        else if !std.objectHas(LoRaWAN, 'GatewayEui') then (error ' have attribute GatewayEui')
        else if !std.objectHas(LoRaWAN, 'RfRegion') then (error ' have attribute RfRegion')
        else LoRaWAN,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::IoTWireless::WirelessGateway',
  },
  setName(Name): {
    Properties+::: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else if std.length(Name) > 256 then error ('Name should have not more than 256 characters')
        else Name,
    },
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else if std.length(Description) > 2048 then error ('Description should have not more than 2048 characters')
        else Description,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else if std.length(Tags) > 200 then error ('Tags cannot have more than 200 items')
        else Tags,
    },
  },
  pushTags(Tags): {
    Properties+::: {
      Tags+: Tags,
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
  setId(Id): {
    Properties+::: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else if std.length(Id) > 256 then error ('Id should have not more than 256 characters')
        else Id,
    },
  },
  setThingArn(ThingArn): {
    Properties+::: {
      ThingArn:
        if !std.isString(ThingArn) then (error 'ThingArn must be a string')
        else if std.isEmpty(ThingArn) then (error 'ThingArn must be not empty')
        else ThingArn,
    },
  },
  setThingName(ThingName): {
    Properties+::: {
      ThingName:
        if !std.isString(ThingName) then (error 'ThingName must be a string')
        else if std.isEmpty(ThingName) then (error 'ThingName must be not empty')
        else ThingName,
    },
  },
  setLastUplinkReceivedAt(LastUplinkReceivedAt): {
    Properties+::: {
      LastUplinkReceivedAt:
        if !std.isString(LastUplinkReceivedAt) then (error 'LastUplinkReceivedAt must be a string')
        else if std.isEmpty(LastUplinkReceivedAt) then (error 'LastUplinkReceivedAt must be not empty')
        else LastUplinkReceivedAt,
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
