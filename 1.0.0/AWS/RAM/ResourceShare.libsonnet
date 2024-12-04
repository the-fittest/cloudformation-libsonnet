{
  // AWS RAM ResourceShare
  ResourceShare: {
    new(
      Name,
    ): {
      local base = self,
      Properties: {
        assert std.isString(Name) : 'Name must be a string',
        Name: Name,
      },
      DependsOn:: [],
      CreationPolicy:: [],
      DeletionPolicy:: [],
      UpdatePolicy:: [],
      UpdateReplacePolicy:: [],
      Metadata:: [],
      Type: 'AWS::RAM::ResourceShare',
    },
    withPermissionArns(PermissionArns): {
      Properties+::: {
        PermissionArns: (if std.isArray(PermissionArns) then PermissionArns else [PermissionArns]),
      },
    },
    withPermissionArnsMixin(PermissionArns): {
      Properties+::: {
        PermissionArns+: (if std.isArray(PermissionArns) then PermissionArns else [PermissionArns]),
      },
    },
    withPrincipals(Principals): {
      Properties+::: {
        Principals: (if std.isArray(Principals) then Principals else [Principals]),
      },
    },
    withPrincipalsMixin(Principals): {
      Properties+::: {
        Principals+: (if std.isArray(Principals) then Principals else [Principals]),
      },
    },
    withAllowExternalPrincipals(AllowExternalPrincipals): {
      assert std.isBoolean(AllowExternalPrincipals) : 'AllowExternalPrincipals must be a boolean',
      Properties+::: {
        AllowExternalPrincipals: AllowExternalPrincipals,
      },
    },
    withId(Id): {
      assert std.isString(Id) : 'Id must be a string',
      Properties+::: {
        Id: Id,
      },
    },
    withArn(Arn): {
      assert std.isString(Arn) : 'Arn must be a string',
      Properties+::: {
        Arn: Arn,
      },
    },
    withResourceArns(ResourceArns): {
      Properties+::: {
        ResourceArns: (if std.isArray(ResourceArns) then ResourceArns else [ResourceArns]),
      },
    },
    withResourceArnsMixin(ResourceArns): {
      Properties+::: {
        ResourceArns+: (if std.isArray(ResourceArns) then ResourceArns else [ResourceArns]),
      },
    },
    withSources(Sources): {
      Properties+::: {
        Sources: (if std.isArray(Sources) then Sources else [Sources]),
      },
    },
    withSourcesMixin(Sources): {
      Properties+::: {
        Sources+: (if std.isArray(Sources) then Sources else [Sources]),
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
  },
}
