{
  new(
    Source,
    Format,
    Name,
    MembershipIdentifier,
  ): {
    local base = self,
    Properties: {
      Source:
        if !std.isObject(Source) then (error 'Source must be an object')
        else if !std.objectHas(Source, 'Text') then (error ' have attribute Text')
        else Source,
      Format:
        if !std.isString(Format) then (error 'Format must be a string')
        else if std.isEmpty(Format) then (error 'Format must be not empty')
        else if Format != 'SQL' then (error "Format should be 'SQL'")
        else Format,
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else if std.length(Name) > 128 then error ('Name should have not more than 128 characters')
        else Name,
      MembershipIdentifier:
        if !std.isString(MembershipIdentifier) then (error 'MembershipIdentifier must be a string')
        else if std.isEmpty(MembershipIdentifier) then (error 'MembershipIdentifier must be not empty')
        else if std.length(MembershipIdentifier) < 36 then error ('MembershipIdentifier should have at least 36 characters')
        else if std.length(MembershipIdentifier) > 36 then error ('MembershipIdentifier should have not more than 36 characters')
        else MembershipIdentifier,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::CleanRooms::AnalysisTemplate',
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else if std.length(Arn) > 200 then error ('Arn should have not more than 200 characters')
        else Arn,
    },
  },
  setCollaborationArn(CollaborationArn): {
    Properties+::: {
      CollaborationArn:
        if !std.isString(CollaborationArn) then (error 'CollaborationArn must be a string')
        else if std.isEmpty(CollaborationArn) then (error 'CollaborationArn must be not empty')
        else if std.length(CollaborationArn) > 100 then error ('CollaborationArn should have not more than 100 characters')
        else CollaborationArn,
    },
  },
  setCollaborationIdentifier(CollaborationIdentifier): {
    Properties+::: {
      CollaborationIdentifier:
        if !std.isString(CollaborationIdentifier) then (error 'CollaborationIdentifier must be a string')
        else if std.isEmpty(CollaborationIdentifier) then (error 'CollaborationIdentifier must be not empty')
        else if std.length(CollaborationIdentifier) < 36 then error ('CollaborationIdentifier should have at least 36 characters')
        else if std.length(CollaborationIdentifier) > 36 then error ('CollaborationIdentifier should have not more than 36 characters')
        else CollaborationIdentifier,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else Tags,
    },
  },
  pushTags(Tags): {
    Properties+::: {
      Tags+: Tags,
    },
  },
  setAnalysisParameters(AnalysisParameters): {
    Properties+::: {
      AnalysisParameters:
        if !std.isArray(AnalysisParameters) then (error 'AnalysisParameters must be an array')
        else if std.length(AnalysisParameters) > 10 then error ('AnalysisParameters cannot have more than 10 items')
        else AnalysisParameters,
    },
  },
  pushAnalysisParameters(AnalysisParameters): {
    Properties+::: {
      AnalysisParameters+: AnalysisParameters,
    },
  },
  setAnalysisTemplateIdentifier(AnalysisTemplateIdentifier): {
    Properties+::: {
      AnalysisTemplateIdentifier:
        if !std.isString(AnalysisTemplateIdentifier) then (error 'AnalysisTemplateIdentifier must be a string')
        else if std.isEmpty(AnalysisTemplateIdentifier) then (error 'AnalysisTemplateIdentifier must be not empty')
        else if std.length(AnalysisTemplateIdentifier) < 36 then error ('AnalysisTemplateIdentifier should have at least 36 characters')
        else if std.length(AnalysisTemplateIdentifier) > 36 then error ('AnalysisTemplateIdentifier should have not more than 36 characters')
        else AnalysisTemplateIdentifier,
    },
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else if std.length(Description) > 255 then error ('Description should have not more than 255 characters')
        else Description,
    },
  },
  setMembershipArn(MembershipArn): {
    Properties+::: {
      MembershipArn:
        if !std.isString(MembershipArn) then (error 'MembershipArn must be a string')
        else if std.isEmpty(MembershipArn) then (error 'MembershipArn must be not empty')
        else if std.length(MembershipArn) > 100 then error ('MembershipArn should have not more than 100 characters')
        else MembershipArn,
    },
  },
  setSchema(Schema): {
    Properties+::: {
      Schema:
        if !std.isObject(Schema) then (error 'Schema must be an object')
        else if !std.objectHas(Schema, 'ReferencedTables') then (error ' have attribute ReferencedTables')
        else Schema,
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
