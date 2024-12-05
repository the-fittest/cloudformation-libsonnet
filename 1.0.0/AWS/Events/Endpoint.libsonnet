{
  new(
    RoutingConfig,
    EventBuses,
  ): {
    local base = self,
    Properties: {
      RoutingConfig:
        if !std.isObject(RoutingConfig) then (error 'RoutingConfig must be an object')
        else if !std.objectHas(RoutingConfig, 'FailoverConfig') then (error ' have attribute FailoverConfig')
        else RoutingConfig,
      EventBuses:
        if !std.isArray(EventBuses) then (error 'EventBuses must be an array')
        else if std.length(EventBuses) < 2 then error ('EventBuses cannot have less than 2 items')
        else if std.length(EventBuses) > 2 then error ('EventBuses cannot have more than 2 items')
        else EventBuses,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Events::Endpoint',
  },
  setName(Name): {
    Properties+::: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else if std.length(Name) < 1 then error ('Name should have at least 1 characters')
        else if std.length(Name) > 64 then error ('Name should have not more than 64 characters')
        else Name,
    },
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else if std.length(Arn) < 1 then error ('Arn should have at least 1 characters')
        else if std.length(Arn) > 1600 then error ('Arn should have not more than 1600 characters')
        else Arn,
    },
  },
  setRoleArn(RoleArn): {
    Properties+::: {
      RoleArn:
        if !std.isString(RoleArn) then (error 'RoleArn must be a string')
        else if std.isEmpty(RoleArn) then (error 'RoleArn must be not empty')
        else if std.length(RoleArn) < 1 then error ('RoleArn should have at least 1 characters')
        else if std.length(RoleArn) > 256 then error ('RoleArn should have not more than 256 characters')
        else RoleArn,
    },
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else if std.length(Description) > 512 then error ('Description should have not more than 512 characters')
        else Description,
    },
  },
  setReplicationConfig(ReplicationConfig): {
    Properties+::: {
      ReplicationConfig:
        if !std.isObject(ReplicationConfig) then (error 'ReplicationConfig must be an object')
        else if !std.objectHas(ReplicationConfig, 'State') then (error ' have attribute State')
        else ReplicationConfig,
    },
  },
  setEndpointId(EndpointId): {
    Properties+::: {
      EndpointId:
        if !std.isString(EndpointId) then (error 'EndpointId must be a string')
        else if std.isEmpty(EndpointId) then (error 'EndpointId must be not empty')
        else if std.length(EndpointId) < 1 then error ('EndpointId should have at least 1 characters')
        else if std.length(EndpointId) > 50 then error ('EndpointId should have not more than 50 characters')
        else EndpointId,
    },
  },
  setEndpointUrl(EndpointUrl): {
    Properties+::: {
      EndpointUrl:
        if !std.isString(EndpointUrl) then (error 'EndpointUrl must be a string')
        else if std.isEmpty(EndpointUrl) then (error 'EndpointUrl must be not empty')
        else if std.length(EndpointUrl) < 1 then error ('EndpointUrl should have at least 1 characters')
        else if std.length(EndpointUrl) > 256 then error ('EndpointUrl should have not more than 256 characters')
        else EndpointUrl,
    },
  },
  setState(State): {
    Properties+::: {
      State:
        if !std.isString(State) then (error 'State must be a string')
        else if std.isEmpty(State) then (error 'State must be not empty')
        else if State != 'ACTIVE' && State != 'CREATING' && State != 'UPDATING' && State != 'DELETING' && State != 'CREATE_FAILED' && State != 'UPDATE_FAILED' then (error "State should be 'ACTIVE' or 'CREATING' or 'UPDATING' or 'DELETING' or 'CREATE_FAILED' or 'UPDATE_FAILED'")
        else State,
    },
  },
  setStateReason(StateReason): {
    Properties+::: {
      StateReason:
        if !std.isString(StateReason) then (error 'StateReason must be a string')
        else if std.isEmpty(StateReason) then (error 'StateReason must be not empty')
        else if std.length(StateReason) < 1 then error ('StateReason should have at least 1 characters')
        else if std.length(StateReason) > 512 then error ('StateReason should have not more than 512 characters')
        else StateReason,
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
