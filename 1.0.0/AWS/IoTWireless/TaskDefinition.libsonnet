{
  new(
    AutoCreateTasks,
  ): {
    local base = self,
    Properties: {
      AutoCreateTasks:
        if !std.isBoolean(AutoCreateTasks) then (error 'AutoCreateTasks must be a boolean') else AutoCreateTasks,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::IoTWireless::TaskDefinition',
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
  setUpdate(Update): {
    Properties+::: {
      Update:
        if !std.isObject(Update) then (error 'Update must be an object')
        else Update,
    },
  },
  setLoRaWANUpdateGatewayTaskEntry(LoRaWANUpdateGatewayTaskEntry): {
    Properties+::: {
      LoRaWANUpdateGatewayTaskEntry:
        if !std.isObject(LoRaWANUpdateGatewayTaskEntry) then (error 'LoRaWANUpdateGatewayTaskEntry must be an object')
        else LoRaWANUpdateGatewayTaskEntry,
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
  setTaskDefinitionType(TaskDefinitionType): {
    Properties+::: {
      TaskDefinitionType:
        if !std.isString(TaskDefinitionType) then (error 'TaskDefinitionType must be a string')
        else if std.isEmpty(TaskDefinitionType) then (error 'TaskDefinitionType must be not empty')
        else if TaskDefinitionType != 'UPDATE' then (error "TaskDefinitionType should be 'UPDATE'")
        else TaskDefinitionType,
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
        else if std.length(Tags) > 200 then error ('Tags cannot have more than 200 items')
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
