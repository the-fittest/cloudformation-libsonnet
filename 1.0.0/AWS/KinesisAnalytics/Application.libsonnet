{
  new(
    Inputs,
  ): {
    local base = self,
    Properties: {
      Inputs:
        if !std.isArray(Inputs) then (error 'Inputs must be an array')
        else Inputs,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::KinesisAnalytics::Application',
  },
  setApplicationName(ApplicationName): {
    Properties+::: {
      ApplicationName:
        if !std.isString(ApplicationName) then (error 'ApplicationName must be a string')
        else if std.isEmpty(ApplicationName) then (error 'ApplicationName must be not empty')
        else ApplicationName,
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
  setApplicationDescription(ApplicationDescription): {
    Properties+::: {
      ApplicationDescription:
        if !std.isString(ApplicationDescription) then (error 'ApplicationDescription must be a string')
        else if std.isEmpty(ApplicationDescription) then (error 'ApplicationDescription must be not empty')
        else ApplicationDescription,
    },
  },
  setApplicationCode(ApplicationCode): {
    Properties+::: {
      ApplicationCode:
        if !std.isString(ApplicationCode) then (error 'ApplicationCode must be a string')
        else if std.isEmpty(ApplicationCode) then (error 'ApplicationCode must be not empty')
        else ApplicationCode,
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
