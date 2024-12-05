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
    Type: 'AWS::CloudTrail::Dashboard',
  },
  setWidgets(Widgets): {
    Properties+::: {
      Widgets:
        if !std.isArray(Widgets) then (error 'Widgets must be an array')
        else Widgets,
    },
  },
  setWidgetsMixin(Widgets): {
    Properties+::: {
      Widgets+: Widgets,
    },
  },
  setCreatedTimestamp(CreatedTimestamp): {
    Properties+::: {
      CreatedTimestamp:
        if !std.isString(CreatedTimestamp) then (error 'CreatedTimestamp must be a string')
        else if std.isEmpty(CreatedTimestamp) then (error 'CreatedTimestamp must be not empty')
        else CreatedTimestamp,
    },
  },
  setDashboardArn(DashboardArn): {
    Properties+::: {
      DashboardArn:
        if !std.isString(DashboardArn) then (error 'DashboardArn must be a string')
        else if std.isEmpty(DashboardArn) then (error 'DashboardArn must be not empty')
        else DashboardArn,
    },
  },
  setRefreshSchedule(RefreshSchedule): {
    Properties+::: {
      RefreshSchedule:
        if !std.isObject(RefreshSchedule) then (error 'RefreshSchedule must be an object')
        else RefreshSchedule,
    },
  },
  setName(Name): {
    Properties+::: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else Name,
    },
  },
  setStatus(Status): {
    Properties+::: {
      Status:
        if !std.isString(Status) then (error 'Status must be a string')
        else if std.isEmpty(Status) then (error 'Status must be not empty')
        else if Status != 'CREATING' && Status != 'CREATED' && Status != 'UPDATING' && Status != 'UPDATED' && Status != 'DELETING' then (error "Status should be 'CREATING' or 'CREATED' or 'UPDATING' or 'UPDATED' or 'DELETING'")
        else Status,
    },
  },
  setTerminationProtectionEnabled(TerminationProtectionEnabled): {
    Properties+::: {
      TerminationProtectionEnabled:
        if !std.isBoolean(TerminationProtectionEnabled) then (error 'TerminationProtectionEnabled must be a boolean') else TerminationProtectionEnabled,
    },
  },
  setType(Type): {
    Properties+::: {
      Type:
        if !std.isString(Type) then (error 'Type must be a string')
        else if std.isEmpty(Type) then (error 'Type must be not empty')
        else if Type != 'MANAGED' && Type != 'CUSTOM' then (error "Type should be 'MANAGED' or 'CUSTOM'")
        else Type,
    },
  },
  setUpdatedTimestamp(UpdatedTimestamp): {
    Properties+::: {
      UpdatedTimestamp:
        if !std.isString(UpdatedTimestamp) then (error 'UpdatedTimestamp must be a string')
        else if std.isEmpty(UpdatedTimestamp) then (error 'UpdatedTimestamp must be not empty')
        else UpdatedTimestamp,
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
