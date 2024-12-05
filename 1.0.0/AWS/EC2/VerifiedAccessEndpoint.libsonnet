{
  new(
    ApplicationDomain,
    AttachmentType,
    DomainCertificateArn,
    EndpointType,
    VerifiedAccessGroupId,
    EndpointDomainPrefix,
  ): {
    local base = self,
    Properties: {
      ApplicationDomain:
        if !std.isString(ApplicationDomain) then (error 'ApplicationDomain must be a string')
        else if std.isEmpty(ApplicationDomain) then (error 'ApplicationDomain must be not empty')
        else ApplicationDomain,
      AttachmentType:
        if !std.isString(AttachmentType) then (error 'AttachmentType must be a string')
        else if std.isEmpty(AttachmentType) then (error 'AttachmentType must be not empty')
        else AttachmentType,
      DomainCertificateArn:
        if !std.isString(DomainCertificateArn) then (error 'DomainCertificateArn must be a string')
        else if std.isEmpty(DomainCertificateArn) then (error 'DomainCertificateArn must be not empty')
        else DomainCertificateArn,
      EndpointType:
        if !std.isString(EndpointType) then (error 'EndpointType must be a string')
        else if std.isEmpty(EndpointType) then (error 'EndpointType must be not empty')
        else EndpointType,
      VerifiedAccessGroupId:
        if !std.isString(VerifiedAccessGroupId) then (error 'VerifiedAccessGroupId must be a string')
        else if std.isEmpty(VerifiedAccessGroupId) then (error 'VerifiedAccessGroupId must be not empty')
        else VerifiedAccessGroupId,
      EndpointDomainPrefix:
        if !std.isString(EndpointDomainPrefix) then (error 'EndpointDomainPrefix must be a string')
        else if std.isEmpty(EndpointDomainPrefix) then (error 'EndpointDomainPrefix must be not empty')
        else EndpointDomainPrefix,
    },
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::EC2::VerifiedAccessEndpoint',
  },
  setVerifiedAccessEndpointId(VerifiedAccessEndpointId): {
    Properties+::: {
      VerifiedAccessEndpointId:
        if !std.isString(VerifiedAccessEndpointId) then (error 'VerifiedAccessEndpointId must be a string')
        else if std.isEmpty(VerifiedAccessEndpointId) then (error 'VerifiedAccessEndpointId must be not empty')
        else VerifiedAccessEndpointId,
    },
  },
  setVerifiedAccessInstanceId(VerifiedAccessInstanceId): {
    Properties+::: {
      VerifiedAccessInstanceId:
        if !std.isString(VerifiedAccessInstanceId) then (error 'VerifiedAccessInstanceId must be a string')
        else if std.isEmpty(VerifiedAccessInstanceId) then (error 'VerifiedAccessInstanceId must be not empty')
        else VerifiedAccessInstanceId,
    },
  },
  setStatus(Status): {
    Properties+::: {
      Status:
        if !std.isString(Status) then (error 'Status must be a string')
        else if std.isEmpty(Status) then (error 'Status must be not empty')
        else Status,
    },
  },
  setSecurityGroupIds(SecurityGroupIds): {
    Properties+::: {
      SecurityGroupIds:
        if !std.isArray(SecurityGroupIds) then (error 'SecurityGroupIds must be an array')
        else SecurityGroupIds,
    },
  },
  setSecurityGroupIdsMixin(SecurityGroupIds): {
    Properties+::: {
      SecurityGroupIds+: SecurityGroupIds,
    },
  },
  setNetworkInterfaceOptions(NetworkInterfaceOptions): {
    Properties+::: {
      NetworkInterfaceOptions:
        if !std.isObject(NetworkInterfaceOptions) then (error 'NetworkInterfaceOptions must be an object')
        else NetworkInterfaceOptions,
    },
  },
  setLoadBalancerOptions(LoadBalancerOptions): {
    Properties+::: {
      LoadBalancerOptions:
        if !std.isObject(LoadBalancerOptions) then (error 'LoadBalancerOptions must be an object')
        else LoadBalancerOptions,
    },
  },
  setEndpointDomain(EndpointDomain): {
    Properties+::: {
      EndpointDomain:
        if !std.isString(EndpointDomain) then (error 'EndpointDomain must be a string')
        else if std.isEmpty(EndpointDomain) then (error 'EndpointDomain must be not empty')
        else EndpointDomain,
    },
  },
  setDeviceValidationDomain(DeviceValidationDomain): {
    Properties+::: {
      DeviceValidationDomain:
        if !std.isString(DeviceValidationDomain) then (error 'DeviceValidationDomain must be a string')
        else if std.isEmpty(DeviceValidationDomain) then (error 'DeviceValidationDomain must be not empty')
        else DeviceValidationDomain,
    },
  },
  setCreationTime(CreationTime): {
    Properties+::: {
      CreationTime:
        if !std.isString(CreationTime) then (error 'CreationTime must be a string')
        else if std.isEmpty(CreationTime) then (error 'CreationTime must be not empty')
        else CreationTime,
    },
  },
  setLastUpdatedTime(LastUpdatedTime): {
    Properties+::: {
      LastUpdatedTime:
        if !std.isString(LastUpdatedTime) then (error 'LastUpdatedTime must be a string')
        else if std.isEmpty(LastUpdatedTime) then (error 'LastUpdatedTime must be not empty')
        else LastUpdatedTime,
    },
  },
  setDescription(Description): {
    Properties+::: {
      Description:
        if !std.isString(Description) then (error 'Description must be a string')
        else if std.isEmpty(Description) then (error 'Description must be not empty')
        else Description,
    },
  },
  setPolicyDocument(PolicyDocument): {
    Properties+::: {
      PolicyDocument:
        if !std.isString(PolicyDocument) then (error 'PolicyDocument must be a string')
        else if std.isEmpty(PolicyDocument) then (error 'PolicyDocument must be not empty')
        else PolicyDocument,
    },
  },
  setPolicyEnabled(PolicyEnabled): {
    Properties+::: {
      PolicyEnabled:
        if !std.isBoolean(PolicyEnabled) then (error 'PolicyEnabled must be a boolean') else PolicyEnabled,
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
  setSseSpecification(SseSpecification): {
    Properties+::: {
      SseSpecification:
        if !std.isObject(SseSpecification) then (error 'SseSpecification must be an object')
        else SseSpecification,
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
