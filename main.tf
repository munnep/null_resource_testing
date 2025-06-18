terraform {
  required_providers {
    acme = {
      source = "myklst/acme"
      version = "0.2.0"
    }
        gitlab = {
      source = "gitlabhq/gitlab"
      version = "18.0.0"
    }
        postgresql = {
      source = "cyrilgdn/postgresql"
      version = "1.25.0"
    }
        mysql = {
      source = "petoju/mysql"
      version = "3.0.76"
    }
        biganimal = {
      source = "EnterpriseDB/biganimal"
      version = "2.0.0"
    }
    spotify = {
      source = "conradludgate/spotify"
      version = "0.2.7"
    }
  }
}

provider "spotify" {
  # Configuration options
}

provider "biganimal" {
  # Configuration options
}

provider "acme" {
  # Configuration options
}

provider "mysql" {
  # Configuration options
}

provider "gitlab" {
  # Configuration options
}

provider "postgresql" {
  # Configuration options
}
