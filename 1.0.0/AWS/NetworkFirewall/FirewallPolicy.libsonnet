{
  new(
    FirewallPolicyName,
    FirewallPolicy,
  ): {
    local base = self,
    Properties: {
      FirewallPolicyName:
        if !std.isString(FirewallPolicyName) then (error 'FirewallPolicyName must be a string')
        else if std.isEmpty(FirewallPolicyName) then (error 'FirewallPolicyName must be not empty')
        else if std.length(FirewallPolicyName) < 1 then error ('FirewallPolicyName should have at least 1 characters')
        else if std.length(FirewallPolicyName) > 128 then error ('FirewallPolicyName should have not more than 128 characters')
        else FirewallPolicyName,
      FirewallPolicy:
        if !std.isObject(FirewallPolicy) then (error 'FirewallPolicy must be an object')
        else if !std.objectHas(FirewallPolicy, 'StatelessDefaultActions') then (error ' have attribute StatelessDefaultActions')
        else if !std.objectHas(FirewallPolicy, 'StatelessFragmentDefaultActions') then (error ' have attribute StatelessFragmentDefaultActions')
        else FirewallPolicy,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::NetworkFirewall::FirewallPolicy',
  },
  setFirewallPolicyArn(FirewallPolicyArn): {
    Properties+::: {
      FirewallPolicyArn:
        if !std.isString(FirewallPolicyArn) then (error 'FirewallPolicyArn must be a string')
        else if std.isEmpty(FirewallPolicyArn) then (error 'FirewallPolicyArn must be not empty')
        else if std.length(FirewallPolicyArn) < 1 then error ('FirewallPolicyArn should have at least 1 characters')
        else if std.length(FirewallPolicyArn) > 256 then error ('FirewallPolicyArn should have not more than 256 characters')
        else FirewallPolicyArn,
    },
  },
  setFirewallPolicyId(FirewallPolicyId): {
    Properties+::: {
      FirewallPolicyId:
        if !std.isString(FirewallPolicyId) then (error 'FirewallPolicyId must be a string')
        else if std.isEmpty(FirewallPolicyId) then (error 'FirewallPolicyId must be not empty')
        else if std.length(FirewallPolicyId) < 36 then error ('FirewallPolicyId should have at least 36 characters')
        else if std.length(FirewallPolicyId) > 36 then error ('FirewallPolicyId should have not more than 36 characters')
        else FirewallPolicyId,
    },
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else if std.length(Description) < 1 then error ('Description should have at least 1 characters')
        else if std.length(Description) > 512 then error ('Description should have not more than 512 characters')
        else Description,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else Tags,
    },
  },
  pushTags(Tags): {
    Properties+::: {
      Tags+: Tags,
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
