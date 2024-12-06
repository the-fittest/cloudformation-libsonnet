{
  new(
    Content,
  ): {
    local base = self,
    Properties: {
      Content: Content,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::SSM::Document',
  },
  setAttachments(Attachments): {
    Properties+::: {
      Attachments:
        if !std.isArray(Attachments) then (error 'Attachments must be an array')
        else if std.length(Attachments) > 20 then error ('Attachments cannot have more than 20 items')
        else Attachments,
    },
  },
  pushAttachments(Attachments): {
    Properties+::: {
      Attachments+: Attachments,
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
  setVersionName(VersionName): {
    Properties+::: {
      VersionName:
        if !std.isString(VersionName) then (error 'VersionName must be a string')
        else if std.isEmpty(VersionName) then (error 'VersionName must be not empty')
        else VersionName,
    },
  },
  setDocumentType(DocumentType): {
    Properties+::: {
      DocumentType:
        if !std.isString(DocumentType) then (error 'DocumentType must be a string')
        else if std.isEmpty(DocumentType) then (error 'DocumentType must be not empty')
        else if DocumentType != 'ApplicationConfiguration' && DocumentType != 'ApplicationConfigurationSchema' && DocumentType != 'Automation' && DocumentType != 'Automation.ChangeTemplate' && DocumentType != 'ChangeCalendar' && DocumentType != 'CloudFormation' && DocumentType != 'Command' && DocumentType != 'DeploymentStrategy' && DocumentType != 'Package' && DocumentType != 'Policy' && DocumentType != 'ProblemAnalysis' && DocumentType != 'ProblemAnalysisTemplate' && DocumentType != 'Session' then (error "DocumentType should be 'ApplicationConfiguration' or 'ApplicationConfigurationSchema' or 'Automation' or 'Automation.ChangeTemplate' or 'ChangeCalendar' or 'CloudFormation' or 'Command' or 'DeploymentStrategy' or 'Package' or 'Policy' or 'ProblemAnalysis' or 'ProblemAnalysisTemplate' or 'Session'")
        else DocumentType,
    },
  },
  setDocumentFormat(DocumentFormat): {
    Properties+::: {
      DocumentFormat:
        if !std.isString(DocumentFormat) then (error 'DocumentFormat must be a string')
        else if std.isEmpty(DocumentFormat) then (error 'DocumentFormat must be not empty')
        else if DocumentFormat != 'YAML' && DocumentFormat != 'JSON' && DocumentFormat != 'TEXT' then (error "DocumentFormat should be 'YAML' or 'JSON' or 'TEXT'")
        else DocumentFormat,
    },
  },
  setTargetType(TargetType): {
    Properties+::: {
      TargetType:
        if !std.isString(TargetType) then (error 'TargetType must be a string')
        else if std.isEmpty(TargetType) then (error 'TargetType must be not empty')
        else TargetType,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else if std.length(Tags) > 1000 then error ('Tags cannot have more than 1000 items')
        else Tags,
    },
  },
  pushTags(Tags): {
    Properties+::: {
      Tags+: Tags,
    },
  },
  setRequires(Requires): {
    Properties+::: {
      Requires:
        if !std.isArray(Requires) then (error 'Requires must be an array')
        else if std.length(Requires) < 1 then error ('Requires cannot have less than 1 items')
        else Requires,
    },
  },
  pushRequires(Requires): {
    Properties+::: {
      Requires+: Requires,
    },
  },
  setUpdateMethod(UpdateMethod): {
    Properties+::: {
      UpdateMethod:
        if !std.isString(UpdateMethod) then (error 'UpdateMethod must be a string')
        else if std.isEmpty(UpdateMethod) then (error 'UpdateMethod must be not empty')
        else if UpdateMethod != 'Replace' && UpdateMethod != 'NewVersion' then (error "UpdateMethod should be 'Replace' or 'NewVersion'")
        else UpdateMethod,
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
