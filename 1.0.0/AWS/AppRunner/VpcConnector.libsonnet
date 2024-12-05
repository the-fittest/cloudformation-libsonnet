{
  new(
    Subnets,
  ): {
    local base = self,
    Properties: {
      Subnets:
        if !std.isArray(Subnets) then (error 'Subnets must be an array')
        else if std.length(Subnets) < 1 then error ('Subnets cannot have less than 1 items')
        else Subnets,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::AppRunner::VpcConnector',
  },
  setVpcConnectorName(VpcConnectorName): {
    Properties+::: {
      VpcConnectorName:
        if !std.isString(VpcConnectorName) then (error 'VpcConnectorName must be a string')
        else if std.isEmpty(VpcConnectorName) then (error 'VpcConnectorName must be not empty')
        else if std.length(VpcConnectorName) < 4 then error ('VpcConnectorName should have at least 4 characters')
        else if std.length(VpcConnectorName) > 40 then error ('VpcConnectorName should have not more than 40 characters')
        else VpcConnectorName,
    },
  },
  setVpcConnectorArn(VpcConnectorArn): {
    Properties+::: {
      VpcConnectorArn:
        if !std.isString(VpcConnectorArn) then (error 'VpcConnectorArn must be a string')
        else if std.isEmpty(VpcConnectorArn) then (error 'VpcConnectorArn must be not empty')
        else if std.length(VpcConnectorArn) < 44 then error ('VpcConnectorArn should have at least 44 characters')
        else if std.length(VpcConnectorArn) > 1011 then error ('VpcConnectorArn should have not more than 1011 characters')
        else VpcConnectorArn,
    },
  },
  setVpcConnectorRevision(VpcConnectorRevision): {
    Properties+::: {
      VpcConnectorRevision:
        if !std.isNumber(VpcConnectorRevision) then (error 'VpcConnectorRevision must be an number')
        else VpcConnectorRevision,
    },
  },
  setSecurityGroups(SecurityGroups): {
    Properties+::: {
      SecurityGroups:
        if !std.isArray(SecurityGroups) then (error 'SecurityGroups must be an array')
        else SecurityGroups,
    },
  },
  setSecurityGroupsMixin(SecurityGroups): {
    Properties+::: {
      SecurityGroups+: SecurityGroups,
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
