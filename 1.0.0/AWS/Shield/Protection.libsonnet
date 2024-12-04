{
  new(
    Name,
    ResourceArn,
  ): {
    local base = self,
    Properties: {
      assert std.isString(Name) : 'Name must be a string',
      Name: Name,
      assert std.isString(ResourceArn) : 'ResourceArn must be a string',
      ResourceArn: ResourceArn,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Shield::Protection',
  },
  withProtectionId(ProtectionId): {
    assert std.isString(ProtectionId) : 'ProtectionId must be a string',
    Properties+::: {
      ProtectionId: ProtectionId,
    },
  },
  withProtectionArn(ProtectionArn): {
    assert std.isString(ProtectionArn) : 'ProtectionArn must be a string',
    Properties+::: {
      ProtectionArn: ProtectionArn,
    },
  },
  withHealthCheckArns(HealthCheckArns): {
    Properties+::: {
      HealthCheckArns: (if std.isArray(HealthCheckArns) then HealthCheckArns else [HealthCheckArns]),
    },
  },
  withHealthCheckArnsMixin(HealthCheckArns): {
    Properties+::: {
      HealthCheckArns+: (if std.isArray(HealthCheckArns) then HealthCheckArns else [HealthCheckArns]),
    },
  },
  withApplicationLayerAutomaticResponseConfiguration(ApplicationLayerAutomaticResponseConfiguration): {
    assert std.isObject(ApplicationLayerAutomaticResponseConfiguration) : 'ApplicationLayerAutomaticResponseConfiguration must be a object',
    Properties+::: {
      ApplicationLayerAutomaticResponseConfiguration: ApplicationLayerAutomaticResponseConfiguration,
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
