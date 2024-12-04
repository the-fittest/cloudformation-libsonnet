{
  Service: (import 'ServiceDiscovery/Service.libsonnet'),
  PublicDnsNamespace: (import 'ServiceDiscovery/PublicDnsNamespace.libsonnet'),
  PrivateDnsNamespace: (import 'ServiceDiscovery/PrivateDnsNamespace.libsonnet'),
  Instance: (import 'ServiceDiscovery/Instance.libsonnet'),
  HttpNamespace: (import 'ServiceDiscovery/HttpNamespace.libsonnet'),
}
