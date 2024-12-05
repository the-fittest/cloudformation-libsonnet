{
  new(
    TemplateName,
    Subject,
  ): {
    local base = self,
    Properties: {
      TemplateName:
        if !std.isString(TemplateName) then (error 'TemplateName must be a string')
        else if std.isEmpty(TemplateName) then (error 'TemplateName must be not empty')
        else TemplateName,
      Subject:
        if !std.isString(Subject) then (error 'Subject must be a string')
        else if std.isEmpty(Subject) then (error 'Subject must be not empty')
        else Subject,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Pinpoint::EmailTemplate',
  },
  setHtmlPart(HtmlPart): {
    Properties+::: {
      HtmlPart:
        if !std.isString(HtmlPart) then (error 'HtmlPart must be a string')
        else if std.isEmpty(HtmlPart) then (error 'HtmlPart must be not empty')
        else HtmlPart,
    },
  },
  setTextPart(TextPart): {
    Properties+::: {
      TextPart:
        if !std.isString(TextPart) then (error 'TextPart must be a string')
        else if std.isEmpty(TextPart) then (error 'TextPart must be not empty')
        else TextPart,
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
