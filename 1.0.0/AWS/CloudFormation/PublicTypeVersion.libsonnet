{
  new(
  ): {
    local base = self,
    Properties: {
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::CloudFormation::PublicTypeVersion',
  },
  withArn(Arn): {
    assert std.isString(Arn) : 'Arn must be a string',
    Properties+::: {
      Arn: Arn,
    },
  },
  withTypeVersionArn(TypeVersionArn): {
    assert std.isString(TypeVersionArn) : 'TypeVersionArn must be a string',
    Properties+::: {
      TypeVersionArn: TypeVersionArn,
    },
  },
  withPublicVersionNumber(PublicVersionNumber): {
    assert std.isString(PublicVersionNumber) : 'PublicVersionNumber must be a string',
    Properties+::: {
      PublicVersionNumber: PublicVersionNumber,
    },
  },
  withPublisherId(PublisherId): {
    assert std.isString(PublisherId) : 'PublisherId must be a string',
    Properties+::: {
      PublisherId: PublisherId,
    },
  },
  withPublicTypeArn(PublicTypeArn): {
    assert std.isString(PublicTypeArn) : 'PublicTypeArn must be a string',
    Properties+::: {
      PublicTypeArn: PublicTypeArn,
    },
  },
  withTypeName(TypeName): {
    assert std.isString(TypeName) : 'TypeName must be a string',
    Properties+::: {
      TypeName: TypeName,
    },
  },
  withLogDeliveryBucket(LogDeliveryBucket): {
    assert std.isString(LogDeliveryBucket) : 'LogDeliveryBucket must be a string',
    Properties+::: {
      LogDeliveryBucket: LogDeliveryBucket,
    },
  },
  withType(Type): {
    assert std.isString(Type) : 'Type must be a string',
    assert Type == 'RESOURCE' || Type == 'MODULE' || Type == 'HOOK' : "Type should be 'RESOURCE' or 'MODULE' or 'HOOK'",
    Properties+::: {
      Type: Type,
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
