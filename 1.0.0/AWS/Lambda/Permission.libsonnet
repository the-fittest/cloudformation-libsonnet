{
  new(
    FunctionName,
    Action,
    Principal,
  ): {
    local base = self,
    Properties: {
      assert std.isString(FunctionName) : 'FunctionName must be a string',
      FunctionName: FunctionName,
      assert std.isString(Action) : 'Action must be a string',
      Action: Action,
      assert std.isString(Principal) : 'Principal must be a string',
      Principal: Principal,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Lambda::Permission',
  },
  withEventSourceToken(EventSourceToken): {
    assert std.isString(EventSourceToken) : 'EventSourceToken must be a string',
    Properties+::: {
      EventSourceToken: EventSourceToken,
    },
  },
  withFunctionUrlAuthType(FunctionUrlAuthType): {
    assert std.isString(FunctionUrlAuthType) : 'FunctionUrlAuthType must be a string',
    Properties+::: {
      FunctionUrlAuthType: FunctionUrlAuthType,
    },
  },
  withSourceArn(SourceArn): {
    assert std.isString(SourceArn) : 'SourceArn must be a string',
    Properties+::: {
      SourceArn: SourceArn,
    },
  },
  withSourceAccount(SourceAccount): {
    assert std.isString(SourceAccount) : 'SourceAccount must be a string',
    Properties+::: {
      SourceAccount: SourceAccount,
    },
  },
  withPrincipalOrgID(PrincipalOrgID): {
    assert std.isString(PrincipalOrgID) : 'PrincipalOrgID must be a string',
    Properties+::: {
      PrincipalOrgID: PrincipalOrgID,
    },
  },
  withId(Id): {
    assert std.isString(Id) : 'Id must be a string',
    Properties+::: {
      Id: Id,
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
