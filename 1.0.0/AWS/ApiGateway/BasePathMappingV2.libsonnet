{
  new(
    DomainNameArn,
    RestApiId,
  ): {
    local base = self,
    Properties: {
      DomainNameArn:
        if !std.isString(DomainNameArn) then (error 'DomainNameArn must be a string')
        else if std.isEmpty(DomainNameArn) then (error 'DomainNameArn must be not empty')
        else DomainNameArn,
      RestApiId:
        if !std.isString(RestApiId) then (error 'RestApiId must be a string')
        else if std.isEmpty(RestApiId) then (error 'RestApiId must be not empty')
        else RestApiId,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::ApiGateway::BasePathMappingV2',
  },
  setBasePath(BasePath): {
    Properties+::: {
      BasePath:
        if !std.isString(BasePath) then (error 'BasePath must be a string')
        else if std.isEmpty(BasePath) then (error 'BasePath must be not empty')
        else BasePath,
    },
  },
  setStage(Stage): {
    Properties+::: {
      Stage:
        if !std.isString(Stage) then (error 'Stage must be a string')
        else if std.isEmpty(Stage) then (error 'Stage must be not empty')
        else Stage,
    },
  },
  setBasePathMappingArn(BasePathMappingArn): {
    Properties+::: {
      BasePathMappingArn:
        if !std.isString(BasePathMappingArn) then (error 'BasePathMappingArn must be a string')
        else if std.isEmpty(BasePathMappingArn) then (error 'BasePathMappingArn must be not empty')
        else BasePathMappingArn,
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
