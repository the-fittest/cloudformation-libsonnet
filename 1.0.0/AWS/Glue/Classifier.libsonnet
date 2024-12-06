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
    Type: 'AWS::Glue::Classifier',
  },
  setXMLClassifier(XMLClassifier): {
    Properties+::: {
      XMLClassifier:
        if !std.isObject(XMLClassifier) then (error 'XMLClassifier must be an object')
        else if !std.objectHas(XMLClassifier, 'RowTag') then (error ' have attribute RowTag')
        else if !std.objectHas(XMLClassifier, 'Classification') then (error ' have attribute Classification')
        else XMLClassifier,
    },
  },
  setCsvClassifier(CsvClassifier): {
    Properties+::: {
      CsvClassifier:
        if !std.isObject(CsvClassifier) then (error 'CsvClassifier must be an object')
        else CsvClassifier,
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
  setGrokClassifier(GrokClassifier): {
    Properties+::: {
      GrokClassifier:
        if !std.isObject(GrokClassifier) then (error 'GrokClassifier must be an object')
        else if !std.objectHas(GrokClassifier, 'GrokPattern') then (error ' have attribute GrokPattern')
        else if !std.objectHas(GrokClassifier, 'Classification') then (error ' have attribute Classification')
        else GrokClassifier,
    },
  },
  setJsonClassifier(JsonClassifier): {
    Properties+::: {
      JsonClassifier:
        if !std.isObject(JsonClassifier) then (error 'JsonClassifier must be an object')
        else if !std.objectHas(JsonClassifier, 'JsonPath') then (error ' have attribute JsonPath')
        else JsonClassifier,
    },
  },
  setDependsOn(DependsOn): {
    Properties+::: {
      DependsOn: DependsOn,
    },
  },
  pushDependsOn(DependsOn): {
    Properties+::: {
      DependsOn+: DependsOn,
    },
  },
  setCreationPolicy(CreationPolicy): {
    Properties+::: {
      CreationPolicy: CreationPolicy,
    },
  },
  pushCreationPolicy(CreationPolicy): {
    Properties+::: {
      CreationPolicy+: CreationPolicy,
    },
  },
  setDeletionPolicy(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy: DeletionPolicy,
    },
  },
  pushDeletionPolicy(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy+: DeletionPolicy,
    },
  },
  setUpdatePolicy(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy: UpdatePolicy,
    },
  },
  pushUpdatePolicy(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy+: UpdatePolicy,
    },
  },
  setUpdateReplacePolicy(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy: UpdateReplacePolicy,
    },
  },
  pushUpdateReplacePolicy(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy+: UpdateReplacePolicy,
    },
  },
  setMetadata(Metadata): {
    Properties+::: {
      Metadata: Metadata,
    },
  },
  pushMetadata(Metadata): {
    Properties+::: {
      Metadata+: Metadata,
    },
  },
}
