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
    Type: 'AWS::DataSync::Agent',
  },
  setAgentName(AgentName): {
    Properties+::: {
      AgentName:
        if !std.isString(AgentName) then (error 'AgentName must be a string')
        else if std.isEmpty(AgentName) then (error 'AgentName must be not empty')
        else if std.length(AgentName) > 256 then error ('AgentName should have not more than 256 characters')
        else AgentName,
    },
  },
  setActivationKey(ActivationKey): {
    Properties+::: {
      ActivationKey:
        if !std.isString(ActivationKey) then (error 'ActivationKey must be a string')
        else if std.isEmpty(ActivationKey) then (error 'ActivationKey must be not empty')
        else if std.length(ActivationKey) > 29 then error ('ActivationKey should have not more than 29 characters')
        else ActivationKey,
    },
  },
  setSecurityGroupArns(SecurityGroupArns): {
    Properties+::: {
      SecurityGroupArns:
        if !std.isArray(SecurityGroupArns) then (error 'SecurityGroupArns must be an array')
        else SecurityGroupArns,
    },
  },
  pushSecurityGroupArns(SecurityGroupArns): {
    Properties+::: {
      SecurityGroupArns+: SecurityGroupArns,
    },
  },
  setSubnetArns(SubnetArns): {
    Properties+::: {
      SubnetArns:
        if !std.isArray(SubnetArns) then (error 'SubnetArns must be an array')
        else SubnetArns,
    },
  },
  pushSubnetArns(SubnetArns): {
    Properties+::: {
      SubnetArns+: SubnetArns,
    },
  },
  setVpcEndpointId(VpcEndpointId): {
    Properties+::: {
      VpcEndpointId:
        if !std.isString(VpcEndpointId) then (error 'VpcEndpointId must be a string')
        else if std.isEmpty(VpcEndpointId) then (error 'VpcEndpointId must be not empty')
        else VpcEndpointId,
    },
  },
  setEndpointType(EndpointType): {
    Properties+::: {
      EndpointType:
        if !std.isString(EndpointType) then (error 'EndpointType must be a string')
        else if std.isEmpty(EndpointType) then (error 'EndpointType must be not empty')
        else if EndpointType != 'FIPS' && EndpointType != 'PUBLIC' && EndpointType != 'PRIVATE_LINK' then (error "EndpointType should be 'FIPS' or 'PUBLIC' or 'PRIVATE_LINK'")
        else EndpointType,
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
  setAgentArn(AgentArn): {
    Properties+::: {
      AgentArn:
        if !std.isString(AgentArn) then (error 'AgentArn must be a string')
        else if std.isEmpty(AgentArn) then (error 'AgentArn must be not empty')
        else if std.length(AgentArn) > 128 then error ('AgentArn should have not more than 128 characters')
        else AgentArn,
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
