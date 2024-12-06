{
  new(): {
    local base = self,
    Properties:: {},
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::SageMaker::NotebookInstanceLifecycleConfig',
  },
  setOnStart(OnStart): {
    Properties+::: {
      OnStart:
        if !std.isArray(OnStart) then (error 'OnStart must be an array')
        else OnStart,
    },
  },
  pushOnStart(OnStart): {
    Properties+::: {
      OnStart+: OnStart,
    },
  },
  setId(Id): {
    Properties+::: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else Id,
    },
  },
  setNotebookInstanceLifecycleConfigName(NotebookInstanceLifecycleConfigName): {
    Properties+::: {
      NotebookInstanceLifecycleConfigName:
        if !std.isString(NotebookInstanceLifecycleConfigName) then (error 'NotebookInstanceLifecycleConfigName must be a string')
        else if std.isEmpty(NotebookInstanceLifecycleConfigName) then (error 'NotebookInstanceLifecycleConfigName must be not empty')
        else NotebookInstanceLifecycleConfigName,
    },
  },
  setOnCreate(OnCreate): {
    Properties+::: {
      OnCreate:
        if !std.isArray(OnCreate) then (error 'OnCreate must be an array')
        else OnCreate,
    },
  },
  pushOnCreate(OnCreate): {
    Properties+::: {
      OnCreate+: OnCreate,
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
