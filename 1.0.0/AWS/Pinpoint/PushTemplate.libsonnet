{
  // AWS Pinpoint PushTemplate
  PushTemplate: {
    new(
      TemplateName,
    ): {
      local base = self,
      Properties: {
        assert std.isString(TemplateName) : 'TemplateName must be a string',
        TemplateName: TemplateName,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::Pinpoint::PushTemplate',
    },
    withGCM(GCM): {
      assert std.isObject(GCM) : 'GCM must be a object',
      Properties+::: {
        GCM: GCM,
      },
    },
    withBaidu(Baidu): {
      assert std.isObject(Baidu) : 'Baidu must be a object',
      Properties+::: {
        Baidu: Baidu,
      },
    },
    withADM(ADM): {
      assert std.isObject(ADM) : 'ADM must be a object',
      Properties+::: {
        ADM: ADM,
      },
    },
    withAPNS(APNS): {
      assert std.isObject(APNS) : 'APNS must be a object',
      Properties+::: {
        APNS: APNS,
      },
    },
    withTemplateDescription(TemplateDescription): {
      assert std.isString(TemplateDescription) : 'TemplateDescription must be a string',
      Properties+::: {
        TemplateDescription: TemplateDescription,
      },
    },
    withDefaultSubstitutions(DefaultSubstitutions): {
      assert std.isString(DefaultSubstitutions) : 'DefaultSubstitutions must be a string',
      Properties+::: {
        DefaultSubstitutions: DefaultSubstitutions,
      },
    },
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: {
        Id: Id,
      },
    },
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: {
        Arn: Arn,
      },
    },
    withDefault(Default): {
      assert std.isObject(Default) : 'Default must be a object',
      Properties+::: {
        Default: Default,
      },
    },
    withTags(Tags): {
      assert std.isObject(Tags) : 'Tags must be a object',
      Properties+::: {
        Tags: Tags,
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
