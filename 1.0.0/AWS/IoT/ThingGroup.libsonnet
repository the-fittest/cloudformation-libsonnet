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
    Type: 'AWS::IoT::ThingGroup',
  },
  setId(Id): {
    Properties+::: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else Id,
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
  setThingGroupName(ThingGroupName): {
    Properties+::: {
      ThingGroupName:
        if !std.isString(ThingGroupName) then (error 'ThingGroupName must be a string')
        else if std.isEmpty(ThingGroupName) then (error 'ThingGroupName must be not empty')
        else if std.length(ThingGroupName) < 1 then error ('ThingGroupName should have at least 1 characters')
        else if std.length(ThingGroupName) > 128 then error ('ThingGroupName should have not more than 128 characters')
        else ThingGroupName,
    },
  },
  setParentGroupName(ParentGroupName): {
    Properties+::: {
      ParentGroupName:
        if !std.isString(ParentGroupName) then (error 'ParentGroupName must be a string')
        else if std.isEmpty(ParentGroupName) then (error 'ParentGroupName must be not empty')
        else if std.length(ParentGroupName) < 1 then error ('ParentGroupName should have at least 1 characters')
        else if std.length(ParentGroupName) > 128 then error ('ParentGroupName should have not more than 128 characters')
        else ParentGroupName,
    },
  },
  setQueryString(QueryString): {
    Properties+::: {
      QueryString:
        if !std.isString(QueryString) then (error 'QueryString must be a string')
        else if std.isEmpty(QueryString) then (error 'QueryString must be not empty')
        else if std.length(QueryString) < 1 then error ('QueryString should have at least 1 characters')
        else if std.length(QueryString) > 1000 then error ('QueryString should have not more than 1000 characters')
        else QueryString,
    },
  },
  setThingGroupProperties(ThingGroupProperties): {
    Properties+::: {
      ThingGroupProperties:
        if !std.isObject(ThingGroupProperties) then (error 'ThingGroupProperties must be an object')
        else ThingGroupProperties,
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
