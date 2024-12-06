{
  new(
    OrganizationConformancePackName,
  ): {
    local base = self,
    Properties: {
      OrganizationConformancePackName:
        if !std.isString(OrganizationConformancePackName) then (error 'OrganizationConformancePackName must be a string')
        else if std.isEmpty(OrganizationConformancePackName) then (error 'OrganizationConformancePackName must be not empty')
        else if std.length(OrganizationConformancePackName) < 1 then error ('OrganizationConformancePackName should have at least 1 characters')
        else if std.length(OrganizationConformancePackName) > 128 then error ('OrganizationConformancePackName should have not more than 128 characters')
        else OrganizationConformancePackName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Config::OrganizationConformancePack',
  },
  setTemplateS3Uri(TemplateS3Uri): {
    Properties+::: {
      TemplateS3Uri:
        if !std.isString(TemplateS3Uri) then (error 'TemplateS3Uri must be a string')
        else if std.isEmpty(TemplateS3Uri) then (error 'TemplateS3Uri must be not empty')
        else if std.length(TemplateS3Uri) < 1 then error ('TemplateS3Uri should have at least 1 characters')
        else if std.length(TemplateS3Uri) > 1024 then error ('TemplateS3Uri should have not more than 1024 characters')
        else TemplateS3Uri,
    },
  },
  setTemplateBody(TemplateBody): {
    Properties+::: {
      TemplateBody:
        if !std.isString(TemplateBody) then (error 'TemplateBody must be a string')
        else if std.isEmpty(TemplateBody) then (error 'TemplateBody must be not empty')
        else if std.length(TemplateBody) < 1 then error ('TemplateBody should have at least 1 characters')
        else if std.length(TemplateBody) > 51200 then error ('TemplateBody should have not more than 51200 characters')
        else TemplateBody,
    },
  },
  setDeliveryS3Bucket(DeliveryS3Bucket): {
    Properties+::: {
      DeliveryS3Bucket:
        if !std.isString(DeliveryS3Bucket) then (error 'DeliveryS3Bucket must be a string')
        else if std.isEmpty(DeliveryS3Bucket) then (error 'DeliveryS3Bucket must be not empty')
        else if std.length(DeliveryS3Bucket) > 63 then error ('DeliveryS3Bucket should have not more than 63 characters')
        else DeliveryS3Bucket,
    },
  },
  setDeliveryS3KeyPrefix(DeliveryS3KeyPrefix): {
    Properties+::: {
      DeliveryS3KeyPrefix:
        if !std.isString(DeliveryS3KeyPrefix) then (error 'DeliveryS3KeyPrefix must be a string')
        else if std.isEmpty(DeliveryS3KeyPrefix) then (error 'DeliveryS3KeyPrefix must be not empty')
        else if std.length(DeliveryS3KeyPrefix) > 1024 then error ('DeliveryS3KeyPrefix should have not more than 1024 characters')
        else DeliveryS3KeyPrefix,
    },
  },
  setConformancePackInputParameters(ConformancePackInputParameters): {
    Properties+::: {
      ConformancePackInputParameters:
        if !std.isArray(ConformancePackInputParameters) then (error 'ConformancePackInputParameters must be an array')
        else if std.length(ConformancePackInputParameters) > 60 then error ('ConformancePackInputParameters cannot have more than 60 items')
        else ConformancePackInputParameters,
    },
  },
  pushConformancePackInputParameters(ConformancePackInputParameters): {
    Properties+::: {
      ConformancePackInputParameters+: ConformancePackInputParameters,
    },
  },
  setExcludedAccounts(ExcludedAccounts): {
    Properties+::: {
      ExcludedAccounts:
        if !std.isArray(ExcludedAccounts) then (error 'ExcludedAccounts must be an array')
        else if std.length(ExcludedAccounts) > 1000 then error ('ExcludedAccounts cannot have more than 1000 items')
        else ExcludedAccounts,
    },
  },
  pushExcludedAccounts(ExcludedAccounts): {
    Properties+::: {
      ExcludedAccounts+: ExcludedAccounts,
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
