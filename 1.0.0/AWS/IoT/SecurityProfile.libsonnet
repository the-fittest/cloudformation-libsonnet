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
    Type: 'AWS::IoT::SecurityProfile',
  },
  setSecurityProfileName(SecurityProfileName): {
    Properties+::: {
      SecurityProfileName:
        if !std.isString(SecurityProfileName) then (error 'SecurityProfileName must be a string')
        else if std.isEmpty(SecurityProfileName) then (error 'SecurityProfileName must be not empty')
        else if std.length(SecurityProfileName) < 1 then error ('SecurityProfileName should have at least 1 characters')
        else if std.length(SecurityProfileName) > 128 then error ('SecurityProfileName should have not more than 128 characters')
        else SecurityProfileName,
    },
  },
  setSecurityProfileDescription(SecurityProfileDescription): {
    Properties+::: {
      SecurityProfileDescription:
        if !std.isString(SecurityProfileDescription) then (error 'SecurityProfileDescription must be a string')
        else if std.isEmpty(SecurityProfileDescription) then (error 'SecurityProfileDescription must be not empty')
        else if std.length(SecurityProfileDescription) > 1000 then error ('SecurityProfileDescription should have not more than 1000 characters')
        else SecurityProfileDescription,
    },
  },
  setBehaviors(Behaviors): {
    Properties+::: {
      Behaviors:
        if !std.isArray(Behaviors) then (error 'Behaviors must be an array')
        else Behaviors,
    },
  },
  setBehaviorsMixin(Behaviors): {
    Properties+::: {
      Behaviors+: Behaviors,
    },
  },
  setAlertTargets(AlertTargets): {
    Properties+::: {
      AlertTargets:
        if !std.isObject(AlertTargets) then (error 'AlertTargets must be an object')
        else AlertTargets,
    },
  },
  setAdditionalMetricsToRetainV2(AdditionalMetricsToRetainV2): {
    Properties+::: {
      AdditionalMetricsToRetainV2:
        if !std.isArray(AdditionalMetricsToRetainV2) then (error 'AdditionalMetricsToRetainV2 must be an array')
        else AdditionalMetricsToRetainV2,
    },
  },
  setAdditionalMetricsToRetainV2Mixin(AdditionalMetricsToRetainV2): {
    Properties+::: {
      AdditionalMetricsToRetainV2+: AdditionalMetricsToRetainV2,
    },
  },
  setMetricsExportConfig(MetricsExportConfig): {
    Properties+::: {
      MetricsExportConfig:
        if !std.isObject(MetricsExportConfig) then (error 'MetricsExportConfig must be an object')
        else if !std.objectHas(MetricsExportConfig, 'MqttTopic') then (error ' have attribute MqttTopic')
        else if !std.objectHas(MetricsExportConfig, 'RoleArn') then (error ' have attribute RoleArn')
        else MetricsExportConfig,
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
  setTargetArns(TargetArns): {
    Properties+::: {
      TargetArns:
        if !std.isArray(TargetArns) then (error 'TargetArns must be an array')
        else TargetArns,
    },
  },
  setTargetArnsMixin(TargetArns): {
    Properties+::: {
      TargetArns+: TargetArns,
    },
  },
  setSecurityProfileArn(SecurityProfileArn): {
    Properties+::: {
      SecurityProfileArn:
        if !std.isString(SecurityProfileArn) then (error 'SecurityProfileArn must be a string')
        else if std.isEmpty(SecurityProfileArn) then (error 'SecurityProfileArn must be not empty')
        else SecurityProfileArn,
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
