{
  new(
    InstanceArn,
    Content,
    Name,
    Type,
  ): {
    local base = self,
    Properties: {
      assert std.isString(InstanceArn) : 'InstanceArn must be a string',
      InstanceArn: InstanceArn,
      assert std.isString(Content) : 'Content must be a string',
      Content: Content,
      assert std.isString(Name) : 'Name must be a string',
      Name: Name,
      assert std.isString(Type) : 'Type must be a string',
      assert Type == 'CONTACT_FLOW' || Type == 'CUSTOMER_QUEUE' || Type == 'CUSTOMER_HOLD' || Type == 'CUSTOMER_WHISPER' || Type == 'AGENT_HOLD' || Type == 'AGENT_WHISPER' || Type == 'OUTBOUND_WHISPER' || Type == 'AGENT_TRANSFER' || Type == 'QUEUE_TRANSFER' || Type == 'CAMPAIGN' : "Type should be 'CONTACT_FLOW' or 'CUSTOMER_QUEUE' or 'CUSTOMER_HOLD' or 'CUSTOMER_WHISPER' or 'AGENT_HOLD' or 'AGENT_WHISPER' or 'OUTBOUND_WHISPER' or 'AGENT_TRANSFER' or 'QUEUE_TRANSFER' or 'CAMPAIGN'",
      Type: Type,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Connect::ContactFlow',
  },
  withContactFlowArn(ContactFlowArn): {
    assert std.isString(ContactFlowArn) : 'ContactFlowArn must be a string',
    Properties+::: {
      ContactFlowArn: ContactFlowArn,
    },
  },
  withDescription(Description): {
    assert std.isString(Description) : 'Description must be a string',
    Properties+::: {
      Description: Description,
    },
  },
  withState(State): {
    assert std.isString(State) : 'State must be a string',
    assert State == 'ACTIVE' || State == 'ARCHIVED' : "State should be 'ACTIVE' or 'ARCHIVED'",
    Properties+::: {
      State: State,
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
