{
  new(
    FirewallName,
    FirewallPolicyArn,
    VpcId,
    SubnetMappings,
  ): {
    local base = self,
    Properties: {
      FirewallName:
        if !std.isString(FirewallName) then (error 'FirewallName must be a string')
        else if std.isEmpty(FirewallName) then (error 'FirewallName must be not empty')
        else if std.length(FirewallName) < 1 then error ('FirewallName should have at least 1 characters')
        else if std.length(FirewallName) > 128 then error ('FirewallName should have not more than 128 characters')
        else FirewallName,
      FirewallPolicyArn:
        if !std.isString(FirewallPolicyArn) then (error 'FirewallPolicyArn must be a string')
        else if std.isEmpty(FirewallPolicyArn) then (error 'FirewallPolicyArn must be not empty')
        else if std.length(FirewallPolicyArn) < 1 then error ('FirewallPolicyArn should have at least 1 characters')
        else if std.length(FirewallPolicyArn) > 256 then error ('FirewallPolicyArn should have not more than 256 characters')
        else FirewallPolicyArn,
      VpcId:
        if !std.isString(VpcId) then (error 'VpcId must be a string')
        else if std.isEmpty(VpcId) then (error 'VpcId must be not empty')
        else if std.length(VpcId) < 1 then error ('VpcId should have at least 1 characters')
        else if std.length(VpcId) > 128 then error ('VpcId should have not more than 128 characters')
        else VpcId,
      SubnetMappings:
        if !std.isArray(SubnetMappings) then (error 'SubnetMappings must be an array')
        else if std.length(SubnetMappings) < 1 then error ('SubnetMappings cannot have less than 1 items')
        else SubnetMappings,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::NetworkFirewall::Firewall',
  },
  setFirewallArn(FirewallArn): {
    Properties+::: {
      FirewallArn:
        if !std.isString(FirewallArn) then (error 'FirewallArn must be a string')
        else if std.isEmpty(FirewallArn) then (error 'FirewallArn must be not empty')
        else if std.length(FirewallArn) < 1 then error ('FirewallArn should have at least 1 characters')
        else if std.length(FirewallArn) > 256 then error ('FirewallArn should have not more than 256 characters')
        else FirewallArn,
    },
  },
  setFirewallId(FirewallId): {
    Properties+::: {
      FirewallId:
        if !std.isString(FirewallId) then (error 'FirewallId must be a string')
        else if std.isEmpty(FirewallId) then (error 'FirewallId must be not empty')
        else if std.length(FirewallId) < 36 then error ('FirewallId should have at least 36 characters')
        else if std.length(FirewallId) > 36 then error ('FirewallId should have not more than 36 characters')
        else FirewallId,
    },
  },
  setDeleteProtection(DeleteProtection): {
    Properties+::: {
      DeleteProtection:
        if !std.isBoolean(DeleteProtection) then (error 'DeleteProtection must be a boolean') else DeleteProtection,
    },
  },
  setSubnetChangeProtection(SubnetChangeProtection): {
    Properties+::: {
      SubnetChangeProtection:
        if !std.isBoolean(SubnetChangeProtection) then (error 'SubnetChangeProtection must be a boolean') else SubnetChangeProtection,
    },
  },
  setFirewallPolicyChangeProtection(FirewallPolicyChangeProtection): {
    Properties+::: {
      FirewallPolicyChangeProtection:
        if !std.isBoolean(FirewallPolicyChangeProtection) then (error 'FirewallPolicyChangeProtection must be a boolean') else FirewallPolicyChangeProtection,
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
  setEndpointIds(EndpointIds): {
    Properties+::: {
      EndpointIds:
        if !std.isArray(EndpointIds) then (error 'EndpointIds must be an array')
        else EndpointIds,
    },
  },
  setEndpointIdsMixin(EndpointIds): {
    Properties+::: {
      EndpointIds+: EndpointIds,
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
