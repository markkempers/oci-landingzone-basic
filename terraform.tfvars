ansibleserver = false
webserver = true
dbserver = true

compute_shape = "VM.Standard.E2.1.Micro"
ocpu = "1"
mem = "1"

os = "Canonical Ubuntu"
os_version = "22.04"

sshkey = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDHHIhN5RyQwqIDRvsFGc0xef0zmHAlIoJ/EfUjUtrbX424ovQ5CE375aWpvWRrzIXsD+J1I1O2epBaAH8Ej9GZjmv5CRskO7UljbFHDJ6o0EzKOZ2li7X3lPredmfWvWoYrmUm3bUybKxczf4FA8siLC9YiwbScv6T3wmpVuSVDAsfJgbPsJsQ5jLcYF3Z7gCwuBzS30BEl0OsfoJsuQF+CLnbLzxcHJZ+9BOVf9LUc1BNp7QbtIpacavNj6JVs2HzXCYyd9twvIi2ZjfBUpiybbG1rhR9wCB9XO5bt+Ft5dU2gxnlDVpuDx/RFTxVPMfi8BgTJ5gdM10s7WEjmqxDf16ik48escx9VXqmQla+DgY0SwjAdSEOULssvpRkQerAtwZ3xNLQzDEl8YCpmLB/tdJkd0tBF0vZ4IQ6Os7XaOmfiKHAYLkee99mHH4Gg0B5KJcNCXZGoMu92kX2lFwZLZ7TkvOL0Vo4v0T2tbGaIpIWKfi5d/slcxBLi5TNi9c= mark@MBP-van-Mark.home"
sshkey_ansible = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC5jLzVGbRg+JLXn5/vhok0ZWn6aQ8TkHIaul9ApEGsmPcsoHA+sFNL4BurbEMB5PJpWnVSPeAoDZQKNdRMYCOYJfK7AatKh8xZhRB4lcl43Fy1JOtYBZ4mYstf9p676r5diJoO6OVTB0laI55rMtxNOPdoVIVcUgBsTXC9Ic/Pjjg6KmdKZ1XuybN9tDU/qEv4jhKMnf882bBt8QNmXH103eM1AKysrVqwSw/yzMYonIannFMaliMPQ7+g4QM710yUhfGFR2AmdZQ5cWVFVjC3y0Eto1aDxhzzpFSCQjgqjbtGm6Wahl41MWj/TtZHCxqHbd5xs8cvZr8d3OipKuYb root@ansible"

sec_incoming_cidr = "95.99.22.233/32"
inet_subnet = "10.10.10.0/24"
ansible_ip = "141.148.233.230/32"