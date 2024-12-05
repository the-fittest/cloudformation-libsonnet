{
  new(
    ApplicationId,
    ApplicationType,
  ): {
    local base = self,
    Properties: {
      ApplicationId:
        if !std.isString(ApplicationId) then (error 'ApplicationId must be a string')
        else if std.isEmpty(ApplicationId) then (error 'ApplicationId must be not empty')
        else ApplicationId,
      ApplicationType:
        if !std.isString(ApplicationType) then (error 'ApplicationType must be a string')
        else if std.isEmpty(ApplicationType) then (error 'ApplicationType must be not empty')
        else if ApplicationType != 'HANA' && ApplicationType != 'SAP_ABAP' then (error "ApplicationType should be 'HANA' or 'SAP_ABAP'")
        else ApplicationType,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::SystemsManagerSAP::Application',
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else Arn,
    },
  },
  setCredentials(Credentials): {
    Properties+::: {
      Credentials:
        if !std.isArray(Credentials) then (error 'Credentials must be an array')
        else if std.length(Credentials) < 1 then error ('Credentials cannot have less than 1 items')
        else Credentials,
    },
  },
  setCredentialsMixin(Credentials): {
    Properties+::: {
      Credentials+: Credentials,
    },
  },
  setInstances(Instances): {
    Properties+::: {
      Instances:
        if !std.isArray(Instances) then (error 'Instances must be an array')
        else if std.length(Instances) < 1 then error ('Instances cannot have less than 1 items')
        else Instances,
    },
  },
  setInstancesMixin(Instances): {
    Properties+::: {
      Instances+: Instances,
    },
  },
  setSapInstanceNumber(SapInstanceNumber): {
    Properties+::: {
      SapInstanceNumber:
        if !std.isString(SapInstanceNumber) then (error 'SapInstanceNumber must be a string')
        else if std.isEmpty(SapInstanceNumber) then (error 'SapInstanceNumber must be not empty')
        else SapInstanceNumber,
    },
  },
  setSid(Sid): {
    Properties+::: {
      Sid:
        if !std.isString(Sid) then (error 'Sid must be a string')
        else if std.isEmpty(Sid) then (error 'Sid must be not empty')
        else Sid,
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
  setDatabaseArn(DatabaseArn): {
    Properties+::: {
      DatabaseArn:
        if !std.isString(DatabaseArn) then (error 'DatabaseArn must be a string')
        else if std.isEmpty(DatabaseArn) then (error 'DatabaseArn must be not empty')
        else DatabaseArn,
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
