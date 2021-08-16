# Cert-Manager

Deploys [cert-manager](https://cert-manager.io).

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13 |
| <a name="requirement_helm"></a> [helm](#requirement\_helm) | ~> 2.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_helm"></a> [helm](#provider\_helm) | ~> 2.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [helm_release.release](https://registry.terraform.io/providers/hashicorp/helm/latest/docs/resources/release) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_affinity"></a> [affinity](#input\_affinity) | Pod affinity | `map` | `{}` | no |
| <a name="input_ca_injector_affinity"></a> [ca\_injector\_affinity](#input\_ca\_injector\_affinity) | Affinity for ca\_injector | `map` | `{}` | no |
| <a name="input_ca_injector_container_security_context"></a> [ca\_injector\_container\_security\_context](#input\_ca\_injector\_container\_security\_context) | CA Injector Container Security Context | `map` | `{}` | no |
| <a name="input_ca_injector_deployment_annotations"></a> [ca\_injector\_deployment\_annotations](#input\_ca\_injector\_deployment\_annotations) | Extra annotations for ca\_injector deployment | `map` | `{}` | no |
| <a name="input_ca_injector_enabled"></a> [ca\_injector\_enabled](#input\_ca\_injector\_enabled) | Enable CA Injector. | `bool` | `true` | no |
| <a name="input_ca_injector_extra_args"></a> [ca\_injector\_extra\_args](#input\_ca\_injector\_extra\_args) | Extra args for ca\_injector | `list` | `[]` | no |
| <a name="input_ca_injector_image_repository"></a> [ca\_injector\_image\_repository](#input\_ca\_injector\_image\_repository) | Image repository for ca\_injector | `string` | `"quay.io/jetstack/cert-manager-cainjector"` | no |
| <a name="input_ca_injector_image_tag"></a> [ca\_injector\_image\_tag](#input\_ca\_injector\_image\_tag) | Override the image tag to deploy by setting this variable. If no value is set, the chart's appVersion will be used. | `any` | `null` | no |
| <a name="input_ca_injector_node_selector"></a> [ca\_injector\_node\_selector](#input\_ca\_injector\_node\_selector) | Node selector for ca\_injector | `map` | `{}` | no |
| <a name="input_ca_injector_pod_annotations"></a> [ca\_injector\_pod\_annotations](#input\_ca\_injector\_pod\_annotations) | Extra annotations for ca\_injector pods | `map` | `{}` | no |
| <a name="input_ca_injector_pod_labels"></a> [ca\_injector\_pod\_labels](#input\_ca\_injector\_pod\_labels) | Extra labels for ca\_injector pods | `map` | `{}` | no |
| <a name="input_ca_injector_replica_count"></a> [ca\_injector\_replica\_count](#input\_ca\_injector\_replica\_count) | Number of replica for injector | `number` | `1` | no |
| <a name="input_ca_injector_resources"></a> [ca\_injector\_resources](#input\_ca\_injector\_resources) | ca\_injector pod resources | `map` | <pre>{<br>  "limits": {<br>    "cpu": "100m",<br>    "memory": "300Mi"<br>  },<br>  "requests": {<br>    "cpu": "100m",<br>    "memory": "300Mi"<br>  }<br>}</pre> | no |
| <a name="input_ca_injector_security_context"></a> [ca\_injector\_security\_context](#input\_ca\_injector\_security\_context) | CA Injector Pod Security Context | `map` | `{}` | no |
| <a name="input_ca_injector_service_account_annotations"></a> [ca\_injector\_service\_account\_annotations](#input\_ca\_injector\_service\_account\_annotations) | Annotations for ca\_injector service account | `map` | `{}` | no |
| <a name="input_ca_injector_service_account_create"></a> [ca\_injector\_service\_account\_create](#input\_ca\_injector\_service\_account\_create) | Create ca\_injector service account | `bool` | `true` | no |
| <a name="input_ca_injector_service_account_name"></a> [ca\_injector\_service\_account\_name](#input\_ca\_injector\_service\_account\_name) | Name for ca\_injector service account. If not set and create is true, a name is generated using the fullname template | `string` | `""` | no |
| <a name="input_ca_injector_strategy"></a> [ca\_injector\_strategy](#input\_ca\_injector\_strategy) | CA Injector deployment update strategy | `map` | <pre>{<br>  "rollingUpdate": {<br>    "maxSurge": 1,<br>    "maxUnavailable": "50%"<br>  },<br>  "type": "RollingUpdate"<br>}</pre> | no |
| <a name="input_ca_injector_tolerations"></a> [ca\_injector\_tolerations](#input\_ca\_injector\_tolerations) | Tolerations for ca\_injector | `list` | `[]` | no |
| <a name="input_chart_name"></a> [chart\_name](#input\_chart\_name) | Helm chart name to provision | `string` | `"cert-manager"` | no |
| <a name="input_chart_namespace"></a> [chart\_namespace](#input\_chart\_namespace) | Namespace to install the chart into | `string` | `"default"` | no |
| <a name="input_chart_repository"></a> [chart\_repository](#input\_chart\_repository) | Helm repository for the chart | `string` | `"https://charts.jetstack.io"` | no |
| <a name="input_chart_timeout"></a> [chart\_timeout](#input\_chart\_timeout) | Timeout to wait for the Chart to be deployed. | `number` | `300` | no |
| <a name="input_chart_version"></a> [chart\_version](#input\_chart\_version) | Version of Chart to install. Set to empty to install the latest version | `string` | `"1.5.0"` | no |
| <a name="input_cluster_resource_namespace"></a> [cluster\_resource\_namespace](#input\_cluster\_resource\_namespace) | Override the namespace used to store DNS provider credentials etc. for ClusterIssuer resources. By default, the same namespace as cert-manager is deployed within is used. This namespace will not be automatically created by the Helm chart. | `string` | `""` | no |
| <a name="input_container_security_context"></a> [container\_security\_context](#input\_container\_security\_context) | Configure container security context | `map` | `{}` | no |
| <a name="input_deployment_annotations"></a> [deployment\_annotations](#input\_deployment\_annotations) | Extra annotations for the deployment | `map` | `{}` | no |
| <a name="input_extra_args"></a> [extra\_args](#input\_extra\_args) | Extra arguments | `list` | `[]` | no |
| <a name="input_extra_env"></a> [extra\_env](#input\_extra\_env) | Extra environment variables | `list` | `[]` | no |
| <a name="input_feature_gates"></a> [feature\_gates](#input\_feature\_gates) | Feature gates to enable on the pod | `list` | `[]` | no |
| <a name="input_image_pull_secrets"></a> [image\_pull\_secrets](#input\_image\_pull\_secrets) | Secrets for image pulling | `list` | `[]` | no |
| <a name="input_image_repository"></a> [image\_repository](#input\_image\_repository) | Image repository | `string` | `"quay.io/jetstack/cert-manager-controller"` | no |
| <a name="input_image_tag"></a> [image\_tag](#input\_image\_tag) | Override the image tag to deploy by setting this variable. If no value is set, the chart's appVersion will be used. | `any` | `null` | no |
| <a name="input_ingress_shim"></a> [ingress\_shim](#input\_ingress\_shim) | Configure Ingess Shim. See https://cert-manager.io/docs/usage/ingress/ | `map` | `{}` | no |
| <a name="input_install_crds"></a> [install\_crds](#input\_install\_crds) | Install CRDs with chart | `bool` | `true` | no |
| <a name="input_leader_election_lease_duration"></a> [leader\_election\_lease\_duration](#input\_leader\_election\_lease\_duration) | Duration that non-leader candidates will wait after observing a leadership renewal | `string` | `"60s"` | no |
| <a name="input_leader_election_namespace"></a> [leader\_election\_namespace](#input\_leader\_election\_namespace) | Namespace used for Leader Election ConfigMap | `string` | `"kube-system"` | no |
| <a name="input_leader_election_renew_deadline"></a> [leader\_election\_renew\_deadline](#input\_leader\_election\_renew\_deadline) | Interval between attempts by the acting master to renew a leadership slot before it stops leading | `string` | `"40s"` | no |
| <a name="input_leader_election_retry_period"></a> [leader\_election\_retry\_period](#input\_leader\_election\_retry\_period) | Duration the clients should wait between attempting acquisition and renewal of a leadership. | `string` | `"15s"` | no |
| <a name="input_log_level"></a> [log\_level](#input\_log\_level) | Set the verbosity of cert-manager. Range of 0 - 6 with 6 being the most verbose. | `number` | `2` | no |
| <a name="input_max_history"></a> [max\_history](#input\_max\_history) | Max History for Helm | `number` | `20` | no |
| <a name="input_mutating_webhook_configuration_annotations"></a> [mutating\_webhook\_configuration\_annotations](#input\_mutating\_webhook\_configuration\_annotations) | Optional additional annotations to add to the webhook MutatingWebhookConfiguration | `map` | `{}` | no |
| <a name="input_node_selector"></a> [node\_selector](#input\_node\_selector) | Node selector for cert-manager-controller pods | `map` | `{}` | no |
| <a name="input_pod_annotations"></a> [pod\_annotations](#input\_pod\_annotations) | Extra annotations for pods | `map` | `{}` | no |
| <a name="input_pod_labels"></a> [pod\_labels](#input\_pod\_labels) | Extra labels for pods | `map` | `{}` | no |
| <a name="input_priority_class_name"></a> [priority\_class\_name](#input\_priority\_class\_name) | Priority class for all cert-manager pods | `string` | `""` | no |
| <a name="input_prometheus_enabled"></a> [prometheus\_enabled](#input\_prometheus\_enabled) | Enable Prometheus metrics | `bool` | `true` | no |
| <a name="input_psp_apparmor"></a> [psp\_apparmor](#input\_psp\_apparmor) | Use AppArmor with PSP. | `bool` | `true` | no |
| <a name="input_psp_enable"></a> [psp\_enable](#input\_psp\_enable) | Create PodSecurityPolicy | `bool` | `false` | no |
| <a name="input_rbac_create"></a> [rbac\_create](#input\_rbac\_create) | Create RBAC resources | `bool` | `true` | no |
| <a name="input_release_name"></a> [release\_name](#input\_release\_name) | Helm release name | `string` | `"cert-manager"` | no |
| <a name="input_replica_count"></a> [replica\_count](#input\_replica\_count) | Number of controller replicas | `number` | `1` | no |
| <a name="input_resources"></a> [resources](#input\_resources) | Resources for pods | `map` | <pre>{<br>  "limits": {<br>    "cpu": "100m",<br>    "memory": "300Mi"<br>  },<br>  "requests": {<br>    "cpu": "100m",<br>    "memory": "300Mi"<br>  }<br>}</pre> | no |
| <a name="input_security_context"></a> [security\_context](#input\_security\_context) | Configure pod security context | `map` | `{}` | no |
| <a name="input_service_account_annotations"></a> [service\_account\_annotations](#input\_service\_account\_annotations) | Service acocunt annotations | `map` | `{}` | no |
| <a name="input_service_account_automount_token"></a> [service\_account\_automount\_token](#input\_service\_account\_automount\_token) | Automount API credentials for a Service Account | `bool` | `true` | no |
| <a name="input_service_account_create"></a> [service\_account\_create](#input\_service\_account\_create) | Create service account | `bool` | `true` | no |
| <a name="input_service_account_name"></a> [service\_account\_name](#input\_service\_account\_name) | Override the default service account name | `string` | `""` | no |
| <a name="input_startupapicheck_affinity"></a> [startupapicheck\_affinity](#input\_startupapicheck\_affinity) | Affinity for startupapicheck | `map` | `{}` | no |
| <a name="input_startupapicheck_backoff_limit"></a> [startupapicheck\_backoff\_limit](#input\_startupapicheck\_backoff\_limit) | startupapicheck backoff limit | `number` | `4` | no |
| <a name="input_startupapicheck_enabled"></a> [startupapicheck\_enabled](#input\_startupapicheck\_enabled) | Enable startupapicheck | `bool` | `true` | no |
| <a name="input_startupapicheck_extra_args"></a> [startupapicheck\_extra\_args](#input\_startupapicheck\_extra\_args) | Extra args for startupapicheck | `list` | `[]` | no |
| <a name="input_startupapicheck_image_repository"></a> [startupapicheck\_image\_repository](#input\_startupapicheck\_image\_repository) | Image repository for startupapicheck | `string` | `"quay.io/jetstack/cert-manager-ctl"` | no |
| <a name="input_startupapicheck_image_tag"></a> [startupapicheck\_image\_tag](#input\_startupapicheck\_image\_tag) | Override the image tag to deploy by setting this variable. If no value is set, the chart's appVersion will be used. | `any` | `null` | no |
| <a name="input_startupapicheck_node_selector"></a> [startupapicheck\_node\_selector](#input\_startupapicheck\_node\_selector) | Node selector for startupapicheck | `map` | `{}` | no |
| <a name="input_startupapicheck_pod_labels"></a> [startupapicheck\_pod\_labels](#input\_startupapicheck\_pod\_labels) | Extra labels for startupapicheck pods | `map` | `{}` | no |
| <a name="input_startupapicheck_resources"></a> [startupapicheck\_resources](#input\_startupapicheck\_resources) | startupapicheck pod resources | `map` | <pre>{<br>  "limits": {<br>    "cpu": "10m",<br>    "memory": "32Mi"<br>  },<br>  "requests": {<br>    "cpu": "10m",<br>    "memory": "32Mi"<br>  }<br>}</pre> | no |
| <a name="input_startupapicheck_security_context"></a> [startupapicheck\_security\_context](#input\_startupapicheck\_security\_context) | startupapicheck security context | `map` | <pre>{<br>  "runAsNonRoot": true<br>}</pre> | no |
| <a name="input_startupapicheck_timeout"></a> [startupapicheck\_timeout](#input\_startupapicheck\_timeout) | startupapicheck timeout | `string` | `"1m"` | no |
| <a name="input_startupapicheck_tolerations"></a> [startupapicheck\_tolerations](#input\_startupapicheck\_tolerations) | Tolerations for startupapicheck | `list` | `[]` | no |
| <a name="input_strategy"></a> [strategy](#input\_strategy) | Update strategy of deployment | `map` | <pre>{<br>  "rollingUpdate": {<br>    "maxSurge": 1,<br>    "maxUnavailable": "50%"<br>  },<br>  "type": "RollingUpdate"<br>}</pre> | no |
| <a name="input_tolerations"></a> [tolerations](#input\_tolerations) | Pod tolerations | `list` | `[]` | no |
| <a name="input_validating_webhook_configuration_annotations"></a> [validating\_webhook\_configuration\_annotations](#input\_validating\_webhook\_configuration\_annotations) | Optional additional annotations to add to the webhook ValidatingWebhookConfiguration | `map` | `{}` | no |
| <a name="input_volume_mounts"></a> [volume\_mounts](#input\_volume\_mounts) | Extra volume mounts for the container | `list` | `[]` | no |
| <a name="input_volumes"></a> [volumes](#input\_volumes) | Extra volumes for the pod | `list` | `[]` | no |
| <a name="input_webhook_affinity"></a> [webhook\_affinity](#input\_webhook\_affinity) | Affinity for webhook | `map` | `{}` | no |
| <a name="input_webhook_deployment_annotations"></a> [webhook\_deployment\_annotations](#input\_webhook\_deployment\_annotations) | Extra annotations for webhook deployment | `map` | `{}` | no |
| <a name="input_webhook_extra_args"></a> [webhook\_extra\_args](#input\_webhook\_extra\_args) | Extra args for webhook | `list` | `[]` | no |
| <a name="input_webhook_host_network"></a> [webhook\_host\_network](#input\_webhook\_host\_network) | Whether webhook should use host network | `bool` | `false` | no |
| <a name="input_webhook_image_repository"></a> [webhook\_image\_repository](#input\_webhook\_image\_repository) | Image repository for webhook | `string` | `"quay.io/jetstack/cert-manager-webhook"` | no |
| <a name="input_webhook_image_tag"></a> [webhook\_image\_tag](#input\_webhook\_image\_tag) | Override the image tag to deploy by setting this variable. If no value is set, the chart's appVersion will be used. | `any` | `null` | no |
| <a name="input_webhook_liveness_probe"></a> [webhook\_liveness\_probe](#input\_webhook\_liveness\_probe) | Liveness probe for webhook | `map` | <pre>{<br>  "failureThreshold": 3,<br>  "initialDelaySeconds": 60,<br>  "periodSeconds": 10,<br>  "successThreshold": 1,<br>  "timeoutSeconds": 5<br>}</pre> | no |
| <a name="input_webhook_node_selector"></a> [webhook\_node\_selector](#input\_webhook\_node\_selector) | Node selector for webhook | `map` | `{}` | no |
| <a name="input_webhook_pod_annotations"></a> [webhook\_pod\_annotations](#input\_webhook\_pod\_annotations) | Extra annotations for webhook pods | `map` | `{}` | no |
| <a name="input_webhook_pod_labels"></a> [webhook\_pod\_labels](#input\_webhook\_pod\_labels) | Extra labels for webhook pods | `map` | `{}` | no |
| <a name="input_webhook_port"></a> [webhook\_port](#input\_webhook\_port) | Port used by webhook to listen for request from Kubernetes Master | `number` | `10250` | no |
| <a name="input_webhook_readiness_probe"></a> [webhook\_readiness\_probe](#input\_webhook\_readiness\_probe) | Readiness probe for webhook | `map` | <pre>{<br>  "failureThreshold": 3,<br>  "initialDelaySeconds": 5,<br>  "periodSeconds": 5,<br>  "successThreshold": 1,<br>  "timeoutSeconds": 5<br>}</pre> | no |
| <a name="input_webhook_replica_count"></a> [webhook\_replica\_count](#input\_webhook\_replica\_count) | Number of replicas for webhook | `number` | `1` | no |
| <a name="input_webhook_resources"></a> [webhook\_resources](#input\_webhook\_resources) | Webhook pod resources | `map` | <pre>{<br>  "limits": {<br>    "cpu": "100m",<br>    "memory": "300Mi"<br>  },<br>  "requests": {<br>    "cpu": "100m",<br>    "memory": "300Mi"<br>  }<br>}</pre> | no |
| <a name="input_webhook_security_context"></a> [webhook\_security\_context](#input\_webhook\_security\_context) | Security context for webhook pod | `map` | `{}` | no |
| <a name="input_webhook_service_account_annotations"></a> [webhook\_service\_account\_annotations](#input\_webhook\_service\_account\_annotations) | Annotations for webhook service account | `map` | `{}` | no |
| <a name="input_webhook_service_account_create"></a> [webhook\_service\_account\_create](#input\_webhook\_service\_account\_create) | Create Webhook service account | `bool` | `true` | no |
| <a name="input_webhook_service_account_name"></a> [webhook\_service\_account\_name](#input\_webhook\_service\_account\_name) | Name for webhook service account. If not set and create is true, a name is generated using the fullname template | `string` | `""` | no |
| <a name="input_webhook_timeout_seconds"></a> [webhook\_timeout\_seconds](#input\_webhook\_timeout\_seconds) | Timeout in seconds for webook | `number` | `10` | no |
| <a name="input_webhook_tolerations"></a> [webhook\_tolerations](#input\_webhook\_tolerations) | Tolerations for webhook | `list` | `[]` | no |
| <a name="input_webook_container_security_context"></a> [webook\_container\_security\_context](#input\_webook\_container\_security\_context) | Security context for webhook containers | `map` | `{}` | no |
| <a name="input_webook_strategy"></a> [webook\_strategy](#input\_webook\_strategy) | Update strategy for admission webhook | `map` | <pre>{<br>  "rollingUpdate": {<br>    "maxSurge": 1,<br>    "maxUnavailable": "50%"<br>  },<br>  "type": "RollingUpdate"<br>}</pre> | no |

## Outputs

No outputs.
