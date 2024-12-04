{
  // AWS Deadline Monitor
  Monitor: {
    new(
      DisplayName,
      IdentityCenterInstanceArn,
      RoleArn,
      Subdomain,
    ): {
      local base = self,
      Properties: {
        assert std.isString(DisplayName) : 'DisplayName must be a string',
        DisplayName: DisplayName,
        assert std.isString(IdentityCenterInstanceArn) : 'IdentityCenterInstanceArn must be a string',
        IdentityCenterInstanceArn: IdentityCenterInstanceArn,
        assert std.isString(RoleArn) : 'RoleArn must be a string',
        RoleArn: RoleArn,
        assert std.isString(Subdomain) : 'Subdomain must be a string',
        Subdomain: Subdomain,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::Deadline::Monitor',
    },
    withIdentityCenterApplicationArn(IdentityCenterApplicationArn): {
      assert std.isString(IdentityCenterApplicationArn) : 'IdentityCenterApplicationArn must be a string',
      Properties+::: {
        IdentityCenterApplicationArn: IdentityCenterApplicationArn,
      },
    },
    withMonitorId(MonitorId): {
      assert std.isString(MonitorId) : 'MonitorId must be a string',
      Properties+::: {
        MonitorId: MonitorId,
      },
    },
    withUrl(Url): {
      assert std.isString(Url) : 'Url must be a string',
      Properties+::: {
        Url: Url,
      },
    },
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: {
        Arn: Arn,
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
