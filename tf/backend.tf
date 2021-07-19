terraform {
  backend "remote" {
    organization = "darrenroscoe-com"

    workspaces {
      name = "darrenroscoe-com"
    }
  }
}
