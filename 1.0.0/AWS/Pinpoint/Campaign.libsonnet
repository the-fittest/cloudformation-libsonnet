{
  new(
    SegmentId,
    Schedule,
    ApplicationId,
    Name,
  ): {
    local base = self,
    Properties: {
      assert std.isString(SegmentId) : 'SegmentId must be a string',
      SegmentId: SegmentId,
      assert std.isObject(Schedule) : 'Schedule must be an object',
      Schedule: Schedule,
      assert std.isString(ApplicationId) : 'ApplicationId must be a string',
      ApplicationId: ApplicationId,
      assert std.isString(Name) : 'Name must be a string',
      Name: Name,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Pinpoint::Campaign',
  },
  withDescription(Description): {
    assert std.isString(Description) : 'Description must be a string',
    Properties+::: {
      Description: Description,
    },
  },
  withPriority(Priority): {
    assert std.isNumber(Priority) : 'Priority must be a number',
    Properties+::: {
      Priority: Priority,
    },
  },
  withTemplateConfiguration(TemplateConfiguration): {
    assert std.isObject(TemplateConfiguration) : 'TemplateConfiguration must be a object',
    Properties+::: {
      TemplateConfiguration: TemplateConfiguration,
    },
  },
  withIsPaused(IsPaused): {
    assert std.isBoolean(IsPaused) : 'IsPaused must be a boolean',
    Properties+::: {
      IsPaused: IsPaused,
    },
  },
  withAdditionalTreatments(AdditionalTreatments): {
    Properties+::: {
      AdditionalTreatments: (if std.isArray(AdditionalTreatments) then AdditionalTreatments else [AdditionalTreatments]),
    },
  },
  withAdditionalTreatmentsMixin(AdditionalTreatments): {
    Properties+::: {
      AdditionalTreatments+: (if std.isArray(AdditionalTreatments) then AdditionalTreatments else [AdditionalTreatments]),
    },
  },
  withSegmentVersion(SegmentVersion): {
    assert std.isNumber(SegmentVersion) : 'SegmentVersion must be a number',
    Properties+::: {
      SegmentVersion: SegmentVersion,
    },
  },
  withTreatmentDescription(TreatmentDescription): {
    assert std.isString(TreatmentDescription) : 'TreatmentDescription must be a string',
    Properties+::: {
      TreatmentDescription: TreatmentDescription,
    },
  },
  withMessageConfiguration(MessageConfiguration): {
    assert std.isObject(MessageConfiguration) : 'MessageConfiguration must be a object',
    Properties+::: {
      MessageConfiguration: MessageConfiguration,
    },
  },
  withLimits(Limits): {
    assert std.isObject(Limits) : 'Limits must be a object',
    Properties+::: {
      Limits: Limits,
    },
  },
  withCampaignId(CampaignId): {
    assert std.isString(CampaignId) : 'CampaignId must be a string',
    Properties+::: {
      CampaignId: CampaignId,
    },
  },
  withHoldoutPercent(HoldoutPercent): {
    assert std.isNumber(HoldoutPercent) : 'HoldoutPercent must be a number',
    Properties+::: {
      HoldoutPercent: HoldoutPercent,
    },
  },
  withCustomDeliveryConfiguration(CustomDeliveryConfiguration): {
    assert std.isObject(CustomDeliveryConfiguration) : 'CustomDeliveryConfiguration must be a object',
    Properties+::: {
      CustomDeliveryConfiguration: CustomDeliveryConfiguration,
    },
  },
  withArn(Arn): {
    assert std.isString(Arn) : 'Arn must be a string',
    Properties+::: {
      Arn: Arn,
    },
  },
  withCampaignHook(CampaignHook): {
    assert std.isObject(CampaignHook) : 'CampaignHook must be a object',
    Properties+::: {
      CampaignHook: CampaignHook,
    },
  },
  withTags(Tags): {
    assert std.isObject(Tags) : 'Tags must be a object',
    Properties+::: {
      Tags: Tags,
    },
  },
  withTreatmentName(TreatmentName): {
    assert std.isString(TreatmentName) : 'TreatmentName must be a string',
    Properties+::: {
      TreatmentName: TreatmentName,
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
