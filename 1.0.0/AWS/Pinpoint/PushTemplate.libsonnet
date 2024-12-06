{
  new(
    TemplateName,
  ): {
    local base = self,
    Properties: {
      TemplateName:
        if !std.isString(TemplateName) then (error 'TemplateName must be a string')
        else if std.isEmpty(TemplateName) then (error 'TemplateName must be not empty')
        else TemplateName,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Pinpoint::PushTemplate',
  },
  setGCM(GCM): {
    Properties+::: {
      GCM:
        if !std.isObject(GCM) then (error 'GCM must be an object')
        else GCM,
    },
  },
  setBaidu(Baidu): {
    Properties+::: {
      Baidu:
        if !std.isObject(Baidu) then (error 'Baidu must be an object')
        else Baidu,
    },
  },
  setADM(ADM): {
    Properties+::: {
      ADM:
        if !std.isObject(ADM) then (error 'ADM must be an object')
        else ADM,
    },
  },
  setAPNS(APNS): {
    Properties+::: {
      APNS:
        if !std.isObject(APNS) then (error 'APNS must be an object')
        else APNS,
    },
  },
  setTemplateDescription(TemplateDescription): {
    Properties+::: {
      TemplateDescription:
        if !std.isString(TemplateDescription) then (error 'TemplateDescription must be a string')
        else if std.isEmpty(TemplateDescription) then (error 'TemplateDescription must be not empty')
        else TemplateDescription,
    },
  },
  setDefaultSubstitutions(DefaultSubstitutions): {
    Properties+::: {
      DefaultSubstitutions:
        if !std.isString(DefaultSubstitutions) then (error 'DefaultSubstitutions must be a string')
        else if std.isEmpty(DefaultSubstitutions) then (error 'DefaultSubstitutions must be not empty')
        else DefaultSubstitutions,
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
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else Arn,
    },
  },
  setDefault(Default): {
    Properties+::: {
      Default:
        if !std.isObject(Default) then (error 'Default must be an object')
        else Default,
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
