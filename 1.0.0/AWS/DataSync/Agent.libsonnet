{
  new(
  ): {
    local base = self,
    Properties: {
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::DataSync::Agent',
  },
  withAgentName(AgentName): {
    assert std.isString(AgentName) : 'AgentName must be a string',
    Properties+::: {
      AgentName: AgentName,
    },
  },
  withActivationKey(ActivationKey): {
    assert std.isString(ActivationKey) : 'ActivationKey must be a string',
    Properties+::: {
      ActivationKey: ActivationKey,
    },
  },
  withSecurityGroupArns(SecurityGroupArns): {
    Properties+::: {
      SecurityGroupArns: (if std.isArray(SecurityGroupArns) then SecurityGroupArns else [SecurityGroupArns]),
    },
  },
  withSecurityGroupArnsMixin(SecurityGroupArns): {
    Properties+::: {
      SecurityGroupArns+: (if std.isArray(SecurityGroupArns) then SecurityGroupArns else [SecurityGroupArns]),
    },
  },
  withSubnetArns(SubnetArns): {
    Properties+::: {
      SubnetArns: (if std.isArray(SubnetArns) then SubnetArns else [SubnetArns]),
    },
  },
  withSubnetArnsMixin(SubnetArns): {
    Properties+::: {
      SubnetArns+: (if std.isArray(SubnetArns) then SubnetArns else [SubnetArns]),
    },
  },
  withVpcEndpointId(VpcEndpointId): {
    assert std.isString(VpcEndpointId) : 'VpcEndpointId must be a string',
    Properties+::: {
      VpcEndpointId: VpcEndpointId,
    },
  },
  withEndpointType(EndpointType): {
    assert std.isString(EndpointType) : 'EndpointType must be a string',
    assert EndpointType == 'FIPS' || EndpointType == 'PUBLIC' || EndpointType == 'PRIVATE_LINK' : "EndpointType should be 'FIPS' or 'PUBLIC' or 'PRIVATE_LINK'",
    Properties+::: {
      EndpointType: EndpointType,
    },
  },
  withTags(Tags): {
    Properties+::: {
      Tags: (if std.isArray(Tags) then Tags else [Tags]),
    },
  },
  withTagsMixin(Tags): {
    Properties+::: {
      Tags+: (if std.isArray(Tags) then Tags else [Tags]),
    },
  },
  withAgentArn(AgentArn): {
    assert std.isString(AgentArn) : 'AgentArn must be a string',
    Properties+::: {
      AgentArn: AgentArn,
    },
  },
  withDependsOn(DependsOn): {
    Properties+::: {
      DependsOn: (if std.isArray(DependsOn) then DependsOn else [DependsOn]),
    },
  },
  withDependsOnMixin(DependsOn): {
    Properties+::: {
      DependsOn+: (if std.isArray(DependsOn) then DependsOn else [DependsOn]),
    },
  },
  withCreationPolicy(CreationPolicy): {
    Properties+::: {
      CreationPolicy: (if std.isArray(CreationPolicy) then CreationPolicy else [CreationPolicy]),
    },
  },
  withCreationPolicyMixin(CreationPolicy): {
    Properties+::: {
      CreationPolicy+: (if std.isArray(CreationPolicy) then CreationPolicy else [CreationPolicy]),
    },
  },
  withDeletionPolicy(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy: (if std.isArray(DeletionPolicy) then DeletionPolicy else [DeletionPolicy]),
    },
  },
  withDeletionPolicyMixin(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy+: (if std.isArray(DeletionPolicy) then DeletionPolicy else [DeletionPolicy]),
    },
  },
  withUpdatePolicy(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy: (if std.isArray(UpdatePolicy) then UpdatePolicy else [UpdatePolicy]),
    },
  },
  withUpdatePolicyMixin(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy+: (if std.isArray(UpdatePolicy) then UpdatePolicy else [UpdatePolicy]),
    },
  },
  withUpdateReplacePolicy(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy: (if std.isArray(UpdateReplacePolicy) then UpdateReplacePolicy else [UpdateReplacePolicy]),
    },
  },
  withUpdateReplacePolicyMixin(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy+: (if std.isArray(UpdateReplacePolicy) then UpdateReplacePolicy else [UpdateReplacePolicy]),
    },
  },
  withMetadata(Metadata): {
    Properties+::: {
      Metadata: (if std.isArray(Metadata) then Metadata else [Metadata]),
    },
  },
  withMetadataMixin(Metadata): {
    Properties+::: {
      Metadata+: (if std.isArray(Metadata) then Metadata else [Metadata]),
    },
  },
}
