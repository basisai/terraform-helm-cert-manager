# Cert-Manager

Deploys [cert-manager](https://cert-manager.io).

## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| helm | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| affinity | Pod affinity | `map` | `{}` | no |
| ca\_injector\_affinity | Affinity for ca\_injector | `map` | `{}` | no |
| ca\_injector\_container\_security\_context | CA Injector Container Security Context | `map` | `{}` | no |
| ca\_injector\_deployment\_annotations | Extra annotations for ca\_injector deployment | `map` | `{}` | no |
| ca\_injector\_enabled | Enable CA Injector. | `bool` | `true` | no |
| ca\_injector\_extra\_args | Extra args for ca\_injector | `list` | `[]` | no |
| ca\_injector\_image\_repository | Image repository for ca\_injector | `string` | `"quay.io/jetstack/cert-manager-cainjector"` | no |
| ca\_injector\_image\_tag | Override the image tag to deploy by setting this variable. If no value is set, the chart's appVersion will be used. | `any` | `null` | no |
| ca\_injector\_pod\_annotations | Extra annotations for ca\_injector pods | `map` | `{}` | no |
| ca\_injector\_pod\_labels | Extra labels for ca\_injector pods | `map` | `{}` | no |
| ca\_injector\_replica\_count | Number of replica for injector | `number` | `1` | no |
| ca\_injector\_resources | ca\_injector pod resources | `map` | <pre>{<br>  "limits": {<br>    "cpu": "100m",<br>    "memory": "100Mi"<br>  },<br>  "requests": {<br>    "cpu": "100m",<br>    "memory": "100Mi"<br>  }<br>}</pre> | no |
| ca\_injector\_security\_context | CA Injector Pod Security Context | `map` | `{}` | no |
| ca\_injector\_service\_account\_annotations | Annotations for ca\_injector service account | `map` | `{}` | no |
| ca\_injector\_service\_account\_create | Create ca\_injector service account | `bool` | `true` | no |
| ca\_injector\_service\_account\_name | Name for ca\_injector service account. If not set and create is true, a name is generated using the fullname template | `string` | `""` | no |
| ca\_injector\_strategy | CA Injector deployment update strategy | `map` | `{}` | no |
| ca\_injector\_tolerations | Tolerations for ca\_injector | `list` | `[]` | no |
| chart\_name | Helm chart name to provision | `string` | `"cert-manager"` | no |
| chart\_namespace | Namespace to install the chart into | `string` | `"default"` | no |
| chart\_repository | Helm repository for the chart | `string` | `"https://charts.jetstack.io"` | no |
| chart\_timeout | Timeout to wait for the Chart to be deployed. | `number` | `300` | no |
| chart\_version | Version of Chart to install. Set to empty to install the latest version | `string` | `"1.1.0"` | no |
| cluster\_resource\_namespace | Override the namespace used to store DNS provider credentials etc. for ClusterIssuer resources. By default, the same namespace as cert-manager is deployed within is used. This namespace will not be automatically created by the Helm chart. | `string` | `""` | no |
| container\_security\_context | Configure container security context | `map` | `{}` | no |
| deployment\_annotations | Extra annotations for the deployment | `map` | `{}` | no |
| extra\_args | Extra arguments | `list` | `[]` | no |
| extra\_env | Extra environment variables | `list` | `[]` | no |
| feature\_gates | Feature gates to enable on the pod | `list` | `[]` | no |
| image\_pull\_secrets | Secrets for image pulling | `list` | `[]` | no |
| image\_repository | Image repository | `string` | `"quay.io/jetstack/cert-manager-controller"` | no |
| image\_tag | Override the image tag to deploy by setting this variable. If no value is set, the chart's appVersion will be used. | `any` | `null` | no |
| ingress\_shim | Configure Ingess Shim. See https://cert-manager.io/docs/usage/ingress/ | `map` | `{}` | no |
| install\_crds | Install CRDs with chart | `bool` | `true` | no |
| leader\_election\_namespace | Namespace used for Leader Election ConfigMap | `string` | `"kube-system"` | no |
| log\_level | Set the verbosity of cert-manager. Range of 0 - 6 with 6 being the most verbose. | `number` | `2` | no |
| max\_history | Max History for Helm | `number` | `20` | no |
| mutating\_webhook\_configuration\_annotations | Optional additional annotations to add to the webhook MutatingWebhookConfiguration | `map` | `{}` | no |
| pod\_annotations | Extra annotations for pods | `map` | `{}` | no |
| pod\_labels | Extra labels for pods | `map` | `{}` | no |
| priority\_class\_name | Priority class for all cert-manager pods | `string` | `""` | no |
| prometheus\_enabled | Enable Prometheus metrics | `bool` | `true` | no |
| psp\_apparmor | Use AppArmor with PSP. | `bool` | `true` | no |
| psp\_enable | Create PodSecurityPolicy | `bool` | `false` | no |
| rbac\_create | Create RBAC resources | `bool` | `true` | no |
| release\_name | Helm release name | `string` | `"cert-manager"` | no |
| replica\_count | Number of controller replicas | `number` | `1` | no |
| resources | Resources for pods | `map` | <pre>{<br>  "limits": {<br>    "cpu": "100m",<br>    "memory": "100Mi"<br>  },<br>  "requests": {<br>    "cpu": "100m",<br>    "memory": "100Mi"<br>  }<br>}</pre> | no |
| security\_context | Configure pod security context | `map` | `{}` | no |
| service\_account\_annotations | Service acocunt annotations | `map` | `{}` | no |
| service\_account\_create | Create service account | `bool` | `true` | no |
| service\_account\_name | Override the default service account name | `string` | `""` | no |
| strategy | Update strategy of deployment | `map` | <pre>{<br>  "rollingUpdate": {<br>    "maxSurge": 1,<br>    "minAvailable": 1<br>  },<br>  "type": "RollingUpdate"<br>}</pre> | no |
| tolerations | Pod tolerations | `list` | `[]` | no |
| validating\_webhook\_configuration\_annotations | Optional additional annotations to add to the webhook ValidatingWebhookConfiguration | `map` | `{}` | no |
| volume\_mounts | Extra volume mounts for the container | `list` | `[]` | no |
| volumes | Extra volumes for the pod | `list` | `[]` | no |
| webhook\_affinity | Affinity for webhook | `map` | `{}` | no |
| webhook\_deployment\_annotations | Extra annotations for webhook deployment | `map` | `{}` | no |
| webhook\_extra\_args | Extra args for webhook | `list` | `[]` | no |
| webhook\_host\_network | Whether webhook should use host network | `bool` | `false` | no |
| webhook\_image\_repository | Image repository for webhook | `string` | `"quay.io/jetstack/cert-manager-webhook"` | no |
| webhook\_image\_tag | Override the image tag to deploy by setting this variable. If no value is set, the chart's appVersion will be used. | `any` | `null` | no |
| webhook\_liveness\_probe | Liveness probe for webhook | `map` | <pre>{<br>  "failureThreshold": 3,<br>  "initialDelaySeconds": 60,<br>  "periodSeconds": 10,<br>  "successThreshold": 1,<br>  "timeoutSeconds": 1<br>}</pre> | no |
| webhook\_pod\_annotations | Extra annotations for webhook pods | `map` | `{}` | no |
| webhook\_pod\_labels | Extra labels for webhook pods | `map` | `{}` | no |
| webhook\_port | Port used by webhook to listen for request from Kubernetes Master | `number` | `10250` | no |
| webhook\_readiness\_probe | Readiness probe for webhook | `map` | <pre>{<br>  "failureThreshold": 3,<br>  "initialDelaySeconds": 5,<br>  "periodSeconds": 5,<br>  "successThreshold": 1,<br>  "timeoutSeconds": 1<br>}</pre> | no |
| webhook\_replica\_count | Number of replicas for webhook | `number` | `1` | no |
| webhook\_resources | Webhook pod resources | `map` | <pre>{<br>  "limits": {<br>    "cpu": "100m",<br>    "memory": "100Mi"<br>  },<br>  "requests": {<br>    "cpu": "100m",<br>    "memory": "100Mi"<br>  }<br>}</pre> | no |
| webhook\_security\_context | Security context for webhook pod | `map` | `{}` | no |
| webhook\_service\_account\_annotations | Annotations for webhook service account | `map` | `{}` | no |
| webhook\_service\_account\_create | Create Webhook service account | `bool` | `true` | no |
| webhook\_service\_account\_name | Name for webhook service account. If not set and create is true, a name is generated using the fullname template | `string` | `""` | no |
| webhook\_timeout\_seconds | Timeout in seconds for webook | `number` | `10` | no |
| webhook\_tolerations | Tolerations for webhook | `list` | `[]` | no |
| webook\_container\_security\_context | Security context for webhook containers | `map` | `{}` | no |
| webook\_strategy | Update strategy for admission webhook | `map` | `{}` | no |

## Outputs

No output.
