{
  new(): {
    local base = self,
    Properties:: {},
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::SageMaker::ModelPackage',
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else if std.length(Tags) > 50 then error ('Tags cannot have more than 50 items')
        else Tags,
    },
  },
  pushTags(Tags): {
    Properties+::: {
      Tags+: Tags,
    },
  },
  setAdditionalInferenceSpecifications(AdditionalInferenceSpecifications): {
    Properties+::: {
      AdditionalInferenceSpecifications:
        if !std.isArray(AdditionalInferenceSpecifications) then (error 'AdditionalInferenceSpecifications must be an array')
        else if std.length(AdditionalInferenceSpecifications) < 1 then error ('AdditionalInferenceSpecifications cannot have less than 1 items')
        else if std.length(AdditionalInferenceSpecifications) > 15 then error ('AdditionalInferenceSpecifications cannot have more than 15 items')
        else AdditionalInferenceSpecifications,
    },
  },
  pushAdditionalInferenceSpecifications(AdditionalInferenceSpecifications): {
    Properties+::: {
      AdditionalInferenceSpecifications+: AdditionalInferenceSpecifications,
    },
  },
  setCertifyForMarketplace(CertifyForMarketplace): {
    Properties+::: {
      CertifyForMarketplace:
        if !std.isBoolean(CertifyForMarketplace) then (error 'CertifyForMarketplace must be a boolean') else CertifyForMarketplace,
    },
  },
  setClientToken(ClientToken): {
    Properties+::: {
      ClientToken:
        if !std.isString(ClientToken) then (error 'ClientToken must be a string')
        else if std.isEmpty(ClientToken) then (error 'ClientToken must be not empty')
        else if std.length(ClientToken) < 1 then error ('ClientToken should have at least 1 characters')
        else if std.length(ClientToken) > 36 then error ('ClientToken should have not more than 36 characters')
        else ClientToken,
    },
  },
  setCustomerMetadataProperties(CustomerMetadataProperties): {
    Properties+::: {
      CustomerMetadataProperties:
        if !std.isObject(CustomerMetadataProperties) then (error 'CustomerMetadataProperties must be an object')
        else CustomerMetadataProperties,
    },
  },
  setDomain(Domain): {
    Properties+::: {
      Domain:
        if !std.isString(Domain) then (error 'Domain must be a string')
        else if std.isEmpty(Domain) then (error 'Domain must be not empty')
        else Domain,
    },
  },
  setDriftCheckBaselines(DriftCheckBaselines): {
    Properties+::: {
      DriftCheckBaselines:
        if !std.isObject(DriftCheckBaselines) then (error 'DriftCheckBaselines must be an object')
        else DriftCheckBaselines,
    },
  },
  setInferenceSpecification(InferenceSpecification): {
    Properties+::: {
      InferenceSpecification:
        if !std.isObject(InferenceSpecification) then (error 'InferenceSpecification must be an object')
        else if !std.objectHas(InferenceSpecification, 'Containers') then (error ' have attribute Containers')
        else if !std.objectHas(InferenceSpecification, 'SupportedContentTypes') then (error ' have attribute SupportedContentTypes')
        else if !std.objectHas(InferenceSpecification, 'SupportedResponseMIMETypes') then (error ' have attribute SupportedResponseMIMETypes')
        else InferenceSpecification,
    },
  },
  setMetadataProperties(MetadataProperties): {
    Properties+::: {
      MetadataProperties:
        if !std.isObject(MetadataProperties) then (error 'MetadataProperties must be an object')
        else MetadataProperties,
    },
  },
  setModelApprovalStatus(ModelApprovalStatus): {
    Properties+::: {
      ModelApprovalStatus:
        if !std.isString(ModelApprovalStatus) then (error 'ModelApprovalStatus must be a string')
        else if std.isEmpty(ModelApprovalStatus) then (error 'ModelApprovalStatus must be not empty')
        else if ModelApprovalStatus != 'Approved' && ModelApprovalStatus != 'Rejected' && ModelApprovalStatus != 'PendingManualApproval' then (error "ModelApprovalStatus should be 'Approved' or 'Rejected' or 'PendingManualApproval'")
        else ModelApprovalStatus,
    },
  },
  setModelMetrics(ModelMetrics): {
    Properties+::: {
      ModelMetrics:
        if !std.isObject(ModelMetrics) then (error 'ModelMetrics must be an object')
        else ModelMetrics,
    },
  },
  setModelPackageDescription(ModelPackageDescription): {
    Properties+::: {
      ModelPackageDescription:
        if !std.isString(ModelPackageDescription) then (error 'ModelPackageDescription must be a string')
        else if std.isEmpty(ModelPackageDescription) then (error 'ModelPackageDescription must be not empty')
        else if std.length(ModelPackageDescription) > 1024 then error ('ModelPackageDescription should have not more than 1024 characters')
        else ModelPackageDescription,
    },
  },
  setModelPackageGroupName(ModelPackageGroupName): {
    Properties+::: {
      ModelPackageGroupName:
        if !std.isString(ModelPackageGroupName) then (error 'ModelPackageGroupName must be a string')
        else if std.isEmpty(ModelPackageGroupName) then (error 'ModelPackageGroupName must be not empty')
        else if std.length(ModelPackageGroupName) < 1 then error ('ModelPackageGroupName should have at least 1 characters')
        else if std.length(ModelPackageGroupName) > 170 then error ('ModelPackageGroupName should have not more than 170 characters')
        else ModelPackageGroupName,
    },
  },
  setModelPackageName(ModelPackageName): {
    Properties+::: {
      ModelPackageName:
        if !std.isString(ModelPackageName) then (error 'ModelPackageName must be a string')
        else if std.isEmpty(ModelPackageName) then (error 'ModelPackageName must be not empty')
        else ModelPackageName,
    },
  },
  setSamplePayloadUrl(SamplePayloadUrl): {
    Properties+::: {
      SamplePayloadUrl:
        if !std.isString(SamplePayloadUrl) then (error 'SamplePayloadUrl must be a string')
        else if std.isEmpty(SamplePayloadUrl) then (error 'SamplePayloadUrl must be not empty')
        else if std.length(SamplePayloadUrl) > 1024 then error ('SamplePayloadUrl should have not more than 1024 characters')
        else SamplePayloadUrl,
    },
  },
  setSkipModelValidation(SkipModelValidation): {
    Properties+::: {
      SkipModelValidation:
        if !std.isString(SkipModelValidation) then (error 'SkipModelValidation must be a string')
        else if std.isEmpty(SkipModelValidation) then (error 'SkipModelValidation must be not empty')
        else if SkipModelValidation != 'None' && SkipModelValidation != 'All' then (error "SkipModelValidation should be 'None' or 'All'")
        else SkipModelValidation,
    },
  },
  setSourceAlgorithmSpecification(SourceAlgorithmSpecification): {
    Properties+::: {
      SourceAlgorithmSpecification:
        if !std.isObject(SourceAlgorithmSpecification) then (error 'SourceAlgorithmSpecification must be an object')
        else if !std.objectHas(SourceAlgorithmSpecification, 'SourceAlgorithms') then (error ' have attribute SourceAlgorithms')
        else SourceAlgorithmSpecification,
    },
  },
  setTask(Task): {
    Properties+::: {
      Task:
        if !std.isString(Task) then (error 'Task must be a string')
        else if std.isEmpty(Task) then (error 'Task must be not empty')
        else Task,
    },
  },
  setValidationSpecification(ValidationSpecification): {
    Properties+::: {
      ValidationSpecification:
        if !std.isObject(ValidationSpecification) then (error 'ValidationSpecification must be an object')
        else if !std.objectHas(ValidationSpecification, 'ValidationProfiles') then (error ' have attribute ValidationProfiles')
        else if !std.objectHas(ValidationSpecification, 'ValidationRole') then (error ' have attribute ValidationRole')
        else ValidationSpecification,
    },
  },
  setModelPackageArn(ModelPackageArn): {
    Properties+::: {
      ModelPackageArn:
        if !std.isString(ModelPackageArn) then (error 'ModelPackageArn must be a string')
        else if std.isEmpty(ModelPackageArn) then (error 'ModelPackageArn must be not empty')
        else if std.length(ModelPackageArn) < 1 then error ('ModelPackageArn should have at least 1 characters')
        else if std.length(ModelPackageArn) > 2048 then error ('ModelPackageArn should have not more than 2048 characters')
        else ModelPackageArn,
    },
  },
  setApprovalDescription(ApprovalDescription): {
    Properties+::: {
      ApprovalDescription:
        if !std.isString(ApprovalDescription) then (error 'ApprovalDescription must be a string')
        else if std.isEmpty(ApprovalDescription) then (error 'ApprovalDescription must be not empty')
        else if std.length(ApprovalDescription) > 1024 then error ('ApprovalDescription should have not more than 1024 characters')
        else ApprovalDescription,
    },
  },
  setCreationTime(CreationTime): {
    Properties+::: {
      CreationTime:
        if !std.isString(CreationTime) then (error 'CreationTime must be a string')
        else if std.isEmpty(CreationTime) then (error 'CreationTime must be not empty')
        else CreationTime,
    },
  },
  setLastModifiedTime(LastModifiedTime): {
    Properties+::: {
      LastModifiedTime:
        if !std.isString(LastModifiedTime) then (error 'LastModifiedTime must be a string')
        else if std.isEmpty(LastModifiedTime) then (error 'LastModifiedTime must be not empty')
        else LastModifiedTime,
    },
  },
  setModelPackageStatus(ModelPackageStatus): {
    Properties+::: {
      ModelPackageStatus:
        if !std.isString(ModelPackageStatus) then (error 'ModelPackageStatus must be a string')
        else if std.isEmpty(ModelPackageStatus) then (error 'ModelPackageStatus must be not empty')
        else if ModelPackageStatus != 'Pending' && ModelPackageStatus != 'Deleting' && ModelPackageStatus != 'InProgress' && ModelPackageStatus != 'Completed' && ModelPackageStatus != 'Failed' then (error "ModelPackageStatus should be 'Pending' or 'Deleting' or 'InProgress' or 'Completed' or 'Failed'")
        else ModelPackageStatus,
    },
  },
  setModelPackageVersion(ModelPackageVersion): {
    Properties+::: {
      ModelPackageVersion:
        if !std.isNumber(ModelPackageVersion) then (error 'ModelPackageVersion must be an number')
        else if ModelPackageVersion < 1 then error ('ModelPackageVersion should be at least 1')
        else ModelPackageVersion,
    },
  },
  setAdditionalInferenceSpecificationsToAdd(AdditionalInferenceSpecificationsToAdd): {
    Properties+::: {
      AdditionalInferenceSpecificationsToAdd:
        if !std.isArray(AdditionalInferenceSpecificationsToAdd) then (error 'AdditionalInferenceSpecificationsToAdd must be an array')
        else if std.length(AdditionalInferenceSpecificationsToAdd) < 1 then error ('AdditionalInferenceSpecificationsToAdd cannot have less than 1 items')
        else if std.length(AdditionalInferenceSpecificationsToAdd) > 15 then error ('AdditionalInferenceSpecificationsToAdd cannot have more than 15 items')
        else AdditionalInferenceSpecificationsToAdd,
    },
  },
  pushAdditionalInferenceSpecificationsToAdd(AdditionalInferenceSpecificationsToAdd): {
    Properties+::: {
      AdditionalInferenceSpecificationsToAdd+: AdditionalInferenceSpecificationsToAdd,
    },
  },
  setModelPackageStatusDetails(ModelPackageStatusDetails): {
    Properties+::: {
      ModelPackageStatusDetails:
        if !std.isObject(ModelPackageStatusDetails) then (error 'ModelPackageStatusDetails must be an object')
        else ModelPackageStatusDetails,
    },
  },
  setSourceUri(SourceUri): {
    Properties+::: {
      SourceUri:
        if !std.isString(SourceUri) then (error 'SourceUri must be a string')
        else if std.isEmpty(SourceUri) then (error 'SourceUri must be not empty')
        else if std.length(SourceUri) > 1024 then error ('SourceUri should have not more than 1024 characters')
        else SourceUri,
    },
  },
  setModelCard(ModelCard): {
    Properties+::: {
      ModelCard:
        if !std.isObject(ModelCard) then (error 'ModelCard must be an object')
        else if !std.objectHas(ModelCard, 'ModelCardContent') then (error ' have attribute ModelCardContent')
        else if !std.objectHas(ModelCard, 'ModelCardStatus') then (error ' have attribute ModelCardStatus')
        else ModelCard,
    },
  },
  setSecurityConfig(SecurityConfig): {
    Properties+::: {
      SecurityConfig:
        if !std.isObject(SecurityConfig) then (error 'SecurityConfig must be an object')
        else if !std.objectHas(SecurityConfig, 'KmsKeyId') then (error ' have attribute KmsKeyId')
        else SecurityConfig,
    },
  },
  setDependsOn(DependsOn): {
    Properties+::: {
      DependsOn: DependsOn,
    },
  },
  pushDependsOn(DependsOn): {
    Properties+::: {
      DependsOn+: DependsOn,
    },
  },
  setCreationPolicy(CreationPolicy): {
    Properties+::: {
      CreationPolicy: CreationPolicy,
    },
  },
  pushCreationPolicy(CreationPolicy): {
    Properties+::: {
      CreationPolicy+: CreationPolicy,
    },
  },
  setDeletionPolicy(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy: DeletionPolicy,
    },
  },
  pushDeletionPolicy(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy+: DeletionPolicy,
    },
  },
  setUpdatePolicy(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy: UpdatePolicy,
    },
  },
  pushUpdatePolicy(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy+: UpdatePolicy,
    },
  },
  setUpdateReplacePolicy(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy: UpdateReplacePolicy,
    },
  },
  pushUpdateReplacePolicy(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy+: UpdateReplacePolicy,
    },
  },
  setMetadata(Metadata): {
    Properties+::: {
      Metadata: Metadata,
    },
  },
  pushMetadata(Metadata): {
    Properties+::: {
      Metadata+: Metadata,
    },
  },
}
