{
  new(
    InstanceArn,
    Content,
    Name,
    Type,
  ): {
    local base = self,
    Properties: {
      InstanceArn:
        if !std.isString(InstanceArn) then (error 'InstanceArn must be a string')
        else if std.isEmpty(InstanceArn) then (error 'InstanceArn must be not empty')
        else if std.length(InstanceArn) < 1 then error ('InstanceArn should have at least 1 characters')
        else if std.length(InstanceArn) > 256 then error ('InstanceArn should have not more than 256 characters')
        else InstanceArn,
      Content:
        if !std.isString(Content) then (error 'Content must be a string')
        else if std.isEmpty(Content) then (error 'Content must be not empty')
        else if std.length(Content) < 1 then error ('Content should have at least 1 characters')
        else if std.length(Content) > 256000 then error ('Content should have not more than 256000 characters')
        else Content,
      Name:
        if !std.isString(Name) then (error 'Name must be a string')
        else if std.isEmpty(Name) then (error 'Name must be not empty')
        else if std.length(Name) < 1 then error ('Name should have at least 1 characters')
        else if std.length(Name) > 127 then error ('Name should have not more than 127 characters')
        else Name,
      Type:
        if !std.isString(Type) then (error 'Type must be a string')
        else if std.isEmpty(Type) then (error 'Type must be not empty')
        else if Type != 'CONTACT_FLOW' && Type != 'CUSTOMER_QUEUE' && Type != 'CUSTOMER_HOLD' && Type != 'CUSTOMER_WHISPER' && Type != 'AGENT_HOLD' && Type != 'AGENT_WHISPER' && Type != 'OUTBOUND_WHISPER' && Type != 'AGENT_TRANSFER' && Type != 'QUEUE_TRANSFER' && Type != 'CAMPAIGN' then (error "Type should be 'CONTACT_FLOW' or 'CUSTOMER_QUEUE' or 'CUSTOMER_HOLD' or 'CUSTOMER_WHISPER' or 'AGENT_HOLD' or 'AGENT_WHISPER' or 'OUTBOUND_WHISPER' or 'AGENT_TRANSFER' or 'QUEUE_TRANSFER' or 'CAMPAIGN'")
        else Type,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Connect::ContactFlow',
  },
  setContactFlowArn(ContactFlowArn): {
    Properties+::: {
      ContactFlowArn:
        if !std.isString(ContactFlowArn) then (error 'ContactFlowArn must be a string')
        else if std.isEmpty(ContactFlowArn) then (error 'ContactFlowArn must be not empty')
        else if std.length(ContactFlowArn) < 1 then error ('ContactFlowArn should have at least 1 characters')
        else if std.length(ContactFlowArn) > 500 then error ('ContactFlowArn should have not more than 500 characters')
        else ContactFlowArn,
    },
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else if std.length(Description) > 500 then error ('Description should have not more than 500 characters')
        else Description,
    },
  },
  setState(State): {
    Properties+::: {
      State:
        if !std.isString(State) then (error 'State must be a string')
        else if std.isEmpty(State) then (error 'State must be not empty')
        else if State != 'ACTIVE' && State != 'ARCHIVED' then (error "State should be 'ACTIVE' or 'ARCHIVED'")
        else State,
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
