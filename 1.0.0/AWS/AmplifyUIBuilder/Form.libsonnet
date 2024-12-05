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
    Type: 'AWS::AmplifyUIBuilder::Form',
  },
  setAppId(AppId): {
    Properties+::: {
      AppId:
        if !std.isString(AppId) then (error 'AppId must be a string')
        else if std.isEmpty(AppId) then (error 'AppId must be not empty')
        else AppId,
    },
  },
  setCta(Cta): {
    Properties+::: {
      Cta:
        if !std.isObject(Cta) then (error 'Cta must be an object')
        else Cta,
    },
  },
  setDataType(DataType): {
    Properties+::: {
      DataType:
        if !std.isObject(DataType) then (error 'DataType must be an object')
        else if !std.objectHas(DataType, 'DataSourceType') then (error ' have attribute DataSourceType')
        else if !std.objectHas(DataType, 'DataTypeName') then (error ' have attribute DataTypeName')
        else DataType,
    },
  },
  setEnvironmentName(EnvironmentName): {
    Properties+::: {
      EnvironmentName:
        if !std.isString(EnvironmentName) then (error 'EnvironmentName must be a string')
        else if std.isEmpty(EnvironmentName) then (error 'EnvironmentName must be not empty')
        else EnvironmentName,
    },
  },
  setFields(Fields): {
    Properties+::: {
      Fields:
        if !std.isObject(Fields) then (error 'Fields must be an object')
        else Fields,
    },
  },
  setFormActionType(FormActionType): {
    Properties+::: {
      FormActionType:
        if !std.isString(FormActionType) then (error 'FormActionType must be a string')
        else if std.isEmpty(FormActionType) then (error 'FormActionType must be not empty')
        else if FormActionType != 'create' && FormActionType != 'update' then (error "FormActionType should be 'create' or 'update'")
        else FormActionType,
    },
  },
  setId(Id): {
    Properties+::: {
      Id:
        if !std.isString(Id) then (error 'Id must be a string')
        else if std.isEmpty(Id) then (error 'Id must be not empty')
        else Id,
    },
  },
  setLabelDecorator(LabelDecorator): {
    Properties+::: {
      LabelDecorator:
        if !std.isString(LabelDecorator) then (error 'LabelDecorator must be a string')
        else if std.isEmpty(LabelDecorator) then (error 'LabelDecorator must be not empty')
        else if LabelDecorator != 'required' && LabelDecorator != 'optional' && LabelDecorator != 'none' then (error "LabelDecorator should be 'required' or 'optional' or 'none'")
        else LabelDecorator,
    },
  },
  setName(Name): {
    Properties+::: {
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else if std.length(Name) < 1 then error ('Name should have at least 1 characters')
        else if std.length(Name) > 255 then error ('Name should have not more than 255 characters')
        else Name,
    },
  },
  setSchemaVersion(SchemaVersion): {
    Properties+::: {
      SchemaVersion:
        if !std.isString(SchemaVersion) then (error 'SchemaVersion must be a string')
        else if std.isEmpty(SchemaVersion) then (error 'SchemaVersion must be not empty')
        else SchemaVersion,
    },
  },
  setSectionalElements(SectionalElements): {
    Properties+::: {
      SectionalElements:
        if !std.isObject(SectionalElements) then (error 'SectionalElements must be an object')
        else SectionalElements,
    },
  },
  setStyle(Style): {
    Properties+::: {
      Style:
        if !std.isObject(Style) then (error 'Style must be an object')
        else Style,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isObject(Tags) then (error 'Tags must be an object')
        else Tags,
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
