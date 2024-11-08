variable "ephem" {
    type      = string
    ephemeral = true
}

output "out" {
    value = ephemeralasnull(var.ephem)
}