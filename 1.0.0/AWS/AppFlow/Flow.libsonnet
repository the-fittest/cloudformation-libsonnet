{
  // AWS AppFlow Flow
  Flow: {
    new(
      FlowName,
      Tasks,
      SourceFlowConfig,
      DestinationFlowConfigList,
      TriggerConfig,
    ): {
      local base = self,
      Properties: {
        assert std.isString(FlowName) : 'FlowName must be a string',
        FlowName: FlowName,
        Tasks: (if std.isArray(Tasks) then Tasks else [Tasks]),
        assert std.isObject(SourceFlowConfig) : 'SourceFlowConfig must be an object',
        SourceFlowConfig: SourceFlowConfig,
        DestinationFlowConfigList: (if std.isArray(DestinationFlowConfigList) then DestinationFlowConfigList else [DestinationFlowConfigList]),
        assert std.isObject(TriggerConfig) : 'TriggerConfig must be an object',
        TriggerConfig: TriggerConfig,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::AppFlow::Flow',
    },
    withFlowArn(FlowArn): {
      assert std.isString(FlowArn) : 'FlowArn must be a string',
      Properties+::: {
        FlowArn: FlowArn,
      },
    },
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: {
        Description: Description,
      },
    },
    withKMSArn(KMSArn): {
      assert std.isString(KMSArn) : 'KMSArn must be a string',
      Properties+::: {
        KMSArn: KMSArn,
      },
    },
    withFlowStatus(FlowStatus): {
      assert std.isString(FlowStatus) : 'FlowStatus must be a string',
      Properties+::: {
        FlowStatus: FlowStatus,
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
    withMetadataCatalogConfig(MetadataCatalogConfig): {
      assert std.isObject(MetadataCatalogConfig) : 'MetadataCatalogConfig must be a object',
      Properties+::: {
        MetadataCatalogConfig: MetadataCatalogConfig,
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
