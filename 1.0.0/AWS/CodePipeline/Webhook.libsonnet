{
  new(
    AuthenticationConfiguration,
    Filters,
    Authentication,
    TargetPipeline,
    TargetAction,
    TargetPipelineVersion,
  ): {
    local base = self,
    Properties: {
      AuthenticationConfiguration:
        if !std.isObject(AuthenticationConfiguration) then (error 'AuthenticationConfiguration must be an object')
        else AuthenticationConfiguration,
      Filters:
        if !std.isArray(Filters) then (error 'Filters must be an array')
        else Filters,
      Authentication:
        if !std.isString(Authentication) then (error 'Authentication must be a string')
        else if std.isEmpty(Authentication) then (error 'Authentication must be not empty')
        else Authentication,
      TargetPipeline:
        if !std.isString(TargetPipeline) then (error 'TargetPipeline must be a string')
        else if std.isEmpty(TargetPipeline) then (error 'TargetPipeline must be not empty')
        else TargetPipeline,
      TargetAction:
        if !std.isString(TargetAction) then (error 'TargetAction must be a string')
        else if std.isEmpty(TargetAction) then (error 'TargetAction must be not empty')
        else TargetAction,
      TargetPipelineVersion:
        if !std.isNumber(TargetPipelineVersion) then (error 'TargetPipelineVersion must be an number')
        else TargetPipelineVersion,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::CodePipeline::Webhook',
  },
  setId(Id): {
    Properties+::: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else Id,
    },
  },
  setUrl(Url): {
    Properties+::: {
      Url:
        if !std.isString(Url) then (error 'Url must be a string')
        else if std.isEmpty(Url) then (error 'Url must be not empty')
        else Url,
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
  setRegisterWithThirdParty(RegisterWithThirdParty): {
    Properties+::: {
      RegisterWithThirdParty:
        if !std.isBoolean(RegisterWithThirdParty) then (error 'RegisterWithThirdParty must be a boolean') else RegisterWithThirdParty,
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
