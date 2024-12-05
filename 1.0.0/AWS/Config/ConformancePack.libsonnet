{
  new(
    ConformancePackName,
  ): {
    local base = self,
    Properties: {
      ConformancePackName:
        if !std.isString(ConformancePackName) then (error 'ConformancePackName must be a string')
        else if std.isEmpty(ConformancePackName) then (error 'ConformancePackName must be not empty')
        else if std.length(ConformancePackName) < 1 then error ('ConformancePackName should have at least 1 characters')
        else if std.length(ConformancePackName) > 256 then error ('ConformancePackName should have not more than 256 characters')
        else ConformancePackName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Config::ConformancePack',
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
  setTemplateSSMDocumentDetails(TemplateSSMDocumentDetails): {
    Properties+::: {
      TemplateSSMDocumentDetails:
        if !std.isObject(TemplateSSMDocumentDetails) then (error 'TemplateSSMDocumentDetails must be an object')
        else TemplateSSMDocumentDetails,
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
  setConformancePackInputParametersMixin(ConformancePackInputParameters): {
    Properties+::: {
      ConformancePackInputParameters+: ConformancePackInputParameters,
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
