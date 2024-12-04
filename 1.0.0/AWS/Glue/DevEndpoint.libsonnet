{
  // AWS Glue DevEndpoint
  DevEndpoint: {
    new(
      RoleArn,
    ): {
      local base = self,
      Properties: {
        assert std.isString(RoleArn) : 'RoleArn must be a string',
        RoleArn: RoleArn,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::Glue::DevEndpoint',
    },
    withExtraJarsS3Path(ExtraJarsS3Path): {
      assert std.isString(ExtraJarsS3Path) : 'ExtraJarsS3Path must be a string',
      Properties+::: {
        ExtraJarsS3Path: ExtraJarsS3Path,
      },
    },
    withPublicKey(PublicKey): {
      assert std.isString(PublicKey) : 'PublicKey must be a string',
      Properties+::: {
        PublicKey: PublicKey,
      },
    },
    withNumberOfNodes(NumberOfNodes): {
      assert std.isNumber(NumberOfNodes) : 'NumberOfNodes must be a number',
      Properties+::: {
        NumberOfNodes: NumberOfNodes,
      },
    },
    withArguments(Arguments): {
      assert std.isObject(Arguments) : 'Arguments must be a object',
      Properties+::: {
        Arguments: Arguments,
      },
    },
    withSubnetId(SubnetId): {
      assert std.isString(SubnetId) : 'SubnetId must be a string',
      Properties+::: {
        SubnetId: SubnetId,
      },
    },
    withPublicKeys(PublicKeys): {
      Properties+::: {
        PublicKeys: (if std.isArray(PublicKeys) then PublicKeys else [PublicKeys]),
      },
    },
    withPublicKeysMixin(PublicKeys): {
      Properties+::: {
        PublicKeys+: (if std.isArray(PublicKeys) then PublicKeys else [PublicKeys]),
      },
    },
    withSecurityGroupIds(SecurityGroupIds): {
      Properties+::: {
        SecurityGroupIds: (if std.isArray(SecurityGroupIds) then SecurityGroupIds else [SecurityGroupIds]),
      },
    },
    withSecurityGroupIdsMixin(SecurityGroupIds): {
      Properties+::: {
        SecurityGroupIds+: (if std.isArray(SecurityGroupIds) then SecurityGroupIds else [SecurityGroupIds]),
      },
    },
    withWorkerType(WorkerType): {
      assert std.isString(WorkerType) : 'WorkerType must be a string',
      Properties+::: {
        WorkerType: WorkerType,
      },
    },
    withEndpointName(EndpointName): {
      assert std.isString(EndpointName) : 'EndpointName must be a string',
      Properties+::: {
        EndpointName: EndpointName,
      },
    },
    withGlueVersion(GlueVersion): {
      assert std.isString(GlueVersion) : 'GlueVersion must be a string',
      Properties+::: {
        GlueVersion: GlueVersion,
      },
    },
    withExtraPythonLibsS3Path(ExtraPythonLibsS3Path): {
      assert std.isString(ExtraPythonLibsS3Path) : 'ExtraPythonLibsS3Path must be a string',
      Properties+::: {
        ExtraPythonLibsS3Path: ExtraPythonLibsS3Path,
      },
    },
    withSecurityConfiguration(SecurityConfiguration): {
      assert std.isString(SecurityConfiguration) : 'SecurityConfiguration must be a string',
      Properties+::: {
        SecurityConfiguration: SecurityConfiguration,
      },
    },
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: {
        Id: Id,
      },
    },
    withNumberOfWorkers(NumberOfWorkers): {
      assert std.isNumber(NumberOfWorkers) : 'NumberOfWorkers must be a number',
      Properties+::: {
        NumberOfWorkers: NumberOfWorkers,
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
