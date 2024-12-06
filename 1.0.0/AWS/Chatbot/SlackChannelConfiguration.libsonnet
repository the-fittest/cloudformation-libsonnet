{
  new(
    SlackWorkspaceId,
    SlackChannelId,
    ConfigurationName,
    IamRoleArn,
  ): {
    local base = self,
    Properties: {
      SlackWorkspaceId:
        if !std.isString(SlackWorkspaceId) then (error 'SlackWorkspaceId must be a string')
        else if std.isEmpty(SlackWorkspaceId) then (error 'SlackWorkspaceId must be not empty')
        else if std.length(SlackWorkspaceId) < 1 then error ('SlackWorkspaceId should have at least 1 characters')
        else if std.length(SlackWorkspaceId) > 256 then error ('SlackWorkspaceId should have not more than 256 characters')
        else SlackWorkspaceId,
      SlackChannelId:
        if !std.isString(SlackChannelId) then (error 'SlackChannelId must be a string')
        else if std.isEmpty(SlackChannelId) then (error 'SlackChannelId must be not empty')
        else if std.length(SlackChannelId) < 1 then error ('SlackChannelId should have at least 1 characters')
        else if std.length(SlackChannelId) > 256 then error ('SlackChannelId should have not more than 256 characters')
        else SlackChannelId,
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
    Type: 'AWS::Chatbot::SlackChannelConfiguration',
  },
  setSnsTopicArns(SnsTopicArns): {
    Properties+::: {
      SnsTopicArns:
        if !std.isArray(SnsTopicArns) then (error 'SnsTopicArns must be an array')
        else SnsTopicArns,
    },
  },
  pushSnsTopicArns(SnsTopicArns): {
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
  pushGuardrailPolicies(GuardrailPolicies): {
    Properties+::: {
      GuardrailPolicies+: GuardrailPolicies,
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
  setUserRoleRequired(UserRoleRequired): {
    Properties+::: {
      UserRoleRequired:
        if !std.isBoolean(UserRoleRequired) then (error 'UserRoleRequired must be a boolean') else UserRoleRequired,
    },
  },
  setCustomizationResourceArns(CustomizationResourceArns): {
    Properties+::: {
      CustomizationResourceArns:
        if !std.isArray(CustomizationResourceArns) then (error 'CustomizationResourceArns must be an array')
        else CustomizationResourceArns,
    },
  },
  pushCustomizationResourceArns(CustomizationResourceArns): {
    Properties+::: {
      CustomizationResourceArns+: CustomizationResourceArns,
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
