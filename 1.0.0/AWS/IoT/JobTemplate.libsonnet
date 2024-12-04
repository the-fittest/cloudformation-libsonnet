{
  new(
    JobTemplateId,
    Description,
  ): {
    local base = self,
    Properties: {
      assert std.isString(JobTemplateId) : 'JobTemplateId must be a string',
      JobTemplateId: JobTemplateId,
      assert std.isString(Description) : 'Description must be a string',
      Description: Description,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::IoT::JobTemplate',
  },
  withArn(Arn): {
    assert std.isString(Arn) : 'Arn must be a string',
    Properties+::: {
      Arn: Arn,
    },
  },
  withJobArn(JobArn): {
    assert std.isString(JobArn) : 'JobArn must be a string',
    Properties+::: {
      JobArn: JobArn,
    },
  },
  withDocument(Document): {
    assert std.isString(Document) : 'Document must be a string',
    Properties+::: {
      Document: Document,
    },
  },
  withDocumentSource(DocumentSource): {
    assert std.isString(DocumentSource) : 'DocumentSource must be a string',
    Properties+::: {
      DocumentSource: DocumentSource,
    },
  },
  withTimeoutConfig(TimeoutConfig): {
    assert std.isObject(TimeoutConfig) : 'TimeoutConfig must be a object',
    Properties+::: {
      TimeoutConfig: TimeoutConfig,
    },
  },
  withJobExecutionsRolloutConfig(JobExecutionsRolloutConfig): {
    assert std.isObject(JobExecutionsRolloutConfig) : 'JobExecutionsRolloutConfig must be a object',
    Properties+::: {
      JobExecutionsRolloutConfig: JobExecutionsRolloutConfig,
    },
  },
  withAbortConfig(AbortConfig): {
    assert std.isObject(AbortConfig) : 'AbortConfig must be a object',
    Properties+::: {
      AbortConfig: AbortConfig,
    },
  },
  withPresignedUrlConfig(PresignedUrlConfig): {
    assert std.isObject(PresignedUrlConfig) : 'PresignedUrlConfig must be a object',
    Properties+::: {
      PresignedUrlConfig: PresignedUrlConfig,
    },
  },
  withJobExecutionsRetryConfig(JobExecutionsRetryConfig): {
    assert std.isObject(JobExecutionsRetryConfig) : 'JobExecutionsRetryConfig must be a object',
    Properties+::: {
      JobExecutionsRetryConfig: JobExecutionsRetryConfig,
    },
  },
  withMaintenanceWindows(MaintenanceWindows): {
    Properties+::: {
      MaintenanceWindows: (if std.isArray(MaintenanceWindows) then MaintenanceWindows else [MaintenanceWindows]),
    },
  },
  withMaintenanceWindowsMixin(MaintenanceWindows): {
    Properties+::: {
      MaintenanceWindows+: (if std.isArray(MaintenanceWindows) then MaintenanceWindows else [MaintenanceWindows]),
    },
  },
  withDestinationPackageVersions(DestinationPackageVersions): {
    Properties+::: {
      DestinationPackageVersions: (if std.isArray(DestinationPackageVersions) then DestinationPackageVersions else [DestinationPackageVersions]),
    },
  },
  withDestinationPackageVersionsMixin(DestinationPackageVersions): {
    Properties+::: {
      DestinationPackageVersions+: (if std.isArray(DestinationPackageVersions) then DestinationPackageVersions else [DestinationPackageVersions]),
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
