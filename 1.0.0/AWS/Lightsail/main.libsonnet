{
  StaticIp: (import 'Lightsail/StaticIp.libsonnet'),
  LoadBalancerTlsCertificate: (import 'Lightsail/LoadBalancerTlsCertificate.libsonnet'),
  LoadBalancer: (import 'Lightsail/LoadBalancer.libsonnet'),
  Instance: (import 'Lightsail/Instance.libsonnet'),
  Disk: (import 'Lightsail/Disk.libsonnet'),
  Database: (import 'Lightsail/Database.libsonnet'),
  Container: (import 'Lightsail/Container.libsonnet'),
  Certificate: (import 'Lightsail/Certificate.libsonnet'),
  Bucket: (import 'Lightsail/Bucket.libsonnet'),
  Alarm: (import 'Lightsail/Alarm.libsonnet'),
}
