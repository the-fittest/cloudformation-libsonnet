{
  new(
    TeamId,
    TeamsChannelId,
    TeamsTenantId,
    ConfigurationName,
    IamRoleArn,
  ): {
    local base = self,
    Properties: {
      TeamId:
        if !std.isString(TeamId) then (error 'TeamId must be a string')
        else if std.isEmpty(TeamId) then (error 'TeamId must be not empty')
        else if std.length(TeamId) < 36 then error ('TeamId should have at least 36 characters')
        else if std.length(TeamId) > 36 then error ('TeamId should have not more than 36 characters')
        else TeamId,
      TeamsChannelId:
        if !std.isString(TeamsChannelId) then (error 'TeamsChannelId must be a string')
        else if std.isEmpty(TeamsChannelId) then (error 'TeamsChannelId must be not empty')
        else if std.length(TeamsChannelId) < 1 then error ('TeamsChannelId should have at least 1 characters')
        else if std.length(TeamsChannelId) > 256 then error ('TeamsChannelId should have not more than 256 characters')
        else TeamsChannelId,
      TeamsTenantId:
        if !std.isString(TeamsTenantId) then (error 'TeamsTenantId must be a string')
        else if std.isEmpty(TeamsTenantId) then (error 'TeamsTenantId must be not empty')
        else if std.length(TeamsTenantId) < 36 then error ('TeamsTenantId should have at least 36 characters')
        else if std.length(TeamsTenantId) > 36 then error ('TeamsTenantId should have not more than 36 characters')
        else TeamsTenantId,
      ConfigurationName:
        if !std.isString(ConfigurationName) then (error 'ConfigurationName must be a string')
        else if std.isEmpty(ConfigurationName) then (error 'ConfigurationName must be not empty')
        else if std.length(ConfigurationName) < 1 then error ('ConfigurationName should have at least 1 characters')
        else if std.length(ConfigurationName) > 128 then error ('ConfigurationName should have not more than 128 characters')
        else ConfigurationName,
      IamRoleArn:
        if !std.isString(IamRoleArn) then (error 'IamRoleArn must be a string')
        else if std.isEmpty(IamRoleArn) then (error 'IamRoleArn must be not empty')
        else IamRoleArn,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Chatbot::MicrosoftTeamsChannelConfiguration',
  },
  setSnsTopicArns(SnsTopicArns): {
    Properties+::: {
      SnsTopicArns:
        if !std.isArray(SnsTopicArns) then (error 'SnsTopicArns must be an array')
        else SnsTopicArns,
    },
  },
  setSnsTopicArnsMixin(SnsTopicArns): {
    Properties+::: {
      SnsTopicArns+: SnsTopicArns,
    },
  },
  setLoggingLevel(LoggingLevel): {
    Properties+::: {
      LoggingLevel:
        if !std.isString(LoggingLevel) then (error 'LoggingLevel must be a string')
        else if std.isEmpty(LoggingLevel) then (error 'LoggingLevel must be not empty')
        else LoggingLevel,
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
  setGuardrailPolicies(GuardrailPolicies): {
    Properties+::: {
      GuardrailPolicies:
        if !std.isArray(GuardrailPolicies) then (error 'GuardrailPolicies must be an array')
        else GuardrailPolicies,
    },
  },
  setGuardrailPoliciesMixin(GuardrailPolicies): {
    Properties+::: {
      GuardrailPolicies+: GuardrailPolicies,
    },
  },
  setUserRoleRequired(UserRoleRequired): {
    Properties+::: {
      UserRoleRequired:
        if !std.isBoolean(UserRoleRequired) then (error 'UserRoleRequired must be a boolean') else UserRoleRequired,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else Tags,
    },
  },
  setTagsMixin(Tags): {
    Properties+::: {
      Tags+: Tags,
    },
  },
  setCustomizationResourceArns(CustomizationResourceArns): {
    Properties+::: {
      CustomizationResourceArns:
        if !std.isArray(CustomizationResourceArns) then (error 'CustomizationResourceArns must be an array')
        else CustomizationResourceArns,
    },
  },
  setCustomizationResourceArnsMixin(CustomizationResourceArns): {
    Properties+::: {
      CustomizationResourceArns+: CustomizationResourceArns,
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
