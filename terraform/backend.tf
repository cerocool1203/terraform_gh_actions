terraform {

  backend "remote" {
    organization = "cerocoolcorp"
    workspaces {
      name = "cerocool-CLI"
    }
  }
}