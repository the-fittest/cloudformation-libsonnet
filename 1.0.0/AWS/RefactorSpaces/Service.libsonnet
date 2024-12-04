{
  new(
    EnvironmentIdentifier,
    ApplicationIdentifier,
    EndpointType,
    Name,
  ): {
    local base = self,
    Properties: {
      assert std.isString(EnvironmentIdentifier) : 'EnvironmentIdentifier must be a string',
      EnvironmentIdentifier: EnvironmentIdentifier,
      assert std.isString(ApplicationIdentifier) : 'ApplicationIdentifier must be a string',
      ApplicationIdentifier: ApplicationIdentifier,
      assert std.isString(EndpointType) : 'EndpointType must be a string',
      assert EndpointType == 'LAMBDA' || EndpointType == 'URL' : "EndpointType should be 'LAMBDA' or 'URL'",
      EndpointType: EndpointType,
      assert std.isString(Name) : 'Name must be a string',
      Name: Name,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::RefactorSpaces::Service',
  },
  withArn(Arn): {
    assert std.isString(Arn) : 'Arn must be a string',
    Properties+::: {
      Arn: Arn,
    },
  },
  withDescription(Description): {
    assert std.isString(Description) : 'Description must be a string',
    Properties+::: {
      Description: Description,
    },
  },
  withLambdaEndpoint(LambdaEndpoint): {
    assert std.isObject(LambdaEndpoint) : 'LambdaEndpoint must be a object',
    Properties+::: {
      LambdaEndpoint: LambdaEndpoint,
    },
  },
  withServiceIdentifier(ServiceIdentifier): {
    assert std.isString(ServiceIdentifier) : 'ServiceIdentifier must be a string',
    Properties+::: {
      ServiceIdentifier: ServiceIdentifier,
    },
  },
  withUrlEndpoint(UrlEndpoint): {
    assert std.isObject(UrlEndpoint) : 'UrlEndpoint must be a object',
    Properties+::: {
      UrlEndpoint: UrlEndpoint,
    },
  },
  withVpcId(VpcId): {
    assert std.isString(VpcId) : 'VpcId must be a string',
    Properties+::: {
      VpcId: VpcId,
    },
  },
  withTags(Tags): {
    Properties+::: {
      Tags: (if std.isArray(Tags) then Tags else [Tags]),
    },
  },
  withTagsMixin(Tags): {
    Properties+::: {
      Tags+: (if std.isArray(Tags) then Tags else [Tags]),
    },
  },
  withDependsOn(DependsOn): {
    Properties+::: {
      DependsOn: (if std.isArray(DependsOn) then DependsOn else [DependsOn]),
    },
  },
  withDependsOnMixin(DependsOn): {
    Properties+::: {
      DependsOn+: (if std.isArray(DependsOn) then DependsOn else [DependsOn]),
    },
  },
  withCreationPolicy(CreationPolicy): {
    Properties+::: {
      CreationPolicy: (if std.isArray(CreationPolicy) then CreationPolicy else [CreationPolicy]),
    },
  },
  withCreationPolicyMixin(CreationPolicy): {
    Properties+::: {
      CreationPolicy+: (if std.isArray(CreationPolicy) then CreationPolicy else [CreationPolicy]),
    },
  },
  withDeletionPolicy(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy: (if std.isArray(DeletionPolicy) then DeletionPolicy else [DeletionPolicy]),
    },
  },
  withDeletionPolicyMixin(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy+: (if std.isArray(DeletionPolicy) then DeletionPolicy else [DeletionPolicy]),
    },
  },
  withUpdatePolicy(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy: (if std.isArray(UpdatePolicy) then UpdatePolicy else [UpdatePolicy]),
    },
  },
  withUpdatePolicyMixin(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy+: (if std.isArray(UpdatePolicy) then UpdatePolicy else [UpdatePolicy]),
    },
  },
  withUpdateReplacePolicy(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy: (if std.isArray(UpdateReplacePolicy) then UpdateReplacePolicy else [UpdateReplacePolicy]),
    },
  },
  withUpdateReplacePolicyMixin(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy+: (if std.isArray(UpdateReplacePolicy) then UpdateReplacePolicy else [UpdateReplacePolicy]),
    },
  },
  withMetadata(Metadata): {
    Properties+::: {
      Metadata: (if std.isArray(Metadata) then Metadata else [Metadata]),
    },
  },
  withMetadataMixin(Metadata): {
    Properties+::: {
      Metadata+: (if std.isArray(Metadata) then Metadata else [Metadata]),
    },
  },
}
