{
  new(
    EnvironmentIdentifier,
    ApplicationIdentifier,
    ServiceIdentifier,
    RouteType,
  ): {
    local base = self,
    Properties: {
      EnvironmentIdentifier:
        if !std.isString(EnvironmentIdentifier) then (error 'EnvironmentIdentifier must be a string')
        else if std.isEmpty(EnvironmentIdentifier) then (error 'EnvironmentIdentifier must be not empty')
        else if std.length(EnvironmentIdentifier) < 14 then error ('EnvironmentIdentifier should have at least 14 characters')
        else if std.length(EnvironmentIdentifier) > 14 then error ('EnvironmentIdentifier should have not more than 14 characters')
        else EnvironmentIdentifier,
      ApplicationIdentifier:
        if !std.isString(ApplicationIdentifier) then (error 'ApplicationIdentifier must be a string')
        else if std.isEmpty(ApplicationIdentifier) then (error 'ApplicationIdentifier must be not empty')
        else if std.length(ApplicationIdentifier) < 14 then error ('ApplicationIdentifier should have at least 14 characters')
        else if std.length(ApplicationIdentifier) > 14 then error ('ApplicationIdentifier should have not more than 14 characters')
        else ApplicationIdentifier,
      ServiceIdentifier:
        if !std.isString(ServiceIdentifier) then (error 'ServiceIdentifier must be a string')
        else if std.isEmpty(ServiceIdentifier) then (error 'ServiceIdentifier must be not empty')
        else if std.length(ServiceIdentifier) < 14 then error ('ServiceIdentifier should have at least 14 characters')
        else if std.length(ServiceIdentifier) > 14 then error ('ServiceIdentifier should have not more than 14 characters')
        else ServiceIdentifier,
      RouteType:
        if !std.isString(RouteType) then (error 'RouteType must be a string')
        else if std.isEmpty(RouteType) then (error 'RouteType must be not empty')
        else if RouteType != 'DEFAULT' && RouteType != 'URI_PATH' then (error "RouteType should be 'DEFAULT' or 'URI_PATH'")
        else RouteType,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::RefactorSpaces::Route',
  },
  setPathResourceToId(PathResourceToId): {
    Properties+::: {
      PathResourceToId:
        if !std.isString(PathResourceToId) then (error 'PathResourceToId must be a string')
        else if std.isEmpty(PathResourceToId) then (error 'PathResourceToId must be not empty')
        else PathResourceToId,
    },
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else if std.length(Arn) < 20 then error ('Arn should have at least 20 characters')
        else if std.length(Arn) > 2048 then error ('Arn should have not more than 2048 characters')
        else Arn,
    },
  },
  setRouteIdentifier(RouteIdentifier): {
    Properties+::: {
      RouteIdentifier:
        if !std.isString(RouteIdentifier) then (error 'RouteIdentifier must be a string')
        else if std.isEmpty(RouteIdentifier) then (error 'RouteIdentifier must be not empty')
        else if std.length(RouteIdentifier) < 14 then error ('RouteIdentifier should have at least 14 characters')
        else if std.length(RouteIdentifier) > 14 then error ('RouteIdentifier should have not more than 14 characters')
        else RouteIdentifier,
    },
  },
  setDefaultRoute(DefaultRoute): {
    Properties+::: {
      DefaultRoute:
        if !std.isObject(DefaultRoute) then (error 'DefaultRoute must be an object')
        else if !std.objectHas(DefaultRoute, 'ActivationState') then (error ' have attribute ActivationState')
        else DefaultRoute,
    },
  },
  setUriPathRoute(UriPathRoute): {
    Properties+::: {
      UriPathRoute:
        if !std.isObject(UriPathRoute) then (error 'UriPathRoute must be an object')
        else if !std.objectHas(UriPathRoute, 'ActivationState') then (error ' have attribute ActivationState')
        else UriPathRoute,
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
