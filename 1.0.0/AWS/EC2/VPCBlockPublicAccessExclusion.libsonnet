{
  new(
    InternetGatewayExclusionMode,
  ): {
    local base = self,
    Properties: {
      InternetGatewayExclusionMode:
        if !std.isString(InternetGatewayExclusionMode) then (error 'InternetGatewayExclusionMode must be a string')
        else if std.isEmpty(InternetGatewayExclusionMode) then (error 'InternetGatewayExclusionMode must be not empty')
        else if InternetGatewayExclusionMode != 'allow-bidirectional' && InternetGatewayExclusionMode != 'allow-egress' then (error "InternetGatewayExclusionMode should be 'allow-bidirectional' or 'allow-egress'")
        else InternetGatewayExclusionMode,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::EC2::VPCBlockPublicAccessExclusion',
  },
  setExclusionId(ExclusionId): {
    Properties+::: {
      ExclusionId:
        if !std.isString(ExclusionId) then (error 'ExclusionId must be a string')
        else if std.isEmpty(ExclusionId) then (error 'ExclusionId must be not empty')
        else ExclusionId,
    },
  },
  setVpcId(VpcId): {
    Properties+::: {
      VpcId:
        if !std.isString(VpcId) then (error 'VpcId must be a string')
        else if std.isEmpty(VpcId) then (error 'VpcId must be not empty')
        else VpcId,
    },
  },
  setSubnetId(SubnetId): {
    Properties+::: {
      SubnetId:
        if !std.isString(SubnetId) then (error 'SubnetId must be a string')
        else if std.isEmpty(SubnetId) then (error 'SubnetId must be not empty')
        else SubnetId,
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
