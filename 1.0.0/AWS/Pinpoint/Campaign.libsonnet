{
  new(
    SegmentId,
    Schedule,
    ApplicationId,
    Name,
  ): {
    local base = self,
    Properties: {
      SegmentId:
        if !std.isString(SegmentId) then (error 'SegmentId must be a string')
        else if std.isEmpty(SegmentId) then (error 'SegmentId must be not empty')
        else SegmentId,
      Schedule:
        if !std.isObject(Schedule) then (error 'Schedule must be an object')
        else Schedule,
      ApplicationId:
        if !std.isString(ApplicationId) then (error 'ApplicationId must be a string')
        else if std.isEmpty(ApplicationId) then (error 'ApplicationId must be not empty')
        else ApplicationId,
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else Name,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Pinpoint::Campaign',
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else Description,
    },
  },
  setPriority(Priority): {
    Properties+::: {
      Priority:
        if !std.isNumber(Priority) then (error 'Priority must be an number')
        else Priority,
    },
  },
  setTemplateConfiguration(TemplateConfiguration): {
    Properties+::: {
      TemplateConfiguration:
        if !std.isObject(TemplateConfiguration) then (error 'TemplateConfiguration must be an object')
        else TemplateConfiguration,
    },
  },
  setIsPaused(IsPaused): {
    Properties+::: {
      IsPaused:
        if !std.isBoolean(IsPaused) then (error 'IsPaused must be a boolean') else IsPaused,
    },
  },
  setAdditionalTreatments(AdditionalTreatments): {
    Properties+::: {
      AdditionalTreatments:
        if !std.isArray(AdditionalTreatments) then (error 'AdditionalTreatments must be an array')
        else AdditionalTreatments,
    },
  },
  setAdditionalTreatmentsMixin(AdditionalTreatments): {
    Properties+::: {
      AdditionalTreatments+: AdditionalTreatments,
    },
  },
  setSegmentVersion(SegmentVersion): {
    Properties+::: {
      SegmentVersion:
        if !std.isNumber(SegmentVersion) then (error 'SegmentVersion must be an number')
        else SegmentVersion,
    },
  },
  setTreatmentDescription(TreatmentDescription): {
    Properties+::: {
      TreatmentDescription:
        if !std.isString(TreatmentDescription) then (error 'TreatmentDescription must be a string')
        else if std.isEmpty(TreatmentDescription) then (error 'TreatmentDescription must be not empty')
        else TreatmentDescription,
    },
  },
  setMessageConfiguration(MessageConfiguration): {
    Properties+::: {
      MessageConfiguration:
        if !std.isObject(MessageConfiguration) then (error 'MessageConfiguration must be an object')
        else MessageConfiguration,
    },
  },
  setLimits(Limits): {
    Properties+::: {
      Limits:
        if !std.isObject(Limits) then (error 'Limits must be an object')
        else Limits,
    },
  },
  setCampaignId(CampaignId): {
    Properties+::: {
      CampaignId:
        if !std.isString(CampaignId) then (error 'CampaignId must be a string')
        else if std.isEmpty(CampaignId) then (error 'CampaignId must be not empty')
        else CampaignId,
    },
  },
  setHoldoutPercent(HoldoutPercent): {
    Properties+::: {
      HoldoutPercent:
        if !std.isNumber(HoldoutPercent) then (error 'HoldoutPercent must be an number')
        else HoldoutPercent,
    },
  },
  setCustomDeliveryConfiguration(CustomDeliveryConfiguration): {
    Properties+::: {
      CustomDeliveryConfiguration:
        if !std.isObject(CustomDeliveryConfiguration) then (error 'CustomDeliveryConfiguration must be an object')
        else CustomDeliveryConfiguration,
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
  setCampaignHook(CampaignHook): {
    Properties+::: {
      CampaignHook:
        if !std.isObject(CampaignHook) then (error 'CampaignHook must be an object')
        else CampaignHook,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isObject(Tags) then (error 'Tags must be an object')
        else Tags,
    },
  },
  setTreatmentName(TreatmentName): {
    Properties+::: {
      TreatmentName:
        if !std.isString(TreatmentName) then (error 'TreatmentName must be a string')
        else if std.isEmpty(TreatmentName) then (error 'TreatmentName must be not empty')
        else TreatmentName,
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
