resource "google_sql_database_instance" "allowed" {
  name             = "master-instance"
  database_version = "POSTGRES_11"
  region           = "us-central1"

  settings {

    tier = "db-f1-micro"
    backup_configuration {
      enabled = true
    }
  }
}

resource "google_sql_database_instance" "allowed_strbools" {
  name             = "master-instance"
  database_version = "POSTGRES_11"
  region           = "us-central1"

  settings {

    tier = "db-f1-micro"
    backup_configuration {
      enabled = "true"
    }
  }
}

resource "google_sql_database_instance" "denied" {
  name             = "master-instance"
  database_version = "POSTGRES_11"
  region           = "us-central1"

  settings {

    tier = "db-f1-micro"
    backup_configuration {
      enabled = false
    }
  }
}

resource "google_sql_database_instance" "denied_2" {
  name             = "master-instance"
  database_version = "POSTGRES_11"
  region           = "us-central1"

  settings {
    tier = "db-f1-micro"
  }
}
