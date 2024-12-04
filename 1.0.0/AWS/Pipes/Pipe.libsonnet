{
  // AWS Pipes Pipe
  Pipe: {
    new(
      RoleArn,
      Source,
      Target,
    ): {
      local base = self,
      Properties: {
        assert std.isString(RoleArn) : 'RoleArn must be a string',
        RoleArn: RoleArn,
        assert std.isString(Source) : 'Source must be a string',
        Source: Source,
        assert std.isString(Target) : 'Target must be a string',
        Target: Target,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::Pipes::Pipe',
    },
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: {
        Arn: Arn,
      },
    },
    withCreationTime(CreationTime): {
      assert std.isString(CreationTime) : 'CreationTime must be a string',
      Properties+::: {
        CreationTime: CreationTime,
      },
    },
    withCurrentState(CurrentState): {
      assert std.isString(CurrentState) : 'CurrentState must be a string',
      Properties+::: {
        CurrentState: CurrentState,
      },
    },
    withDescription(Description): {
      assert std.isString(Description) : 'Description must be a string',
      Properties+::: {
        Description: Description,
      },
    },
    withDesiredState(DesiredState): {
      assert std.isString(DesiredState) : 'DesiredState must be a string',
      Properties+::: {
        DesiredState: DesiredState,
      },
    },
    withEnrichment(Enrichment): {
      assert std.isString(Enrichment) : 'Enrichment must be a string',
      Properties+::: {
        Enrichment: Enrichment,
      },
    },
    withEnrichmentParameters(EnrichmentParameters): {
      assert std.isObject(EnrichmentParameters) : 'EnrichmentParameters must be a object',
      Properties+::: {
        EnrichmentParameters: EnrichmentParameters,
      },
    },
    withKmsKeyIdentifier(KmsKeyIdentifier): {
      assert std.isString(KmsKeyIdentifier) : 'KmsKeyIdentifier must be a string',
      Properties+::: {
        KmsKeyIdentifier: KmsKeyIdentifier,
      },
    },
    withLastModifiedTime(LastModifiedTime): {
      assert std.isString(LastModifiedTime) : 'LastModifiedTime must be a string',
      Properties+::: {
        LastModifiedTime: LastModifiedTime,
      },
    },
    withLogConfiguration(LogConfiguration): {
      assert std.isObject(LogConfiguration) : 'LogConfiguration must be a object',
      Properties+::: {
        LogConfiguration: LogConfiguration,
      },
    },
    withName(Name): {
      assert std.isString(Name) : 'Name must be a string',
      Properties+::: {
        Name: Name,
      },
    },
    withSourceParameters(SourceParameters): {
      assert std.isObject(SourceParameters) : 'SourceParameters must be a object',
      Properties+::: {
        SourceParameters: SourceParameters,
      },
    },
    withStateReason(StateReason): {
      assert std.isString(StateReason) : 'StateReason must be a string',
      Properties+::: {
        StateReason: StateReason,
      },
    },
    withTags(Tags): {
      assert std.isObject(Tags) : 'Tags must be a object',
      Properties+::: {
        Tags: Tags,
      },
    },
    withTargetParameters(TargetParameters): {
      assert std.isObject(TargetParameters) : 'TargetParameters must be a object',
      Properties+::: {
        TargetParameters: TargetParameters,
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
