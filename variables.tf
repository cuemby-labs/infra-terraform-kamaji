#
# Contextual Fields
#

variable "context" {
  description = <<-EOF
Receive contextual information. When Walrus deploys, Walrus will inject specific contextual information into this field.

Examples:
```
context:
  project:
    name: string
    id: string
  environment:
    name: string
    id: string
  resource:
    name: string
    id: string
```
EOF
  type        = map(any)
  default     = {}
}

#
# Netris Operator
#

variable "namespace_name" {
  description = "The name of the Kubernetes namespace."
  type        = string
  default     = "kamaji-system"
}

variable "chart_version" {
  description = "The version of the Kamaji Helm release chart."
  type        = string
  default     = "1.0.0"
}