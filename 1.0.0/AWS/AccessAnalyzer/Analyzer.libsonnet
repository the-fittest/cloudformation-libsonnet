{
  new(
    Type,
  ): {
    local base = self,
    Properties: {
      Type:
        if !std.isString(Type) then (error 'Type must be a string')
        else if std.isEmpty(Type) then (error 'Type must be not empty')
        else if std.length(Type) > 1024 then error ('Type should have not more than 1024 characters')
        else Type,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::AccessAnalyzer::Analyzer',
  },
  setAnalyzerName(AnalyzerName): {
    Properties+::: {
      AnalyzerName:
        if !std.isString(AnalyzerName) then (error 'AnalyzerName must be a string')
        else if std.isEmpty(AnalyzerName) then (error 'AnalyzerName must be not empty')
        else if std.length(AnalyzerName) < 1 then error ('AnalyzerName should have at least 1 characters')
        else if std.length(AnalyzerName) > 1024 then error ('AnalyzerName should have not more than 1024 characters')
        else AnalyzerName,
    },
  },
  setArchiveRules(ArchiveRules): {
    Properties+::: {
      ArchiveRules:
        if !std.isArray(ArchiveRules) then (error 'ArchiveRules must be an array')
        else ArchiveRules,
    },
  },
  setArchiveRulesMixin(ArchiveRules): {
    Properties+::: {
      ArchiveRules+: ArchiveRules,
    },
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else if std.length(Arn) < 1 then error ('Arn should have at least 1 characters')
        else if std.length(Arn) > 1600 then error ('Arn should have not more than 1600 characters')
        else Arn,
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
  setAnalyzerConfiguration(AnalyzerConfiguration): {
    Properties+::: {
      AnalyzerConfiguration:
        if !std.isObject(AnalyzerConfiguration) then (error 'AnalyzerConfiguration must be an object')
        else AnalyzerConfiguration,
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
