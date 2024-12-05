{
  new(
    DisplayName,
    IdentityCenterInstanceArn,
    RoleArn,
    Subdomain,
  ): {
    local base = self,
    Properties: {
      DisplayName:
        if !std.isString(DisplayName) then (error 'DisplayName must be a string')
        else if std.isEmpty(DisplayName) then (error 'DisplayName must be not empty')
        else if std.length(DisplayName) < 1 then error ('DisplayName should have at least 1 characters')
        else if std.length(DisplayName) > 100 then error ('DisplayName should have not more than 100 characters')
        else DisplayName,
      IdentityCenterInstanceArn:
        if !std.isString(IdentityCenterInstanceArn) then (error 'IdentityCenterInstanceArn must be a string')
        else if std.isEmpty(IdentityCenterInstanceArn) then (error 'IdentityCenterInstanceArn must be not empty')
        else IdentityCenterInstanceArn,
      RoleArn:
        if !std.isString(RoleArn) then (error 'RoleArn must be a string')
        else if std.isEmpty(RoleArn) then (error 'RoleArn must be not empty')
        else RoleArn,
      Subdomain:
        if !std.isString(Subdomain) then (error 'Subdomain must be a string')
        else if std.isEmpty(Subdomain) then (error 'Subdomain must be not empty')
        else Subdomain,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Deadline::Monitor',
  },
  setIdentityCenterApplicationArn(IdentityCenterApplicationArn): {
    Properties+::: {
      IdentityCenterApplicationArn:
        if !std.isString(IdentityCenterApplicationArn) then (error 'IdentityCenterApplicationArn must be a string')
        else if std.isEmpty(IdentityCenterApplicationArn) then (error 'IdentityCenterApplicationArn must be not empty')
        else IdentityCenterApplicationArn,
    },
  },
  setMonitorId(MonitorId): {
    Properties+::: {
      MonitorId:
        if !std.isString(MonitorId) then (error 'MonitorId must be a string')
        else if std.isEmpty(MonitorId) then (error 'MonitorId must be not empty')
        else MonitorId,
    },
  },
  setUrl(Url): {
    Properties+::: {
      Url:
        if !std.isString(Url) then (error 'Url must be a string')
        else if std.isEmpty(Url) then (error 'Url must be not empty')
        else Url,
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
