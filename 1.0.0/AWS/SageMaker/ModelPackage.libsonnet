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
    Type: 'AWS::SageMaker::ModelPackage',
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
  withAdditionalInferenceSpecifications(AdditionalInferenceSpecifications): {
    Properties+::: {
      AdditionalInferenceSpecifications: (if std.isArray(AdditionalInferenceSpecifications) then AdditionalInferenceSpecifications else [AdditionalInferenceSpecifications]),
    },
  },
  withAdditionalInferenceSpecificationsMixin(AdditionalInferenceSpecifications): {
    Properties+::: {
      AdditionalInferenceSpecifications+: (if std.isArray(AdditionalInferenceSpecifications) then AdditionalInferenceSpecifications else [AdditionalInferenceSpecifications]),
    },
  },
  withCertifyForMarketplace(CertifyForMarketplace): {
    assert std.isBoolean(CertifyForMarketplace) : 'CertifyForMarketplace must be a boolean',
    Properties+::: {
      CertifyForMarketplace: CertifyForMarketplace,
    },
  },
  withClientToken(ClientToken): {
    assert std.isString(ClientToken) : 'ClientToken must be a string',
    Properties+::: {
      ClientToken: ClientToken,
    },
  },
  withCustomerMetadataProperties(CustomerMetadataProperties): {
    assert std.isObject(CustomerMetadataProperties) : 'CustomerMetadataProperties must be a object',
    Properties+::: {
      CustomerMetadataProperties: CustomerMetadataProperties,
    },
  },
  withDomain(Domain): {
    assert std.isString(Domain) : 'Domain must be a string',
    Properties+::: {
      Domain: Domain,
    },
  },
  withDriftCheckBaselines(DriftCheckBaselines): {
    assert std.isObject(DriftCheckBaselines) : 'DriftCheckBaselines must be a object',
    Properties+::: {
      DriftCheckBaselines: DriftCheckBaselines,
    },
  },
  withInferenceSpecification(InferenceSpecification): {
    assert std.isObject(InferenceSpecification) : 'InferenceSpecification must be a object',
    Properties+::: {
      InferenceSpecification: InferenceSpecification,
    },
  },
  withMetadataProperties(MetadataProperties): {
    assert std.isObject(MetadataProperties) : 'MetadataProperties must be a object',
    Properties+::: {
      MetadataProperties: MetadataProperties,
    },
  },
  withModelApprovalStatus(ModelApprovalStatus): {
    assert std.isString(ModelApprovalStatus) : 'ModelApprovalStatus must be a string',
    Properties+::: {
      ModelApprovalStatus: ModelApprovalStatus,
    },
  },
  withModelMetrics(ModelMetrics): {
    assert std.isObject(ModelMetrics) : 'ModelMetrics must be a object',
    Properties+::: {
      ModelMetrics: ModelMetrics,
    },
  },
  withModelPackageDescription(ModelPackageDescription): {
    assert std.isString(ModelPackageDescription) : 'ModelPackageDescription must be a string',
    Properties+::: {
      ModelPackageDescription: ModelPackageDescription,
    },
  },
  withModelPackageGroupName(ModelPackageGroupName): {
    assert std.isString(ModelPackageGroupName) : 'ModelPackageGroupName must be a string',
    Properties+::: {
      ModelPackageGroupName: ModelPackageGroupName,
    },
  },
  withModelPackageName(ModelPackageName): {
    assert std.isString(ModelPackageName) : 'ModelPackageName must be a string',
    Properties+::: {
      ModelPackageName: ModelPackageName,
    },
  },
  withSamplePayloadUrl(SamplePayloadUrl): {
    assert std.isString(SamplePayloadUrl) : 'SamplePayloadUrl must be a string',
    Properties+::: {
      SamplePayloadUrl: SamplePayloadUrl,
    },
  },
  withSkipModelValidation(SkipModelValidation): {
    assert std.isString(SkipModelValidation) : 'SkipModelValidation must be a string',
    Properties+::: {
      SkipModelValidation: SkipModelValidation,
    },
  },
  withSourceAlgorithmSpecification(SourceAlgorithmSpecification): {
    assert std.isObject(SourceAlgorithmSpecification) : 'SourceAlgorithmSpecification must be a object',
    Properties+::: {
      SourceAlgorithmSpecification: SourceAlgorithmSpecification,
    },
  },
  withTask(Task): {
    assert std.isString(Task) : 'Task must be a string',
    Properties+::: {
      Task: Task,
    },
  },
  withValidationSpecification(ValidationSpecification): {
    assert std.isObject(ValidationSpecification) : 'ValidationSpecification must be a object',
    Properties+::: {
      ValidationSpecification: ValidationSpecification,
    },
  },
  withModelPackageArn(ModelPackageArn): {
    assert std.isString(ModelPackageArn) : 'ModelPackageArn must be a string',
    Properties+::: {
      ModelPackageArn: ModelPackageArn,
    },
  },
  withApprovalDescription(ApprovalDescription): {
    assert std.isString(ApprovalDescription) : 'ApprovalDescription must be a string',
    Properties+::: {
      ApprovalDescription: ApprovalDescription,
    },
  },
  withCreationTime(CreationTime): {
    assert std.isString(CreationTime) : 'CreationTime must be a string',
    Properties+::: {
      CreationTime: CreationTime,
    },
  },
  withLastModifiedTime(LastModifiedTime): {
    assert std.isString(LastModifiedTime) : 'LastModifiedTime must be a string',
    Properties+::: {
      LastModifiedTime: LastModifiedTime,
    },
  },
  withModelPackageStatus(ModelPackageStatus): {
    assert std.isString(ModelPackageStatus) : 'ModelPackageStatus must be a string',
    Properties+::: {
      ModelPackageStatus: ModelPackageStatus,
    },
  },
  withModelPackageVersion(ModelPackageVersion): {
    assert std.isNumber(ModelPackageVersion) : 'ModelPackageVersion must be a number',
    Properties+::: {
      ModelPackageVersion: ModelPackageVersion,
    },
  },
  withAdditionalInferenceSpecificationsToAdd(AdditionalInferenceSpecificationsToAdd): {
    Properties+::: {
      AdditionalInferenceSpecificationsToAdd: (if std.isArray(AdditionalInferenceSpecificationsToAdd) then AdditionalInferenceSpecificationsToAdd else [AdditionalInferenceSpecificationsToAdd]),
    },
  },
  withAdditionalInferenceSpecificationsToAddMixin(AdditionalInferenceSpecificationsToAdd): {
    Properties+::: {
      AdditionalInferenceSpecificationsToAdd+: (if std.isArray(AdditionalInferenceSpecificationsToAdd) then AdditionalInferenceSpecificationsToAdd else [AdditionalInferenceSpecificationsToAdd]),
    },
  },
  withModelPackageStatusDetails(ModelPackageStatusDetails): {
    assert std.isObject(ModelPackageStatusDetails) : 'ModelPackageStatusDetails must be a object',
    Properties+::: {
      ModelPackageStatusDetails: ModelPackageStatusDetails,
    },
  },
  withSourceUri(SourceUri): {
    assert std.isString(SourceUri) : 'SourceUri must be a string',
    Properties+::: {
      SourceUri: SourceUri,
    },
  },
  withModelCard(ModelCard): {
    assert std.isObject(ModelCard) : 'ModelCard must be a object',
    Properties+::: {
      ModelCard: ModelCard,
    },
  },
  withSecurityConfig(SecurityConfig): {
    assert std.isObject(SecurityConfig) : 'SecurityConfig must be a object',
    Properties+::: {
      SecurityConfig: SecurityConfig,
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
