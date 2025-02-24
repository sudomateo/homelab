terraform {
  required_providers {
    cloudflare = {
      source = "cloudflare/cloudflare"
      version = "5.1.0"
    }
  }
}

# Configured via environment variables.
provider "cloudflare" {}
