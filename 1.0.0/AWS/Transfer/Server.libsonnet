{
  new(): {
    local base = self,
    Properties:: {},
    DependsOn:: [],
    CreationPolicy:: [],
    DeletionPolicy:: [],
    UpdatePolicy:: [],
    UpdateReplacePolicy:: [],
    Metadata:: [],
    Type: 'AWS::Transfer::Server',
  },
  setArn(Arn): {
    Properties+::: {
      Arn:
        if !std.isString(Arn) then (error 'Arn must be a string')
        else if std.isEmpty(Arn) then (error 'Arn must be not empty')
        else if std.length(Arn) < 20 then error ('Arn should have at least 20 characters')
        else if std.length(Arn) > 1600 then error ('Arn should have not more than 1600 characters')
        else Arn,
    },
  },
  setAs2ServiceManagedEgressIpAddresses(As2ServiceManagedEgressIpAddresses): {
    Properties+::: {
      As2ServiceManagedEgressIpAddresses:
        if !std.isArray(As2ServiceManagedEgressIpAddresses) then (error 'As2ServiceManagedEgressIpAddresses must be an array')
        else As2ServiceManagedEgressIpAddresses,
    },
  },
  setAs2ServiceManagedEgressIpAddressesMixin(As2ServiceManagedEgressIpAddresses): {
    Properties+::: {
      As2ServiceManagedEgressIpAddresses+: As2ServiceManagedEgressIpAddresses,
    },
  },
  setCertificate(Certificate): {
    Properties+::: {
      Certificate:
        if !std.isString(Certificate) then (error 'Certificate must be a string')
        else if std.isEmpty(Certificate) then (error 'Certificate must be not empty')
        else if std.length(Certificate) > 1600 then error ('Certificate should have not more than 1600 characters')
        else Certificate,
    },
  },
  setDomain(Domain): {
    Properties+::: {
      Domain:
        if !std.isString(Domain) then (error 'Domain must be a string')
        else if std.isEmpty(Domain) then (error 'Domain must be not empty')
        else if Domain != 'S3' && Domain != 'EFS' then (error "Domain should be 'S3' or 'EFS'")
        else Domain,
    },
  },
  setEndpointDetails(EndpointDetails): {
    Properties+::: {
      EndpointDetails:
        if !std.isObject(EndpointDetails) then (error 'EndpointDetails must be an object')
        else EndpointDetails,
    },
  },
  setEndpointType(EndpointType): {
    Properties+::: {
      EndpointType:
        if !std.isString(EndpointType) then (error 'EndpointType must be a string')
        else if std.isEmpty(EndpointType) then (error 'EndpointType must be not empty')
        else if EndpointType != 'PUBLIC' && EndpointType != 'VPC' && EndpointType != 'VPC_ENDPOINT' then (error "EndpointType should be 'PUBLIC' or 'VPC' or 'VPC_ENDPOINT'")
        else EndpointType,
    },
  },
  setIdentityProviderDetails(IdentityProviderDetails): {
    Properties+::: {
      IdentityProviderDetails:
        if !std.isObject(IdentityProviderDetails) then (error 'IdentityProviderDetails must be an object')
        else IdentityProviderDetails,
    },
  },
  setIdentityProviderType(IdentityProviderType): {
    Properties+::: {
      IdentityProviderType:
        if !std.isString(IdentityProviderType) then (error 'IdentityProviderType must be a string')
        else if std.isEmpty(IdentityProviderType) then (error 'IdentityProviderType must be not empty')
        else if IdentityProviderType != 'SERVICE_MANAGED' && IdentityProviderType != 'API_GATEWAY' && IdentityProviderType != 'AWS_DIRECTORY_SERVICE' && IdentityProviderType != 'AWS_LAMBDA' then (error "IdentityProviderType should be 'SERVICE_MANAGED' or 'API_GATEWAY' or 'AWS_DIRECTORY_SERVICE' or 'AWS_LAMBDA'")
        else IdentityProviderType,
    },
  },
  setLoggingRole(LoggingRole): {
    Properties+::: {
      LoggingRole:
        if !std.isString(LoggingRole) then (error 'LoggingRole must be a string')
        else if std.isEmpty(LoggingRole) then (error 'LoggingRole must be not empty')
        else if std.length(LoggingRole) > 2048 then error ('LoggingRole should have not more than 2048 characters')
        else LoggingRole,
    },
  },
  setPostAuthenticationLoginBanner(PostAuthenticationLoginBanner): {
    Properties+::: {
      PostAuthenticationLoginBanner:
        if !std.isString(PostAuthenticationLoginBanner) then (error 'PostAuthenticationLoginBanner must be a string')
        else if std.isEmpty(PostAuthenticationLoginBanner) then (error 'PostAuthenticationLoginBanner must be not empty')
        else if std.length(PostAuthenticationLoginBanner) > 4096 then error ('PostAuthenticationLoginBanner should have not more than 4096 characters')
        else PostAuthenticationLoginBanner,
    },
  },
  setPreAuthenticationLoginBanner(PreAuthenticationLoginBanner): {
    Properties+::: {
      PreAuthenticationLoginBanner:
        if !std.isString(PreAuthenticationLoginBanner) then (error 'PreAuthenticationLoginBanner must be a string')
        else if std.isEmpty(PreAuthenticationLoginBanner) then (error 'PreAuthenticationLoginBanner must be not empty')
        else if std.length(PreAuthenticationLoginBanner) > 4096 then error ('PreAuthenticationLoginBanner should have not more than 4096 characters')
        else PreAuthenticationLoginBanner,
    },
  },
  setProtocolDetails(ProtocolDetails): {
    Properties+::: {
      ProtocolDetails:
        if !std.isObject(ProtocolDetails) then (error 'ProtocolDetails must be an object')
        else ProtocolDetails,
    },
  },
  setProtocols(Protocols): {
    Properties+::: {
      Protocols:
        if !std.isArray(Protocols) then (error 'Protocols must be an array')
        else if std.length(Protocols) < 1 then error ('Protocols cannot have less than 1 items')
        else if std.length(Protocols) > 4 then error ('Protocols cannot have more than 4 items')
        else Protocols,
    },
  },
  setProtocolsMixin(Protocols): {
    Properties+::: {
      Protocols+: Protocols,
    },
  },
  setS3StorageOptions(S3StorageOptions): {
    Properties+::: {
      S3StorageOptions:
        if !std.isObject(S3StorageOptions) then (error 'S3StorageOptions must be an object')
        else S3StorageOptions,
    },
  },
  setSecurityPolicyName(SecurityPolicyName): {
    Properties+::: {
      SecurityPolicyName:
        if !std.isString(SecurityPolicyName) then (error 'SecurityPolicyName must be a string')
        else if std.isEmpty(SecurityPolicyName) then (error 'SecurityPolicyName must be not empty')
        else if std.length(SecurityPolicyName) > 100 then error ('SecurityPolicyName should have not more than 100 characters')
        else SecurityPolicyName,
    },
  },
  setServerId(ServerId): {
    Properties+::: {
      ServerId:
        if !std.isString(ServerId) then (error 'ServerId must be a string')
        else if std.isEmpty(ServerId) then (error 'ServerId must be not empty')
        else if std.length(ServerId) < 19 then error ('ServerId should have at least 19 characters')
        else if std.length(ServerId) > 19 then error ('ServerId should have not more than 19 characters')
        else ServerId,
    },
  },
  setStructuredLogDestinations(StructuredLogDestinations): {
    Properties+::: {
      StructuredLogDestinations:
        if !std.isArray(StructuredLogDestinations) then (error 'StructuredLogDestinations must be an array')
        else if std.length(StructuredLogDestinations) > 1 then error ('StructuredLogDestinations cannot have more than 1 items')
        else StructuredLogDestinations,
    },
  },
  setStructuredLogDestinationsMixin(StructuredLogDestinations): {
    Properties+::: {
      StructuredLogDestinations+: StructuredLogDestinations,
    },
  },
  setTags(Tags): {
    Properties+::: {
      Tags:
        if !std.isArray(Tags) then (error 'Tags must be an array')
        else if std.length(Tags) < 1 then error ('Tags cannot have less than 1 items')
        else if std.length(Tags) > 50 then error ('Tags cannot have more than 50 items')
        else Tags,
    },
  },
  setTagsMixin(Tags): {
    Properties+::: {
      Tags+: Tags,
    },
  },
  setWorkflowDetails(WorkflowDetails): {
    Properties+::: {
      WorkflowDetails:
        if !std.isObject(WorkflowDetails) then (error 'WorkflowDetails must be an object')
        else WorkflowDetails,
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
