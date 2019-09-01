output "db_host" {
     value = "${digitalocean_database_cluster.music.host}"
}

output "db_port" {
     value = "${digitalocean_database_cluster.music.port}"
}

output "db" {
     value = "${digitalocean_database_cluster.music.database}"
}


output "db_user" {
    value = "${digitalocean_database_cluster.music.user}"
}

output "db_password" {
    value = "${digitalocean_database_cluster.music.password}"
}
