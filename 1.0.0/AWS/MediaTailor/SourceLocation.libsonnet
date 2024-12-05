{
  new(
    HttpConfiguration,
    SourceLocationName,
  ): {
    local base = self,
    Properties: {
      HttpConfiguration:
        if !std.isObject(HttpConfiguration) then (error 'HttpConfiguration must be an object')
        else if !std.objectHas(HttpConfiguration, 'BaseUrl') then (error ' have attribute BaseUrl')
        else HttpConfiguration,
      SourceLocationName:
        if !std.isString(SourceLocationName) then (error 'SourceLocationName must be a string')
        else if std.isEmpty(SourceLocationName) then (error 'SourceLocationName must be not empty')
        else SourceLocationName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::MediaTailor::SourceLocation',
  },
  setAccessConfiguration(AccessConfiguration): {
    Properties+::: {
      AccessConfiguration:
        if !std.isObject(AccessConfiguration) then (error 'AccessConfiguration must be an object')
        else AccessConfiguration,
    },
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else Arn,
    },
  },
  setDefaultSegmentDeliveryConfiguration(DefaultSegmentDeliveryConfiguration): {
    Properties+::: {
      DefaultSegmentDeliveryConfiguration:
        if !std.isObject(DefaultSegmentDeliveryConfiguration) then (error 'DefaultSegmentDeliveryConfiguration must be an object')
        else DefaultSegmentDeliveryConfiguration,
    },
  },
  setSegmentDeliveryConfigurations(SegmentDeliveryConfigurations): {
    Properties+::: {
      SegmentDeliveryConfigurations:
        if !std.isArray(SegmentDeliveryConfigurations) then (error 'SegmentDeliveryConfigurations must be an array')
        else SegmentDeliveryConfigurations,
    },
  },
  setSegmentDeliveryConfigurationsMixin(SegmentDeliveryConfigurations): {
    Properties+::: {
      SegmentDeliveryConfigurations+: SegmentDeliveryConfigurations,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
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
