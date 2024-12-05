{
  new(
    InstanceArn,
    Name,
    TimeZone,
    Config,
  ): {
    local base = self,
    Properties: {
      InstanceArn:
        if !std.isString(InstanceArn) then (error 'InstanceArn must be a string')
        else if std.isEmpty(InstanceArn) then (error 'InstanceArn must be not empty')
        else InstanceArn,
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else if std.length(Name) < 1 then error ('Name should have at least 1 characters')
        else if std.length(Name) > 127 then error ('Name should have not more than 127 characters')
        else Name,
      TimeZone:
        if !std.isString(TimeZone) then (error 'TimeZone must be a string')
        else if std.isEmpty(TimeZone) then (error 'TimeZone must be not empty')
        else TimeZone,
      Config:
        if !std.isArray(Config) then (error 'Config must be an array')
        else if std.length(Config) > 100 then error ('Config cannot have more than 100 items')
        else Config,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Connect::HoursOfOperation',
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else if std.length(Description) < 1 then error ('Description should have at least 1 characters')
        else if std.length(Description) > 250 then error ('Description should have not more than 250 characters')
        else Description,
    },
  },
  setHoursOfOperationArn(HoursOfOperationArn): {
    Properties+::: {
      HoursOfOperationArn:
        if !std.isString(HoursOfOperationArn) then (error 'HoursOfOperationArn must be a string')
        else if std.isEmpty(HoursOfOperationArn) then (error 'HoursOfOperationArn must be not empty')
        else HoursOfOperationArn,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else if std.length(Tags) > 50 then error ('Tags cannot have more than 50 items')
        else Tags,
    },
  },
  setTagsMixin(Tags): {
    Properties+::: {
      Tags+: Tags,
    },
  },
  setHoursOfOperationOverrides(HoursOfOperationOverrides): {
    Properties+::: {
      HoursOfOperationOverrides:
        if !std.isArray(HoursOfOperationOverrides) then (error 'HoursOfOperationOverrides must be an array')
        else if std.length(HoursOfOperationOverrides) > 50 then error ('HoursOfOperationOverrides cannot have more than 50 items')
        else HoursOfOperationOverrides,
    },
  },
  setHoursOfOperationOverridesMixin(HoursOfOperationOverrides): {
    Properties+::: {
      HoursOfOperationOverrides+: HoursOfOperationOverrides,
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
