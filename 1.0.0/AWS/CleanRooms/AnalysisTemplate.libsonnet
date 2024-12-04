{
  new(
    Source,
    Format,
    Name,
    MembershipIdentifier,
  ): {
    local base = self,
    Properties: {
      assert std.isObject(Source) : 'Source must be an object',
      Source: Source,
      assert std.isString(Format) : 'Format must be a string',
      assert Format == 'SQL' : "Format should be 'SQL'",
      Format: Format,
      assert std.isString(Name) : 'Name must be a string',
      Name: Name,
      assert std.isString(MembershipIdentifier) : 'MembershipIdentifier must be a string',
      MembershipIdentifier: MembershipIdentifier,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::CleanRooms::AnalysisTemplate',
  },
  withArn(Arn): {
    assert std.isString(Arn) : 'Arn must be a string',
    Properties+::: {
      Arn: Arn,
    },
  },
  withCollaborationArn(CollaborationArn): {
    assert std.isString(CollaborationArn) : 'CollaborationArn must be a string',
    Properties+::: {
      CollaborationArn: CollaborationArn,
    },
  },
  withCollaborationIdentifier(CollaborationIdentifier): {
    assert std.isString(CollaborationIdentifier) : 'CollaborationIdentifier must be a string',
    Properties+::: {
      CollaborationIdentifier: CollaborationIdentifier,
    },
  },
  withTags(Tags): {
    Properties+::: {
      Tags: (if std.isArray(Tags) then Tags else [Tags]),
    },
  },
  withTagsMixin(Tags): {
    Properties+::: {
      Tags+: (if std.isArray(Tags) then Tags else [Tags]),
    },
  },
  withAnalysisParameters(AnalysisParameters): {
    Properties+::: {
      AnalysisParameters: (if std.isArray(AnalysisParameters) then AnalysisParameters else [AnalysisParameters]),
    },
  },
  withAnalysisParametersMixin(AnalysisParameters): {
    Properties+::: {
      AnalysisParameters+: (if std.isArray(AnalysisParameters) then AnalysisParameters else [AnalysisParameters]),
    },
  },
  withAnalysisTemplateIdentifier(AnalysisTemplateIdentifier): {
    assert std.isString(AnalysisTemplateIdentifier) : 'AnalysisTemplateIdentifier must be a string',
    Properties+::: {
      AnalysisTemplateIdentifier: AnalysisTemplateIdentifier,
    },
  },
  withDescription(Description): {
    assert std.isString(Description) : 'Description must be a string',
    Properties+::: {
      Description: Description,
    },
  },
  withMembershipArn(MembershipArn): {
    assert std.isString(MembershipArn) : 'MembershipArn must be a string',
    Properties+::: {
      MembershipArn: MembershipArn,
    },
  },
  withSchema(Schema): {
    assert std.isObject(Schema) : 'Schema must be a object',
    Properties+::: {
      Schema: Schema,
    },
  },
  withDependsOn(DependsOn): {
    Properties+::: {
      DependsOn: (if std.isArray(DependsOn) then DependsOn else [DependsOn]),
    },
  },
  withDependsOnMixin(DependsOn): {
    Properties+::: {
      DependsOn+: (if std.isArray(DependsOn) then DependsOn else [DependsOn]),
    },
  },
  withCreationPolicy(CreationPolicy): {
    Properties+::: {
      CreationPolicy: (if std.isArray(CreationPolicy) then CreationPolicy else [CreationPolicy]),
    },
  },
  withCreationPolicyMixin(CreationPolicy): {
    Properties+::: {
      CreationPolicy+: (if std.isArray(CreationPolicy) then CreationPolicy else [CreationPolicy]),
    },
  },
  withDeletionPolicy(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy: (if std.isArray(DeletionPolicy) then DeletionPolicy else [DeletionPolicy]),
    },
  },
  withDeletionPolicyMixin(DeletionPolicy): {
    Properties+::: {
      DeletionPolicy+: (if std.isArray(DeletionPolicy) then DeletionPolicy else [DeletionPolicy]),
    },
  },
  withUpdatePolicy(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy: (if std.isArray(UpdatePolicy) then UpdatePolicy else [UpdatePolicy]),
    },
  },
  withUpdatePolicyMixin(UpdatePolicy): {
    Properties+::: {
      UpdatePolicy+: (if std.isArray(UpdatePolicy) then UpdatePolicy else [UpdatePolicy]),
    },
  },
  withUpdateReplacePolicy(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy: (if std.isArray(UpdateReplacePolicy) then UpdateReplacePolicy else [UpdateReplacePolicy]),
    },
  },
  withUpdateReplacePolicyMixin(UpdateReplacePolicy): {
    Properties+::: {
      UpdateReplacePolicy+: (if std.isArray(UpdateReplacePolicy) then UpdateReplacePolicy else [UpdateReplacePolicy]),
    },
  },
  withMetadata(Metadata): {
    Properties+::: {
      Metadata: (if std.isArray(Metadata) then Metadata else [Metadata]),
    },
  },
  withMetadataMixin(Metadata): {
    Properties+::: {
      Metadata+: (if std.isArray(Metadata) then Metadata else [Metadata]),
    },
  },
}
