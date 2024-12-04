{
  // AWS CodePipeline Webhook
  Webhook: {
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
        assert std.isObject(AuthenticationConfiguration) : 'AuthenticationConfiguration must be an object',
        AuthenticationConfiguration: AuthenticationConfiguration,
        Filters: (if std.isArray(Filters) then Filters else [Filters]),
        assert std.isString(Authentication) : 'Authentication must be a string',
        Authentication: Authentication,
        assert std.isString(TargetPipeline) : 'TargetPipeline must be a string',
        TargetPipeline: TargetPipeline,
        assert std.isString(TargetAction) : 'TargetAction must be a string',
        TargetAction: TargetAction,
        assert std.isNumber(TargetPipelineVersion) : 'TargetPipelineVersion must be a number',
        TargetPipelineVersion: TargetPipelineVersion,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::CodePipeline::Webhook',
    },
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: {
        Id: Id,
      },
    },
    withUrl(Url): {
      assert std.isString(Url) : 'Url must be a string',
      Properties+::: {
        Url: Url,
      },
    },
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: {
        Name: Name,
      },
    },
    withRegisterWithThirdParty(RegisterWithThirdParty): {
      assert std.isBoolean(RegisterWithThirdParty) : 'RegisterWithThirdParty must be a boolean',
      Properties+::: {
        RegisterWithThirdParty: RegisterWithThirdParty,
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
  },
}
