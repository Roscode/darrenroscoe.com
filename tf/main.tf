resource "vultr_ssh_key" "my_ssh_key" {
  name = "My Personal Macbook"
  ssh_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC/nqDW9lud81fTeIDqQIptnQdXcx5KRlaoJKDy3gTOrJvPJLDWhrKtjZV7/AUXeK84PkYl9fZjdmJIN/7IpaZSvabMrwtyEjUrKdBti/1cyqQnTvFN8iy2NbYT/dWZ9/rMxrdTlUkHzKTrZQ4JLpeynmp2jF16vhw9J+/AXXOJwYgVjy/yqthzyfGi5iB9+kaQHgBVL1aLmfcIbYohLKd4fzvwkFxD0aHkZyQ55+YZ00ygXft5vZSFtOSQaubFKlRBdDaSwNPbF0dXtUxNL+a/TpyC8pIgQOmxwbs5r5ERKlIFfxdYQhMvAKM8oytsYCgJbw6iqLM9g/LkKXYtjfDcty4jp13PmlOVAO4kuJxPNGzjQt+JP+PWIsITDrOjMPGpkCSphYqTy6jQ9oVGwLjvsR1MqKWx0HgXcBZnvhLwfLhVN2UJVX5eJXCZDHJpXS0ef1eIImomPlIW4G8816ggIyHtO1P/XoWw+DFVUOrtkMSVjwboQUUFDjZw9nhG5/I32ZSECctgRYLtXaRHDQnW4b35M8XqnuDuirLsLglpIbL1mxM0ov/VJoiW4MUAZYp2fkw3rdipI8aq77LWaKXnjZdw02AQr5VtA5uSVluLBgIelNAUopyuESnlWjwufFB0vnd5y4KvLKPm/QuuMhSOD5Y/8PQ+538ChZLUZXnA8Q== darrenroscoe@gmail.com"
}

resource "vultr_instance" "my_instance" {
  # $5/month, 1 cpu, 1gb memory
  plan = "vc2-1c-1gb"
  region = "sea"
  # 413 is ubuntu 20.10
  os_id = "413"
  hostname = "darrenroscoe.com"
  tag = "darrenroscoe.com"
  label = "darrenroscoe.com"
  ssh_key_ids = [vultr_ssh_key.my_ssh_key.id]
}
