variable "project_id" {
  type = string
}

variable "region" {
  type = string
}

variable "registry_config" {
}

variable "environment_prefix" {

}

variable "services_list" {
  type = list(string)
  default = [
    "cloudkms",
    "artifactregistry"
  ]
}

variable "iam_policy" {
  default = {
    admin = []
    reader = [
      "serviceAccount:sricharank-km1-runcloud-iam-gs@km1-runcloud.iam.gserviceaccount.com"
    ]
    repoAdmin = []
    writer    = []
  }
}