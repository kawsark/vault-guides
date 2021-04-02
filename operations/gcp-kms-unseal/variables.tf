variable "labels" {
  type = map
  description = "A set of key value labels for the VM"
  default = {
    owner = "demouser"
    ttl = "24"
    terraform = "true"
  }
}
variable "create_keyring" {
  type = bool
  description = "Creates the google_kms_key_ring resource"
  default = false
}

variable "create_key" {
  type = bool
  description = "Creates the google_kms_crypto_key resource"
  default = false
}

variable "vault_url" {
  default = "https://releases.hashicorp.com/vault/1.6.0/vault_1.6.0_linux_amd64.zip"
}

variable "gcloud-project" {
  description = "Google project name"
}

variable "gcloud-region" {
  default = "us-east1"
}

variable "gcloud-zone" {
  default = "us-east1-b"
}

variable "account_file_path" {
  description = "Path to GCP account file"
}

variable "key_ring" {
  description = "Cloud KMS key ring name to create"
  default     = "test"
}

variable "crypto_key" {
  default     = "vault-test"
  description = "Crypto key name to create under the key ring"
}

variable "keyring_location" {
  default = "global"
}
