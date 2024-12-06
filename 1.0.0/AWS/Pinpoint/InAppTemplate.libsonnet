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
    Type: 'AWS::Pinpoint::InAppTemplate',
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else Arn,
    },
  },
  setContent(Content): {
    Properties+::: {
      Content:
        if !std.isArray(Content) then (error 'Content must be an array')
        else Content,
    },
  },
  pushContent(Content): {
    Properties+::: {
      Content+: Content,
    },
  },
  setCustomConfig(CustomConfig): {
    Properties+::: {
      CustomConfig:
        if !std.isObject(CustomConfig) then (error 'CustomConfig must be an object')
        else CustomConfig,
    },
  },
  setLayout(Layout): {
    Properties+::: {
      Layout:
        if !std.isString(Layout) then (error 'Layout must be a string')
        else if std.isEmpty(Layout) then (error 'Layout must be not empty')
        else if Layout != 'BOTTOM_BANNER' && Layout != 'TOP_BANNER' && Layout != 'OVERLAYS' && Layout != 'MOBILE_FEED' && Layout != 'MIDDLE_BANNER' && Layout != 'CAROUSEL' then (error "Layout should be 'BOTTOM_BANNER' or 'TOP_BANNER' or 'OVERLAYS' or 'MOBILE_FEED' or 'MIDDLE_BANNER' or 'CAROUSEL'")
        else Layout,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isObject(Tags) then (error 'Tags must be an object')
        else Tags,
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
