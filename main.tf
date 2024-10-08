#
# Netris Operator Resources
#

resource "kubernetes_namespace" "kamaji" {
  metadata {
    name = var.namespace_name
  }
}

resource "helm_release" "kamaji" {
  name       = "kamaji"
  repository = "https://clastix.github.io/charts"
  chart      = "kamaji"
  version    = var.chart_version
  namespace  = var.namespace_name
}

#
# Walrus Information
#

locals {
  context = var.context
}