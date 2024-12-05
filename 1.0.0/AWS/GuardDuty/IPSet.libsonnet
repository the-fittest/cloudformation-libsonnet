{
  new(
    Format,
    Location,
  ): {
    local base = self,
    Properties: {
      Format:
        if !std.isString(Format) then (error 'Format must be a string')
        else if std.isEmpty(Format) then (error 'Format must be not empty')
        else Format,
      Location:
        if !std.isString(Location) then (error 'Location must be a string')
        else if std.isEmpty(Location) then (error 'Location must be not empty')
        else if std.length(Location) < 1 then error ('Location should have at least 1 characters')
        else if std.length(Location) > 300 then error ('Location should have not more than 300 characters')
        else Location,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::GuardDuty::IPSet',
  },
  setId(Id): {
    Properties+::: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else Id,
    },
  },
  setActivate(Activate): {
    Properties+::: {
      Activate:
        if !std.isBoolean(Activate) then (error 'Activate must be a boolean') else Activate,
    },
  },
  setDetectorId(DetectorId): {
    Properties+::: {
      DetectorId:
        if !std.isString(DetectorId) then (error 'DetectorId must be a string')
        else if std.isEmpty(DetectorId) then (error 'DetectorId must be not empty')
        else if std.length(DetectorId) < 1 then error ('DetectorId should have at least 1 characters')
        else if std.length(DetectorId) > 300 then error ('DetectorId should have not more than 300 characters')
        else DetectorId,
    },
  },
  setName(Name): {
    Properties+::: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else if std.length(Name) < 1 then error ('Name should have at least 1 characters')
        else if std.length(Name) > 300 then error ('Name should have not more than 300 characters')
        else Name,
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
