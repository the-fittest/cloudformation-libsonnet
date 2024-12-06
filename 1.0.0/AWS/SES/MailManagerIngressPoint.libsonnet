{
  new(
    Type,
    TrafficPolicyId,
    RuleSetId,
  ): {
    local base = self,
    Properties: {
      Type:
        if !std.isString(Type) then (error 'Type must be a string')
        else if std.isEmpty(Type) then (error 'Type must be not empty')
        else if Type != 'OPEN' && Type != 'AUTH' then (error "Type should be 'OPEN' or 'AUTH'")
        else Type,
      TrafficPolicyId:
        if !std.isString(TrafficPolicyId) then (error 'TrafficPolicyId must be a string')
        else if std.isEmpty(TrafficPolicyId) then (error 'TrafficPolicyId must be not empty')
        else if std.length(TrafficPolicyId) < 1 then error ('TrafficPolicyId should have at least 1 characters')
        else if std.length(TrafficPolicyId) > 100 then error ('TrafficPolicyId should have not more than 100 characters')
        else TrafficPolicyId,
      RuleSetId:
        if !std.isString(RuleSetId) then (error 'RuleSetId must be a string')
        else if std.isEmpty(RuleSetId) then (error 'RuleSetId must be not empty')
        else if std.length(RuleSetId) < 1 then error ('RuleSetId should have at least 1 characters')
        else if std.length(RuleSetId) > 100 then error ('RuleSetId should have not more than 100 characters')
        else RuleSetId,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::SES::MailManagerIngressPoint',
  },
  setARecord(ARecord): {
    Properties+::: {
      ARecord:
        if !std.isString(ARecord) then (error 'ARecord must be a string')
        else if std.isEmpty(ARecord) then (error 'ARecord must be not empty')
        else ARecord,
    },
  },
  setIngressPointConfiguration(IngressPointConfiguration): {
    Properties+::: {
      IngressPointConfiguration: IngressPointConfiguration,
    },
  },
  setIngressPointArn(IngressPointArn): {
    Properties+::: {
      IngressPointArn:
        if !std.isString(IngressPointArn) then (error 'IngressPointArn must be a string')
        else if std.isEmpty(IngressPointArn) then (error 'IngressPointArn must be not empty')
        else IngressPointArn,
    },
  },
  setIngressPointId(IngressPointId): {
    Properties+::: {
      IngressPointId:
        if !std.isString(IngressPointId) then (error 'IngressPointId must be a string')
        else if std.isEmpty(IngressPointId) then (error 'IngressPointId must be not empty')
        else if std.length(IngressPointId) < 1 then error ('IngressPointId should have at least 1 characters')
        else if std.length(IngressPointId) > 100 then error ('IngressPointId should have not more than 100 characters')
        else IngressPointId,
    },
  },
  setIngressPointName(IngressPointName): {
    Properties+::: {
      IngressPointName:
        if !std.isString(IngressPointName) then (error 'IngressPointName must be a string')
        else if std.isEmpty(IngressPointName) then (error 'IngressPointName must be not empty')
        else if std.length(IngressPointName) < 3 then error ('IngressPointName should have at least 3 characters')
        else if std.length(IngressPointName) > 63 then error ('IngressPointName should have not more than 63 characters')
        else IngressPointName,
    },
  },
  setStatus(Status): {
    Properties+::: {
      Status:
        if !std.isString(Status) then (error 'Status must be a string')
        else if std.isEmpty(Status) then (error 'Status must be not empty')
        else if Status != 'PROVISIONING' && Status != 'DEPROVISIONING' && Status != 'UPDATING' && Status != 'ACTIVE' && Status != 'CLOSED' && Status != 'FAILED' then (error "Status should be 'PROVISIONING' or 'DEPROVISIONING' or 'UPDATING' or 'ACTIVE' or 'CLOSED' or 'FAILED'")
        else Status,
    },
  },
  setStatusToUpdate(StatusToUpdate): {
    Properties+::: {
      StatusToUpdate:
        if !std.isString(StatusToUpdate) then (error 'StatusToUpdate must be a string')
        else if std.isEmpty(StatusToUpdate) then (error 'StatusToUpdate must be not empty')
        else if StatusToUpdate != 'ACTIVE' && StatusToUpdate != 'CLOSED' then (error "StatusToUpdate should be 'ACTIVE' or 'CLOSED'")
        else StatusToUpdate,
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
