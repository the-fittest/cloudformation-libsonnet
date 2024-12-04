{
  // AWS SageMaker Project
  Project: {
    new(
      ProjectName,
      ServiceCatalogProvisioningDetails,
    ): {
      local base = self,
      Properties: {
        assert std.isString(ProjectName) : 'ProjectName must be a string',
        ProjectName: ProjectName,
        assert std.isObject(ServiceCatalogProvisioningDetails) : 'ServiceCatalogProvisioningDetails must be an object',
        ServiceCatalogProvisioningDetails: ServiceCatalogProvisioningDetails,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::SageMaker::Project',
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
    withProjectArn(ProjectArn): {
      assert std.isString(ProjectArn) : 'ProjectArn must be a string',
      Properties+::: {
        ProjectArn: ProjectArn,
      },
    },
    withProjectId(ProjectId): {
      assert std.isString(ProjectId) : 'ProjectId must be a string',
      Properties+::: {
        ProjectId: ProjectId,
      },
    },
    withProjectDescription(ProjectDescription): {
      assert std.isString(ProjectDescription) : 'ProjectDescription must be a string',
      Properties+::: {
        ProjectDescription: ProjectDescription,
      },
    },
    withCreationTime(CreationTime): {
      assert std.isString(CreationTime) : 'CreationTime must be a string',
      Properties+::: {
        CreationTime: CreationTime,
      },
    },
    withServiceCatalogProvisionedProductDetails(ServiceCatalogProvisionedProductDetails): {
      assert std.isObject(ServiceCatalogProvisionedProductDetails) : 'ServiceCatalogProvisionedProductDetails must be a object',
      Properties+::: {
        ServiceCatalogProvisionedProductDetails: ServiceCatalogProvisionedProductDetails,
      },
    },
    withProjectStatus(ProjectStatus): {
      assert std.isString(ProjectStatus) : 'ProjectStatus must be a string',
      Properties+::: {
        ProjectStatus: ProjectStatus,
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
  },
}
