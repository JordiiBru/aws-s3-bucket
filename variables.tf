# REQUIRED VARIABLES

variable "stage" {
  description = "Stage of development"
  type        = string

  validation {
    condition     = can(regex("^(test|dev|stagin|prod)$", var.stage))
    error_message = "Stage must be dev, staging or prod."
  }
}

variable "purpose" {
  description = "Short description about the created resource"
  type        = string
  default     = null

  validation {
    condition     = can(regex("^([a-zA-Z0-9-_]*)$", var.purpose))
    error_message = "Only the expression [a-zA-Z0-9-_]* is allowed."
  }
}

variable "owner" {
  description = "Owner of the deployed infrastructure"
  type        = string
  default     = null

  validation {
    condition     = length(var.accountable) >= 3
    error_message = "You must define an owner with more than three letters."
  }
}

# OPTIONAL VARIABLES

variable "versioning" {
  description = "Enable versioning on the bucket"
  type        = bool
}

variable "public" {
  description = "Make the bucket public"
  type        = bool
  default     = false
}

variable "force_destroy" {
  description = "Allow destroying a bucket with objects inside"
  type        = bool
  default     = false
}

variable "static_website" {
  description = "Make the bucket host a static website"
  type        = bool
  validation {
    condition     = var.versioning == true
    error_message = "Versioning must be enabled to host a static website."
  }
}