{
  new(
    Policy,
    MrapName,
  ): {
    local base = self,
    Properties: {
      Policy:
        if !std.isObject(Policy) then (error 'Policy must be an object')
        else Policy,
      MrapName:
        if !std.isString(MrapName) then (error 'MrapName must be a string')
        else if std.isEmpty(MrapName) then (error 'MrapName must be not empty')
        else if std.length(MrapName) < 3 then error ('MrapName should have at least 3 characters')
        else if std.length(MrapName) > 50 then error ('MrapName should have not more than 50 characters')
        else MrapName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::S3::MultiRegionAccessPointPolicy',
  },
  setPolicyStatus(PolicyStatus): {
    Properties+::: {
      PolicyStatus:
        if !std.isObject(PolicyStatus) then (error 'PolicyStatus must be an object')
        else if !std.objectHas(PolicyStatus, 'IsPublic') then (error ' have attribute IsPublic')
        else PolicyStatus,
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
