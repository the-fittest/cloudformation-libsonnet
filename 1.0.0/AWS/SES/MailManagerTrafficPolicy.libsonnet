{
  new(
    DefaultAction,
    PolicyStatements,
  ): {
    local base = self,
    Properties: {
      DefaultAction:
        if !std.isString(DefaultAction) then (error 'DefaultAction must be a string')
        else if std.isEmpty(DefaultAction) then (error 'DefaultAction must be not empty')
        else if DefaultAction != 'ALLOW' && DefaultAction != 'DENY' then (error "DefaultAction should be 'ALLOW' or 'DENY'")
        else DefaultAction,
      PolicyStatements:
        if !std.isArray(PolicyStatements) then (error 'PolicyStatements must be an array')
        else PolicyStatements,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::SES::MailManagerTrafficPolicy',
  },
  setMaxMessageSizeBytes(MaxMessageSizeBytes): {
    Properties+::: {
      MaxMessageSizeBytes:
        if !std.isNumber(MaxMessageSizeBytes) then (error 'MaxMessageSizeBytes must be an number')
        else if MaxMessageSizeBytes < 1 then error ('MaxMessageSizeBytes should be at least 1')
        else MaxMessageSizeBytes,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else if std.length(Tags) > 200 then error ('Tags cannot have more than 200 items')
        else Tags,
    },
  },
  pushTags(Tags): {
    Properties+::: {
      Tags+: Tags,
    },
  },
  setTrafficPolicyArn(TrafficPolicyArn): {
    Properties+::: {
      TrafficPolicyArn:
        if !std.isString(TrafficPolicyArn) then (error 'TrafficPolicyArn must be a string')
        else if std.isEmpty(TrafficPolicyArn) then (error 'TrafficPolicyArn must be not empty')
        else TrafficPolicyArn,
    },
  },
  setTrafficPolicyId(TrafficPolicyId): {
    Properties+::: {
      TrafficPolicyId:
        if !std.isString(TrafficPolicyId) then (error 'TrafficPolicyId must be a string')
        else if std.isEmpty(TrafficPolicyId) then (error 'TrafficPolicyId must be not empty')
        else if std.length(TrafficPolicyId) < 1 then error ('TrafficPolicyId should have at least 1 characters')
        else if std.length(TrafficPolicyId) > 100 then error ('TrafficPolicyId should have not more than 100 characters')
        else TrafficPolicyId,
    },
  },
  setTrafficPolicyName(TrafficPolicyName): {
    Properties+::: {
      TrafficPolicyName:
        if !std.isString(TrafficPolicyName) then (error 'TrafficPolicyName must be a string')
        else if std.isEmpty(TrafficPolicyName) then (error 'TrafficPolicyName must be not empty')
        else if std.length(TrafficPolicyName) < 3 then error ('TrafficPolicyName should have at least 3 characters')
        else if std.length(TrafficPolicyName) > 63 then error ('TrafficPolicyName should have not more than 63 characters')
        else TrafficPolicyName,
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
