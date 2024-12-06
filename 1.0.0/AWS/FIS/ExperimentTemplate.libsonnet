{
  new(
    Description,
    StopConditions,
    Targets,
    RoleArn,
    Tags,
  ): {
    local base = self,
    Properties: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else if std.length(Description) > 512 then error ('Description should have not more than 512 characters')
        else Description,
      StopConditions:
        if !std.isArray(StopConditions) then (error 'StopConditions must be an array')
        else StopConditions,
      Targets:
        if !std.isObject(Targets) then (error 'Targets must be an object')
        else Targets,
      RoleArn:
        if !std.isString(RoleArn) then (error 'RoleArn must be a string')
        else if std.isEmpty(RoleArn) then (error 'RoleArn must be not empty')
        else if std.length(RoleArn) > 1224 then error ('RoleArn should have not more than 1224 characters')
        else RoleArn,
      Tags:
        if !std.isObject(Tags) then (error 'Tags must be an object')
        else Tags,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::FIS::ExperimentTemplate',
  },
  setId(Id): {
    Properties+::: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else Id,
    },
  },
  setActions(Actions): {
    Properties+::: {
      Actions:
        if !std.isObject(Actions) then (error 'Actions must be an object')
        else Actions,
    },
  },
  setLogConfiguration(LogConfiguration): {
    Properties+::: {
      LogConfiguration:
        if !std.isObject(LogConfiguration) then (error 'LogConfiguration must be an object')
        else if !std.objectHas(LogConfiguration, 'LogSchemaVersion') then (error ' have attribute LogSchemaVersion')
        else LogConfiguration,
    },
  },
  setExperimentOptions(ExperimentOptions): {
    Properties+::: {
      ExperimentOptions:
        if !std.isObject(ExperimentOptions) then (error 'ExperimentOptions must be an object')
        else ExperimentOptions,
    },
  },
  setExperimentReportConfiguration(ExperimentReportConfiguration): {
    Properties+::: {
      ExperimentReportConfiguration:
        if !std.isObject(ExperimentReportConfiguration) then (error 'ExperimentReportConfiguration must be an object')
        else if !std.objectHas(ExperimentReportConfiguration, 'Outputs') then (error ' have attribute Outputs')
        else if !std.objectHas(ExperimentReportConfiguration, 'DataSources') then (error ' have attribute DataSources')
        else ExperimentReportConfiguration,
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
