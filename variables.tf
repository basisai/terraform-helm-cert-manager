variable "release_name" {
  description = "Helm release name"
  default     = "cert-manager"
}

variable "chart_name" {
  description = "Helm chart name to provision"
  default     = "cert-manager"
}

variable "chart_repository" {
  description = "Helm repository for the chart"
  default     = "https://charts.jetstack.io"
}

variable "chart_version" {
  description = "Version of Chart to install. Set to empty to install the latest version"
  default     = "1.1.0"
}

variable "chart_namespace" {
  description = "Namespace to install the chart into"
  default     = "default"
}

variable "chart_timeout" {
  description = "Timeout to wait for the Chart to be deployed."
  default     = 300
}

variable "max_history" {
  description = "Max History for Helm"
  default     = 20
}

#######################
# Chart Values
#######################
variable "priority_class_name" {
  description = "Priority class for all cert-manager pods"
  default     = ""
}

variable "rbac_create" {
  description = "Create RBAC resources"
  default     = true
}

variable "psp_enable" {
  description = "Create PodSecurityPolicy"
  default     = false
}

variable "psp_apparmor" {
  description = "Use AppArmor with PSP."
  default     = true
}

variable "service_account_create" {
  description = "Create service account"
  default     = true
}

variable "service_account_name" {
  description = "Override the default service account name"
  default     = ""
}

variable "service_account_annotations" {
  description = "Service acocunt annotations"
  default     = {}
}

variable "log_level" {
  description = "Set the verbosity of cert-manager. Range of 0 - 6 with 6 being the most verbose."
  default     = 2
}

variable "leader_election_namespace" {
  description = "Namespace used for Leader Election ConfigMap"
  default     = "kube-system"
}

variable "cluster_resource_namespace" {
  description = "Override the namespace used to store DNS provider credentials etc. for ClusterIssuer resources. By default, the same namespace as cert-manager is deployed within is used. This namespace will not be automatically created by the Helm chart."
  default     = ""
}

variable "install_crds" {
  description = "Install CRDs with chart"
  default     = true
}

variable "replica_count" {
  description = "Number of controller replicas"
  default     = 1
}

variable "strategy" {
  description = "Update strategy of deployment"
  default = {
    type = "RollingUpdate"
    rollingUpdate = {
      maxSurge     = 1
      minAvailable = 1
    }
  }
}

variable "feature_gates" {
  description = "Feature gates to enable on the pod"
  default     = []
}

variable "image_pull_secrets" {
  description = "Secrets for image pulling"
  default     = []
}

variable "image_repository" {
  description = "Image repository"
  default     = "quay.io/jetstack/cert-manager-controller"
}

variable "image_tag" {
  description = "Override the image tag to deploy by setting this variable. If no value is set, the chart's appVersion will be used."
  default     = null
}

variable "extra_args" {
  description = "Extra arguments"
  default     = []
}

variable "extra_env" {
  description = "Extra environment variables"
  default     = []
}

variable "resources" {
  description = "Resources for pods"
  default = {
    requests = {
      cpu    = "100m"
      memory = "100Mi"
    }
    limits = {
      cpu    = "100m"
      memory = "100Mi"
    }
  }
}

variable "volumes" {
  description = "Extra volumes for the pod"
  default     = []
}

variable "volume_mounts" {
  description = "Extra volume mounts for the container"
  default     = []
}

variable "security_context" {
  description = "Configure pod security context"
  default     = {}
}

variable "container_security_context" {
  description = "Configure container security context"
  default     = {}
}

variable "deployment_annotations" {
  description = "Extra annotations for the deployment"
  default     = {}
}

variable "pod_annotations" {
  description = "Extra annotations for pods"
  default     = {}
}

variable "pod_labels" {
  description = "Extra labels for pods"
  default     = {}
}

variable "ingress_shim" {
  description = "Configure Ingess Shim. See https://cert-manager.io/docs/usage/ingress/"
  default     = {}
}

variable "prometheus_enabled" {
  description = "Enable Prometheus metrics"
  default     = true
}

variable "affinity" {
  description = "Pod affinity"
  default     = {}
}

variable "tolerations" {
  description = "Pod tolerations"
  default     = []
}

#####################################
# Admission Webhook
#####################################
variable "webhook_replica_count" {
  description = "Number of replicas for webhook"
  default     = 1
}

variable "webhook_timeout_seconds" {
  description = "Timeout in seconds for webook"
  default     = 10
}

variable "webook_strategy" {
  description = "Update strategy for admission webhook"
  default     = {}
}

variable "webhook_security_context" {
  description = "Security context for webhook pod"
  default     = {}
}

variable "webook_container_security_context" {
  description = "Security context for webhook containers"
  default     = {}
}

