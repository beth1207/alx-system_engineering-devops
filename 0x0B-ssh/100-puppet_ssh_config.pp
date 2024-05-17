#!/usr/bin/env bash
#using puppet making changes to config file

file { 'etc/ssh/ssh_config':
	ensure => present,

content =>"
	#SSH client configuration
	host*
	IndentityFile ~/.ssh/school
	passwordAuthentication no
	",
}
