{
  new(
    SecurityGroupIds,
    SubnetIds,
    VpcId,
  ): {
    local base = self,
    Properties: {
      SecurityGroupIds:
        if !std.isArray(SecurityGroupIds) then (error 'SecurityGroupIds must be an array')
        else if std.length(SecurityGroupIds) < 1 then error ('SecurityGroupIds cannot have less than 1 items')
        else if std.length(SecurityGroupIds) > 5 then error ('SecurityGroupIds cannot have more than 5 items')
        else SecurityGroupIds,
      SubnetIds:
        if !std.isArray(SubnetIds) then (error 'SubnetIds must be an array')
        else if std.length(SubnetIds) < 2 then error ('SubnetIds cannot have less than 2 items')
        else if std.length(SubnetIds) > 3 then error ('SubnetIds cannot have more than 3 items')
        else SubnetIds,
      VpcId:
        if !std.isString(VpcId) then (error 'VpcId must be a string')
        else if std.isEmpty(VpcId) then (error 'VpcId must be not empty')
        else if std.length(VpcId) < 1 then error ('VpcId should have at least 1 characters')
        else if std.length(VpcId) > 255 then error ('VpcId should have not more than 255 characters')
        else VpcId,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::WorkSpacesWeb::NetworkSettings',
  },
  setAssociatedPortalArns(AssociatedPortalArns): {
    Properties+::: {
      AssociatedPortalArns:
        if !std.isArray(AssociatedPortalArns) then (error 'AssociatedPortalArns must be an array')
        else AssociatedPortalArns,
    },
  },
  pushAssociatedPortalArns(AssociatedPortalArns): {
    Properties+::: {
      AssociatedPortalArns+: AssociatedPortalArns,
    },
  },
  setNetworkSettingsArn(NetworkSettingsArn): {
    Properties+::: {
      NetworkSettingsArn:
        if !std.isString(NetworkSettingsArn) then (error 'NetworkSettingsArn must be a string')
        else if std.isEmpty(NetworkSettingsArn) then (error 'NetworkSettingsArn must be not empty')
        else if std.length(NetworkSettingsArn) < 20 then error ('NetworkSettingsArn should have at least 20 characters')
        else if std.length(NetworkSettingsArn) > 2048 then error ('NetworkSettingsArn should have not more than 2048 characters')
        else NetworkSettingsArn,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else if std.length(Tags) > 200 then error ('Tags cannot have more than 200 items')
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
