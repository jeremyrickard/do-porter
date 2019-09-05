resource "digitalocean_database_cluster" "music" {
  name       = "${var.database_name}"
  engine     = "pg"
  version    = "10"
  size       = "db-s-1vcpu-1gb"
  region     = "${var.region}"
  node_count = "${var.node_count}"
}