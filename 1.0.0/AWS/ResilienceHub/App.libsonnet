{
  new(
    Name,
    AppTemplateBody,
    ResourceMappings,
  ): {
    local base = self,
    Properties: {
      assert std.isString(Name) : 'Name must be a string',
      Name: Name,
      assert std.isString(AppTemplateBody) : 'AppTemplateBody must be a string',
      AppTemplateBody: AppTemplateBody,
      ResourceMappings: (if std.isArray(ResourceMappings) then ResourceMappings else [ResourceMappings]),
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::ResilienceHub::App',
  },
  withDescription(Description): {
    assert std.isString(Description) : 'Description must be a string',
    Properties+::: {
      Description: Description,
    },
  },
  withAppArn(AppArn): {
    assert std.isString(AppArn) : 'AppArn must be a string',
    Properties+::: {
      AppArn: AppArn,
    },
  },
  withResiliencyPolicyArn(ResiliencyPolicyArn): {
    assert std.isString(ResiliencyPolicyArn) : 'ResiliencyPolicyArn must be a string',
    Properties+::: {
      ResiliencyPolicyArn: ResiliencyPolicyArn,
    },
  },
  withTags(Tags): {
    assert std.isObject(Tags) : 'Tags must be a object',
    Properties+::: {
      Tags: Tags,
    },
  },
  withAppAssessmentSchedule(AppAssessmentSchedule): {
    assert std.isString(AppAssessmentSchedule) : 'AppAssessmentSchedule must be a string',
    assert AppAssessmentSchedule == 'Disabled' || AppAssessmentSchedule == 'Daily' : "AppAssessmentSchedule should be 'Disabled' or 'Daily'",
    Properties+::: {
      AppAssessmentSchedule: AppAssessmentSchedule,
    },
  },
  withPermissionModel(PermissionModel): {
    assert std.isObject(PermissionModel) : 'PermissionModel must be a object',
    Properties+::: {
      PermissionModel: PermissionModel,
    },
  },
  withEventSubscriptions(EventSubscriptions): {
    Properties+::: {
      EventSubscriptions: (if std.isArray(EventSubscriptions) then EventSubscriptions else [EventSubscriptions]),
    },
  },
  withEventSubscriptionsMixin(EventSubscriptions): {
    Properties+::: {
      EventSubscriptions+: (if std.isArray(EventSubscriptions) then EventSubscriptions else [EventSubscriptions]),
    },
  },
  withDriftStatus(DriftStatus): {
    assert std.isString(DriftStatus) : 'DriftStatus must be a string',
    assert DriftStatus == 'NotChecked' || DriftStatus == 'NotDetected' || DriftStatus == 'Detected' : "DriftStatus should be 'NotChecked' or 'NotDetected' or 'Detected'",
    Properties+::: {
      DriftStatus: DriftStatus,
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
