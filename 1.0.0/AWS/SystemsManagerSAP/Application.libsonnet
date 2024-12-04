{
  new(
    ApplicationId,
    ApplicationType,
  ): {
    local base = self,
    Properties: {
      assert std.isString(ApplicationId) : 'ApplicationId must be a string',
      ApplicationId: ApplicationId,
      assert std.isString(ApplicationType) : 'ApplicationType must be a string',
      ApplicationType: ApplicationType,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::SystemsManagerSAP::Application',
  },
  withArn(Arn): {
    assert std.isString(Arn) : 'Arn must be a string',
    Properties+::: {
      Arn: Arn,
    },
  },
  withCredentials(Credentials): {
    Properties+::: {
      Credentials: (if std.isArray(Credentials) then Credentials else [Credentials]),
    },
  },
  withCredentialsMixin(Credentials): {
    Properties+::: {
      Credentials+: (if std.isArray(Credentials) then Credentials else [Credentials]),
    },
  },
  withInstances(Instances): {
    Properties+::: {
      Instances: (if std.isArray(Instances) then Instances else [Instances]),
    },
  },
  withInstancesMixin(Instances): {
    Properties+::: {
      Instances+: (if std.isArray(Instances) then Instances else [Instances]),
    },
  },
  withSapInstanceNumber(SapInstanceNumber): {
    assert std.isString(SapInstanceNumber) : 'SapInstanceNumber must be a string',
    Properties+::: {
      SapInstanceNumber: SapInstanceNumber,
    },
  },
  withSid(Sid): {
    assert std.isString(Sid) : 'Sid must be a string',
    Properties+::: {
      Sid: Sid,
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
  withDatabaseArn(DatabaseArn): {
    assert std.isString(DatabaseArn) : 'DatabaseArn must be a string',
    Properties+::: {
      DatabaseArn: DatabaseArn,
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
