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
    Type: 'AWS::SageMaker::Workteam',
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else Description,
    },
  },
  setNotificationConfiguration(NotificationConfiguration): {
    Properties+::: {
      NotificationConfiguration:
        if !std.isObject(NotificationConfiguration) then (error 'NotificationConfiguration must be an object')
        else if !std.objectHas(NotificationConfiguration, 'NotificationTopicArn') then (error ' have attribute NotificationTopicArn')
        else NotificationConfiguration,
    },
  },
  setWorkteamName(WorkteamName): {
    Properties+::: {
      WorkteamName:
        if !std.isString(WorkteamName) then (error 'WorkteamName must be a string')
        else if std.isEmpty(WorkteamName) then (error 'WorkteamName must be not empty')
        else WorkteamName,
    },
  },
  setMemberDefinitions(MemberDefinitions): {
    Properties+::: {
      MemberDefinitions:
        if !std.isArray(MemberDefinitions) then (error 'MemberDefinitions must be an array')
        else MemberDefinitions,
    },
  },
  setMemberDefinitionsMixin(MemberDefinitions): {
    Properties+::: {
      MemberDefinitions+: MemberDefinitions,
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
  setWorkforceName(WorkforceName): {
    Properties+::: {
      WorkforceName:
        if !std.isString(WorkforceName) then (error 'WorkforceName must be a string')
        else if std.isEmpty(WorkforceName) then (error 'WorkforceName must be not empty')
        else WorkforceName,
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