variable "webhook_deployment_annotations" {
  description = "Extra annotations for webhook deployment"
  default     = {}
}

variable "webhook_pod_annotations" {
  description = "Extra annotations for webhook pods"
  default     = {}
}

variable "webhook_pod_labels" {
  description = "Extra labels for webhook pods"
  default     = {}
}

variable "mutating_webhook_configuration_annotations" {
  description = "Optional additional annotations to add to the webhook MutatingWebhookConfiguration"
  default     = {}
}

variable "validating_webhook_configuration_annotations" {
  description = "Optional additional annotations to add to the webhook ValidatingWebhookConfiguration"
  default     = {}
}

variable "webhook_extra_args" {
  description = "Extra args for webhook"
  default     = []
}

variable "webhook_resources" {
  description = "Webhook pod resources"
  default = {
    requests = {
      cpu    = "100m"
      memory = "100Mi"
    }
    limits = {
      cpu    = "100m"
      memory = "100Mi"
    }
  }
}

variable "webhook_liveness_probe" {
  description = "Liveness probe for webhook"
  default = {
    failureThreshold    = 3
    initialDelaySeconds = 60
    periodSeconds       = 10
    successThreshold    = 1
    timeoutSeconds      = 1
  }
}

variable "webhook_readiness_probe" {
  description = "Readiness probe for webhook"
  default = {
    failureThreshold    = 3
    initialDelaySeconds = 5
    periodSeconds       = 5
    successThreshold    = 1
    timeoutSeconds      = 1
  }
}

variable "webhook_affinity" {
  description = "Affinity for webhook"
  default     = {}
}

variable "webhook_tolerations" {
  description = "Tolerations for webhook"
  default     = []
}

variable "webhook_image_repository" {
  description = "Image repository for webhook"
  default     = "quay.io/jetstack/cert-manager-webhook"
}

variable "webhook_image_tag" {
  description = "Override the image tag to deploy by setting this variable. If no value is set, the chart's appVersion will be used."
  default     = null
}

variable "webhook_service_account_create" {
  description = "Create Webhook service account"
  default     = true
}

variable "webhook_service_account_name" {
  description = "Name for webhook service account. If not set and create is true, a name is generated using the fullname template"
  default     = ""
}

variable "webhook_service_account_annotations" {
  description = "Annotations for webhook service account"
  default     = {}
}

variable "webhook_port" {
  description = "Port used by webhook to listen for request from Kubernetes Master"
  default     = 10250
}

variable "webhook_host_network" {
  description = "Whether webhook should use host network"
  default     = false
}

#####################################
# CA Injector
# See https://cert-manager.io/docs/concepts/ca-injector/
#####################################
variable "ca_injector_enabled" {
  description = "Enable CA Injector."
  default     = true
}

variable "ca_injector_replica_count" {
  description = "Number of replica for injector"
  default     = 1
}

variable "ca_injector_strategy" {
  description = "CA Injector deployment update strategy"
  default     = {}
}

variable "ca_injector_security_context" {
  description = "CA Injector Pod Security Context"
  default     = {}
}

variable "ca_injector_container_security_context" {
  description = "CA Injector Container Security Context"
  default     = {}
}

variable "ca_injector_deployment_annotations" {
  description = "Extra annotations for ca_injector deployment"
  default     = {}
}

variable "ca_injector_pod_annotations" {
  description = "Extra annotations for ca_injector pods"
  default     = {}
}

variable "ca_injector_pod_labels" {
  description = "Extra labels for ca_injector pods"
  default     = {}
}

variable "ca_injector_extra_args" {
  description = "Extra args for ca_injector"
  default     = []
}

variable "ca_injector_resources" {
  description = "ca_injector pod resources"
  default = {
    requests = {
      cpu    = "100m"
      memory = "100Mi"
    }
    limits = {
      cpu    = "100m"
      memory = "100Mi"
    }
  }
}

variable "ca_injector_affinity" {
  description = "Affinity for ca_injector"
  default     = {}
}

variable "ca_injector_tolerations" {
  description = "Tolerations for ca_injector"
  default     = []
}

variable "ca_injector_image_repository" {
  description = "Image repository for ca_injector"
  default     = "quay.io/jetstack/cert-manager-cainjector"
}

variable "ca_injector_image_tag" {
  description = "Override the image tag to deploy by setting this variable. If no value is set, the chart's appVersion will be used."
  default     = null
}

variable "ca_injector_service_account_create" {
  description = "Create ca_injector service account"
  default     = true
}

variable "ca_injector_service_account_name" {
  description = "Name for ca_injector service account. If not set and create is true, a name is generated using the fullname template"
  default     = ""
}

variable "ca_injector_service_account_annotations" {
  description = "Annotations for ca_injector service account"
  default     = {}
}
