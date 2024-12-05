{
  new(
    Value,
    Type,
  ): {
    local base = self,
    Properties: {
      Value:
        if !std.isString(Value) then (error 'Value must be a string')
        else if std.isEmpty(Value) then (error 'Value must be not empty')
        else Value,
      Type:
        if !std.isString(Type) then (error 'Type must be a string')
        else if std.isEmpty(Type) then (error 'Type must be not empty')
        else if Type != 'String' && Type != 'StringList' then (error "Type should be 'String' or 'StringList'")
        else Type,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::SSM::Parameter',
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else Description,
    },
  },
  setPolicies(Policies): {
    Properties+::: {
      Policies:
        if !std.isString(Policies) then (error 'Policies must be a string')
        else if std.isEmpty(Policies) then (error 'Policies must be not empty')
        else Policies,
    },
  },
  setAllowedPattern(AllowedPattern): {
    Properties+::: {
      AllowedPattern:
        if !std.isString(AllowedPattern) then (error 'AllowedPattern must be a string')
        else if std.isEmpty(AllowedPattern) then (error 'AllowedPattern must be not empty')
        else AllowedPattern,
    },
  },
  setTier(Tier): {
    Properties+::: {
      Tier:
        if !std.isString(Tier) then (error 'Tier must be a string')
        else if std.isEmpty(Tier) then (error 'Tier must be not empty')
        else if Tier != 'Standard' && Tier != 'Advanced' && Tier != 'Intelligent-Tiering' then (error "Tier should be 'Standard' or 'Advanced' or 'Intelligent-Tiering'")
        else Tier,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isObject(Tags) then (error 'Tags must be an object')
        else Tags,
    },
  },
  setDataType(DataType): {
    Properties+::: {
      DataType:
        if !std.isString(DataType) then (error 'DataType must be a string')
        else if std.isEmpty(DataType) then (error 'DataType must be not empty')
        else if DataType != 'text' && DataType != 'aws:ec2:image' then (error "DataType should be 'text' or 'aws:ec2:image'")
        else DataType,
    },
  },
  setName(Name): {
    Properties+::: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else Name,
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
