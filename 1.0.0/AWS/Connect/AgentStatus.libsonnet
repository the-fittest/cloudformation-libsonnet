{
  new(
    InstanceArn,
    Name,
    State,
  ): {
    local base = self,
    Properties: {
      InstanceArn:
        if !std.isString(InstanceArn) then (error 'InstanceArn must be a string')
        else if std.isEmpty(InstanceArn) then (error 'InstanceArn must be not empty')
        else InstanceArn,
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else if std.length(Name) < 1 then error ('Name should have at least 1 characters')
        else if std.length(Name) > 127 then error ('Name should have not more than 127 characters')
        else Name,
      State:
        if !std.isString(State) then (error 'State must be a string')
        else if std.isEmpty(State) then (error 'State must be not empty')
        else if State != 'ENABLED' && State != 'DISABLED' then (error "State should be 'ENABLED' or 'DISABLED'")
        else State,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Connect::AgentStatus',
  },
  setAgentStatusArn(AgentStatusArn): {
    Properties+::: {
      AgentStatusArn:
        if !std.isString(AgentStatusArn) then (error 'AgentStatusArn must be a string')
        else if std.isEmpty(AgentStatusArn) then (error 'AgentStatusArn must be not empty')
        else AgentStatusArn,
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
  setDisplayOrder(DisplayOrder): {
    Properties+::: {
      DisplayOrder:
        if !std.isNumber(DisplayOrder) then (error 'DisplayOrder must be an number')
        else if DisplayOrder < 1 then error ('DisplayOrder should be at least 1')
        else if DisplayOrder > 50 then error ('DisplayOrder should be not more than 50')
        else DisplayOrder,
    },
  },
  setType(Type): {
    Properties+::: {
      Type:
        if !std.isString(Type) then (error 'Type must be a string')
        else if std.isEmpty(Type) then (error 'Type must be not empty')
        else if Type != 'ROUTABLE' && Type != 'CUSTOM' && Type != 'OFFLINE' then (error "Type should be 'ROUTABLE' or 'CUSTOM' or 'OFFLINE'")
        else Type,
    },
  },
  setResetOrderNumber(ResetOrderNumber): {
    Properties+::: {
      ResetOrderNumber:
        if !std.isBoolean(ResetOrderNumber) then (error 'ResetOrderNumber must be a boolean') else ResetOrderNumber,
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
  setTagsMixin(Tags): {
    Properties+::: {
      Tags+: Tags,
    },
  },
  setLastModifiedRegion(LastModifiedRegion): {
    Properties+::: {
      LastModifiedRegion:
        if !std.isString(LastModifiedRegion) then (error 'LastModifiedRegion must be a string')
        else if std.isEmpty(LastModifiedRegion) then (error 'LastModifiedRegion must be not empty')
        else LastModifiedRegion,
    },
  },
  setLastModifiedTime(LastModifiedTime): {
    Properties+::: {
      LastModifiedTime:
        if !std.isNumber(LastModifiedTime) then (error 'LastModifiedTime must be an number')
        else LastModifiedTime,
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
