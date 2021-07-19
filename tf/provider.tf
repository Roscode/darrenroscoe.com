terraform {
  required_providers {
    vultr = {
      source = "vultr/vultr"
      version = "~>2.3.3"
    }
  }
}

provider "vultr" {
  # Provide VULTR_API_KEY environment variable
}

