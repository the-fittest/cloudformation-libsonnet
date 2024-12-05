{
  new(
    AcceleratorArn,
    PortRanges,
    Protocol,
  ): {
    local base = self,
    Properties: {
      AcceleratorArn:
        if !std.isString(AcceleratorArn) then (error 'AcceleratorArn must be a string')
        else if std.isEmpty(AcceleratorArn) then (error 'AcceleratorArn must be not empty')
        else AcceleratorArn,
      PortRanges:
        if !std.isArray(PortRanges) then (error 'PortRanges must be an array')
        else PortRanges,
      Protocol:
        if !std.isString(Protocol) then (error 'Protocol must be a string')
        else if std.isEmpty(Protocol) then (error 'Protocol must be not empty')
        else if Protocol != 'TCP' && Protocol != 'UDP' then (error "Protocol should be 'TCP' or 'UDP'")
        else Protocol,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::GlobalAccelerator::Listener',
  },
  setListenerArn(ListenerArn): {
    Properties+::: {
      ListenerArn:
        if !std.isString(ListenerArn) then (error 'ListenerArn must be a string')
        else if std.isEmpty(ListenerArn) then (error 'ListenerArn must be not empty')
        else ListenerArn,
    },
  },
  setClientAffinity(ClientAffinity): {
    Properties+::: {
      ClientAffinity:
        if !std.isString(ClientAffinity) then (error 'ClientAffinity must be a string')
        else if std.isEmpty(ClientAffinity) then (error 'ClientAffinity must be not empty')
        else if ClientAffinity != 'NONE' && ClientAffinity != 'SOURCE_IP' then (error "ClientAffinity should be 'NONE' or 'SOURCE_IP'")
        else ClientAffinity,
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
