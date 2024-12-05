{
  new(
    JobTemplateId,
    Description,
  ): {
    local base = self,
    Properties: {
      JobTemplateId:
        if !std.isString(JobTemplateId) then (error 'JobTemplateId must be a string')
        else if std.isEmpty(JobTemplateId) then (error 'JobTemplateId must be not empty')
        else if std.length(JobTemplateId) < 1 then error ('JobTemplateId should have at least 1 characters')
        else if std.length(JobTemplateId) > 64 then error ('JobTemplateId should have not more than 64 characters')
        else JobTemplateId,
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else if std.length(Description) > 2028 then error ('Description should have not more than 2028 characters')
        else Description,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::IoT::JobTemplate',
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else Arn,
    },
  },
  setJobArn(JobArn): {
    Properties+::: {
      JobArn:
        if !std.isString(JobArn) then (error 'JobArn must be a string')
        else if std.isEmpty(JobArn) then (error 'JobArn must be not empty')
        else JobArn,
    },
  },
  setDocument(Document): {
    Properties+::: {
      Document:
        if !std.isString(Document) then (error 'Document must be a string')
        else if std.isEmpty(Document) then (error 'Document must be not empty')
        else if std.length(Document) > 32768 then error ('Document should have not more than 32768 characters')
        else Document,
    },
  },
  setDocumentSource(DocumentSource): {
    Properties+::: {
      DocumentSource:
        if !std.isString(DocumentSource) then (error 'DocumentSource must be a string')
        else if std.isEmpty(DocumentSource) then (error 'DocumentSource must be not empty')
        else if std.length(DocumentSource) < 1 then error ('DocumentSource should have at least 1 characters')
        else if std.length(DocumentSource) > 1350 then error ('DocumentSource should have not more than 1350 characters')
        else DocumentSource,
    },
  },
  setTimeoutConfig(TimeoutConfig): {
    Properties+::: {
      TimeoutConfig:
        if !std.isObject(TimeoutConfig) then (error 'TimeoutConfig must be an object')
        else if !std.objectHas(TimeoutConfig, 'InProgressTimeoutInMinutes') then (error ' have attribute InProgressTimeoutInMinutes')
        else TimeoutConfig,
    },
  },
  setJobExecutionsRolloutConfig(JobExecutionsRolloutConfig): {
    Properties+::: {
      JobExecutionsRolloutConfig:
        if !std.isObject(JobExecutionsRolloutConfig) then (error 'JobExecutionsRolloutConfig must be an object')
        else JobExecutionsRolloutConfig,
    },
  },
  setAbortConfig(AbortConfig): {
    Properties+::: {
      AbortConfig:
        if !std.isObject(AbortConfig) then (error 'AbortConfig must be an object')
        else if !std.objectHas(AbortConfig, 'CriteriaList') then (error ' have attribute CriteriaList')
        else AbortConfig,
    },
  },
  setPresignedUrlConfig(PresignedUrlConfig): {
    Properties+::: {
      PresignedUrlConfig:
        if !std.isObject(PresignedUrlConfig) then (error 'PresignedUrlConfig must be an object')
        else if !std.objectHas(PresignedUrlConfig, 'RoleArn') then (error ' have attribute RoleArn')
        else PresignedUrlConfig,
    },
  },
  setJobExecutionsRetryConfig(JobExecutionsRetryConfig): {
    Properties+::: {
      JobExecutionsRetryConfig:
        if !std.isObject(JobExecutionsRetryConfig) then (error 'JobExecutionsRetryConfig must be an object')
        else JobExecutionsRetryConfig,
    },
  },
  setMaintenanceWindows(MaintenanceWindows): {
    Properties+::: {
      MaintenanceWindows:
        if !std.isArray(MaintenanceWindows) then (error 'MaintenanceWindows must be an array')
        else MaintenanceWindows,
    },
  },
  setMaintenanceWindowsMixin(MaintenanceWindows): {
    Properties+::: {
      MaintenanceWindows+: MaintenanceWindows,
    },
  },
  setDestinationPackageVersions(DestinationPackageVersions): {
    Properties+::: {
      DestinationPackageVersions:
        if !std.isArray(DestinationPackageVersions) then (error 'DestinationPackageVersions must be an array')
        else DestinationPackageVersions,
    },
  },
  setDestinationPackageVersionsMixin(DestinationPackageVersions): {
    Properties+::: {
      DestinationPackageVersions+: DestinationPackageVersions,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else if std.length(Tags) > 50 then error ('Tags cannot have more than 50 items')
        else Tags,
    },
  },
  setTagsMixin(Tags): {
    Properties+::: {
      Tags+: Tags,
    },
  },
  setDependsOn(DependsOn): {
    Properties+::: {
      DependsOn: DependsOn,
    },
  },
  setDependsOnMixin(DependsOn): {
    Properties+::: {
      DependsOn+: DependsOn,
    },
  },
  setCreationPolicy(CreationPolicy): {
    Properties+::: {
      CreationPolicy: CreationPolicy,
    },
  },
  setCreationPolicyMixin(CreationPolicy): {
    Properties+::: {
      CreationPolicy+: CreationPolicy,
    },
  },
  setDeletionPolicy(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy: DeletionPolicy,
    },
  },
  setDeletionPolicyMixin(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy+: DeletionPolicy,
    },
  },
  setUpdatePolicy(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy: UpdatePolicy,
    },
  },
  setUpdatePolicyMixin(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy+: UpdatePolicy,
    },
  },
  setUpdateReplacePolicy(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy: UpdateReplacePolicy,
    },
  },
  setUpdateReplacePolicyMixin(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy+: UpdateReplacePolicy,
    },
  },
  setMetadata(Metadata): {
    Properties+::: {
      Metadata: Metadata,
    },
  },
  setMetadataMixin(Metadata): {
    Properties+::: {
      Metadata+: Metadata,
    },
  },
}
