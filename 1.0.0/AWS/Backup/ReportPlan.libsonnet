{
  new(
    ReportDeliveryChannel,
    ReportSetting,
  ): {
    local base = self,
    Properties: {
      ReportDeliveryChannel:
        if !std.isObject(ReportDeliveryChannel) then (error 'ReportDeliveryChannel must be an object')
        else if !std.objectHas(ReportDeliveryChannel, 'S3BucketName') then (error ' have attribute S3BucketName')
        else ReportDeliveryChannel,
      ReportSetting:
        if !std.isObject(ReportSetting) then (error 'ReportSetting must be an object')
        else if !std.objectHas(ReportSetting, 'ReportTemplate') then (error ' have attribute ReportTemplate')
        else ReportSetting,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Backup::ReportPlan',
  },
  setReportPlanName(ReportPlanName): {
    Properties+::: {
      ReportPlanName:
        if !std.isString(ReportPlanName) then (error 'ReportPlanName must be a string')
        else if std.isEmpty(ReportPlanName) then (error 'ReportPlanName must be not empty')
        else if std.length(ReportPlanName) < 1 then error ('ReportPlanName should have at least 1 characters')
        else if std.length(ReportPlanName) > 256 then error ('ReportPlanName should have not more than 256 characters')
        else ReportPlanName,
    },
  },
  setReportPlanArn(ReportPlanArn): {
    Properties+::: {
      ReportPlanArn:
        if !std.isString(ReportPlanArn) then (error 'ReportPlanArn must be a string')
        else if std.isEmpty(ReportPlanArn) then (error 'ReportPlanArn must be not empty')
        else ReportPlanArn,
    },
  },
  setReportPlanDescription(ReportPlanDescription): {
    Properties+::: {
      ReportPlanDescription:
        if !std.isString(ReportPlanDescription) then (error 'ReportPlanDescription must be a string')
        else if std.isEmpty(ReportPlanDescription) then (error 'ReportPlanDescription must be not empty')
        else if std.length(ReportPlanDescription) > 1024 then error ('ReportPlanDescription should have not more than 1024 characters')
        else ReportPlanDescription,
    },
  },
  setReportPlanTags(ReportPlanTags): {
    Properties+::: {
      ReportPlanTags:
        if !std.isArray(ReportPlanTags) then (error 'ReportPlanTags must be an array')
        else ReportPlanTags,
    },
  },
  setReportPlanTagsMixin(ReportPlanTags): {
    Properties+::: {
      ReportPlanTags+: ReportPlanTags,
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
