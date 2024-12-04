{
  // AWS SecurityLake Subscriber
  Subscriber: {
    new(
      AccessTypes,
      DataLakeArn,
      Sources,
      SubscriberIdentity,
      SubscriberName,
    ): {
      local base = self,
      Properties: {
        AccessTypes: (if std.isArray(AccessTypes) then AccessTypes else [AccessTypes]),
        assert std.isString(DataLakeArn) : 'DataLakeArn must be a string',
        DataLakeArn: DataLakeArn,
        Sources: (if std.isArray(Sources) then Sources else [Sources]),
        assert std.isObject(SubscriberIdentity) : 'SubscriberIdentity must be an object',
        SubscriberIdentity: SubscriberIdentity,
        assert std.isString(SubscriberName) : 'SubscriberName must be a string',
        SubscriberName: SubscriberName,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::SecurityLake::Subscriber',
    },
    withSubscriberDescription(SubscriberDescription): {
      assert std.isString(SubscriberDescription) : 'SubscriberDescription must be a string',
      Properties+::: {
        SubscriberDescription: SubscriberDescription,
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
    withResourceShareArn(ResourceShareArn): {
      assert std.isString(ResourceShareArn) : 'ResourceShareArn must be a string',
      Properties+::: {
        ResourceShareArn: ResourceShareArn,
      },
    },
    withResourceShareName(ResourceShareName): {
      assert std.isString(ResourceShareName) : 'ResourceShareName must be a string',
      Properties+::: {
        ResourceShareName: ResourceShareName,
      },
    },
    withSubscriberRoleArn(SubscriberRoleArn): {
      assert std.isString(SubscriberRoleArn) : 'SubscriberRoleArn must be a string',
      Properties+::: {
        SubscriberRoleArn: SubscriberRoleArn,
      },
    },
    withS3BucketArn(S3BucketArn): {
      assert std.isString(S3BucketArn) : 'S3BucketArn must be a string',
      Properties+::: {
        S3BucketArn: S3BucketArn,
      },
    },
    withSubscriberArn(SubscriberArn): {
      assert std.isString(SubscriberArn) : 'SubscriberArn must be a string',
      Properties+::: {
        SubscriberArn: SubscriberArn,
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
