{
  new(
    PolicyName,
    Tier,
    Policy,
  ): {
    local base = self,
    Properties: {
      PolicyName:
        if !std.isString(PolicyName) then (error 'PolicyName must be a string')
        else if std.isEmpty(PolicyName) then (error 'PolicyName must be not empty')
        else PolicyName,
      Tier:
        if !std.isString(Tier) then (error 'Tier must be a string')
        else if std.isEmpty(Tier) then (error 'Tier must be not empty')
        else if Tier != 'MissionCritical' && Tier != 'Critical' && Tier != 'Important' && Tier != 'CoreServices' && Tier != 'NonCritical' then (error "Tier should be 'MissionCritical' or 'Critical' or 'Important' or 'CoreServices' or 'NonCritical'")
        else Tier,
      Policy:
        if !std.isObject(Policy) then (error 'Policy must be an object')
        else if !std.objectHas(Policy, 'AZ') then (error ' have attribute AZ')
        else if !std.objectHas(Policy, 'Hardware') then (error ' have attribute Hardware')
        else if !std.objectHas(Policy, 'Software') then (error ' have attribute Software')
        else Policy,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::ResilienceHub::ResiliencyPolicy',
  },
  setPolicyDescription(PolicyDescription): {
    Properties+::: {
      PolicyDescription:
        if !std.isString(PolicyDescription) then (error 'PolicyDescription must be a string')
        else if std.isEmpty(PolicyDescription) then (error 'PolicyDescription must be not empty')
        else if std.length(PolicyDescription) > 500 then error ('PolicyDescription should have not more than 500 characters')
        else PolicyDescription,
    },
  },
  setDataLocationConstraint(DataLocationConstraint): {
    Properties+::: {
      DataLocationConstraint:
        if !std.isString(DataLocationConstraint) then (error 'DataLocationConstraint must be a string')
        else if std.isEmpty(DataLocationConstraint) then (error 'DataLocationConstraint must be not empty')
        else if DataLocationConstraint != 'AnyLocation' && DataLocationConstraint != 'SameContinent' && DataLocationConstraint != 'SameCountry' then (error "DataLocationConstraint should be 'AnyLocation' or 'SameContinent' or 'SameCountry'")
        else DataLocationConstraint,
    },
  },
  setPolicyArn(PolicyArn): {
    Properties+::: {
      PolicyArn:
        if !std.isString(PolicyArn) then (error 'PolicyArn must be a string')
        else if std.isEmpty(PolicyArn) then (error 'PolicyArn must be not empty')
        else PolicyArn,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isObject(Tags) then (error 'Tags must be an object')
        else Tags,
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
