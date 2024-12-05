{
  new(
    Name,
    AppTemplateBody,
    ResourceMappings,
  ): {
    local base = self,
    Properties: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else Name,
      AppTemplateBody:
        if !std.isString(AppTemplateBody) then (error 'AppTemplateBody must be a string')
        else if std.isEmpty(AppTemplateBody) then (error 'AppTemplateBody must be not empty')
        else if std.length(AppTemplateBody) > 409600 then error ('AppTemplateBody should have not more than 409600 characters')
        else AppTemplateBody,
      ResourceMappings:
        if !std.isArray(ResourceMappings) then (error 'ResourceMappings must be an array')
        else ResourceMappings,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::ResilienceHub::App',
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else if std.length(Description) > 500 then error ('Description should have not more than 500 characters')
        else Description,
    },
  },
  setAppArn(AppArn): {
    Properties+::: {
      AppArn:
        if !std.isString(AppArn) then (error 'AppArn must be a string')
        else if std.isEmpty(AppArn) then (error 'AppArn must be not empty')
        else AppArn,
    },
  },
  setResiliencyPolicyArn(ResiliencyPolicyArn): {
    Properties+::: {
      ResiliencyPolicyArn:
        if !std.isString(ResiliencyPolicyArn) then (error 'ResiliencyPolicyArn must be a string')
        else if std.isEmpty(ResiliencyPolicyArn) then (error 'ResiliencyPolicyArn must be not empty')
        else ResiliencyPolicyArn,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isObject(Tags) then (error 'Tags must be an object')
        else Tags,
    },
  },
  setAppAssessmentSchedule(AppAssessmentSchedule): {
    Properties+::: {
      AppAssessmentSchedule:
        if !std.isString(AppAssessmentSchedule) then (error 'AppAssessmentSchedule must be a string')
        else if std.isEmpty(AppAssessmentSchedule) then (error 'AppAssessmentSchedule must be not empty')
        else if AppAssessmentSchedule != 'Disabled' && AppAssessmentSchedule != 'Daily' then (error "AppAssessmentSchedule should be 'Disabled' or 'Daily'")
        else AppAssessmentSchedule,
    },
  },
  setPermissionModel(PermissionModel): {
    Properties+::: {
      PermissionModel:
        if !std.isObject(PermissionModel) then (error 'PermissionModel must be an object')
        else if !std.objectHas(PermissionModel, 'Type') then (error ' have attribute Type')
        else PermissionModel,
    },
  },
  setEventSubscriptions(EventSubscriptions): {
    Properties+::: {
      EventSubscriptions:
        if !std.isArray(EventSubscriptions) then (error 'EventSubscriptions must be an array')
        else EventSubscriptions,
    },
  },
  setEventSubscriptionsMixin(EventSubscriptions): {
    Properties+::: {
      EventSubscriptions+: EventSubscriptions,
    },
  },
  setDriftStatus(DriftStatus): {
    Properties+::: {
      DriftStatus:
        if !std.isString(DriftStatus) then (error 'DriftStatus must be a string')
        else if std.isEmpty(DriftStatus) then (error 'DriftStatus must be not empty')
        else if DriftStatus != 'NotChecked' && DriftStatus != 'NotDetected' && DriftStatus != 'Detected' then (error "DriftStatus should be 'NotChecked' or 'NotDetected' or 'Detected'")
        else DriftStatus,
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
